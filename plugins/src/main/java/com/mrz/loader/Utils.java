package com.mrz.loader;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Base64;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.logging.Level;
import java.util.logging.Logger;

class Utils {

    private static String bytesToHex(byte[] bytes) {
        char[] hexArray = "0123456789abcdef".toCharArray();
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 0xFF;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[j * 2 + 1] = hexArray[v & 0x0F];
        }
        return new String(hexChars);
    }

    static String readStream(InputStream in) {
        StringBuilder response = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(in))) {
            String line = "";
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
        } catch (IOException ignored) {
        }
        return response.toString();
    }

    static String SHA256(String data) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.reset();
            md.update(data.getBytes(StandardCharsets.UTF_8));
            return bytesToHex(md.digest()).toUpperCase();
        } catch (NoSuchAlgorithmException ex) {
            return null;
        }
    }

    static String profileDecrypt(String data, String sign) {
        char[] key = sign.toCharArray();
        char[] out = fromBase64String(data).toCharArray();
        for(int i = 0; i < out.length;i++){
            out[i] = (char)(key[i % key.length] ^ out[i]);
        }
        return new String(out);
    }

    static String toBase64(String s) {
        return Base64.encodeToString(s.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
    }

    static String toBase64(byte[] s) {
        return Base64.encodeToString(s, Base64.NO_WRAP);
    }

    static byte[] fromBase64(String s) {
        return Base64.decode(s, Base64.NO_WRAP);
    }

    static String fromBase64String(String s) {
        return new String(Base64.decode(s, Base64.NO_WRAP), StandardCharsets.UTF_8);
    }
    private static final String ANDROID_MANIFEST_FILENAME = "AndroidManifest.xml";

    private static final boolean DEBUG = false;

    public static String CheckSignature(Context ctx)
    {
        try {
            String apkPath = ctx.getPackageManager().getApplicationInfo(ctx.getPackageName(), 0).sourceDir;
            ApplicationInfo info = ctx.getPackageManager().getApplicationInfo(ctx.getPackageName(), 0);
            String pkg = info.packageName;
            if(new File("/data/app/"+pkg+"-1/base.apk").exists()){
                apkPath = "/data/app/"+pkg+"-1/base.apk";
            }else if(new File("/data/app/"+pkg+"-2/base.apk").exists()){
                apkPath = "/data/app/"+pkg+"-2/base.apk";
            }
            File apkFile = new File(apkPath);

            if (!apkFile.exists() || !apkFile.canRead()) {

                System.exit(0);

            }

            Certificate[] certs = null;

            try {

                JarFile jarFile = new JarFile(apkPath);

                final JarEntry manifestEntry = jarFile.getJarEntry(ANDROID_MANIFEST_FILENAME);

                if (manifestEntry == null) {

                    System.exit(0);

                }

                final List<JarEntry> toVerify = new ArrayList<>();

                toVerify.add(manifestEntry);

                @SuppressWarnings("rawtypes") Enumeration entries = jarFile.entries();

                while (entries.hasMoreElements()) {

                    JarEntry jarEntry = (JarEntry) entries.nextElement();

                    if (jarEntry.isDirectory()) continue;

                    if (jarEntry.getName().startsWith("META-INF/")) continue;

                    if (jarEntry.getName().equals(ANDROID_MANIFEST_FILENAME)) continue;

                    toVerify.add(jarEntry);

                }

                for (JarEntry jarEntry : toVerify) {

                    final Certificate[] entryCerts = loadCertificates(jarFile, jarEntry);

                    if (entryCerts == null) {

                        jarFile.close();

                        System.exit(0);

                    }

                    //noinspection ConstantConditions
                    if (entryCerts.length == 0) {

                        jarFile.close();

                        System.exit(0);

                    }

                    if (certs == null) {

                        certs = entryCerts;

                    } else {

                        for (Certificate cert : certs) {

                            boolean found = false;

                            for (Certificate localCert : entryCerts) {

                                if (cert != null && cert.equals(localCert)) {

                                    found = true;

                                    break;

                                }

                            }

                            if (!found || certs.length != entryCerts.length) {

                                jarFile.close();

                                System.exit(0);

                            }

                        }

                    }

                }

                jarFile.close();

                if (certs != null && certs.length > 0) {

                    //noinspection ForLoopReplaceableByForEach

                    for (int i = 0; i < certs.length; i++) {

                        Certificate cert = certs[i];

                        byte[] certEncoded = cert.getEncoded();

                        String md5Signature = calculateDigest(certEncoded,"MD5");

                        String sha1Signature = calculateDigest(certEncoded, "SHA1");

                        String charSignature = new String(bytesToChars(certEncoded));

                        String signapk = md5Signature+sha1Signature+charSignature+cert.getPublicKey().toString();

                        return signapk;

                    }

                } else {

                    System.exit(0);

                }

            } catch (CertificateEncodingException e) {

                if (DEBUG) Logger.getLogger(Utils.class.getName()).log(Level.SEVERE, null, e);

            } catch (IOException | RuntimeException e) {

                if (DEBUG) e.printStackTrace();

                System.exit(0);

            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static Certificate[] loadCertificates(JarFile jarFile, JarEntry jarEntry) {

        InputStream is;

        try {

            is = jarFile.getInputStream(jarEntry);

            readFullyIgnoringContents(is);

            return jarEntry.getCertificates();

        } catch (IOException | RuntimeException e) {

            if (DEBUG) e.printStackTrace();

            System.exit(0);

        }

        return null;

    }

    private static AtomicReference<byte[]> sBuffer = new AtomicReference<>();

    @SuppressWarnings("UnusedReturnValue")

    private static long readFullyIgnoringContents(InputStream in) throws IOException {

        byte[] buffer = sBuffer.getAndSet(null);

        if (buffer == null) buffer = new byte[4096];

        int n;

        int count = 0;

        while ((n = in.read(buffer, 0, buffer.length)) != -1) {

            count += n;

        }

        sBuffer.set(buffer);

        return count;

    }

    private static char[] bytesToChars(byte[] signature) {

        final int i = signature.length;

        final int j = i * 2;

        char[] text = new char[j];

        for (int k = 0; k < i; k++) {

            byte v = signature[k];

            int d = (v >> 4) & 0xf;

            text[k * 2] = (char) (d >= 10 ? ('a' + d - 10) : ('0' + d));

            d = v & 0xf;

            text[k * 2 + 1] = (char) (d >= 10 ? ('a' + d - 10) : ('0' + d));

        }

        return text;

    }

    private static String calculateDigest(byte[] signature, String algorithm) {

        String digest = "unknown";

        try

        {

            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);

            messageDigest.update(signature);

            digest = new String(bytesToChars(messageDigest.digest()));

        } catch (NoSuchAlgorithmException e) {

            if (DEBUG) e.printStackTrace();

        }

        return digest;

    }

}
