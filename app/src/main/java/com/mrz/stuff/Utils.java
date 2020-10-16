package com.mrz.stuff;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Base64;
import android.util.Log;
import android.widget.ProgressBar;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;


public class Utils {
    private static final String ANDROID_MANIFEST_FILENAME = "AndroidManifest.xml";

    private static final boolean DEBUG = false;

    @SuppressWarnings("UnnecessaryLocalVariable")
    public static String GetSignature() {
        String Signatrure = "5cc9056516550b02b17974dedb04ffc301a2ba424bd8f93e34daaeb0bc2ff9eac2706a28308203473082022fa003020102020446d706b7300d06092a864886f70d01010b05003054310c300a06035504061303617364310c300a06035504081303617364310c300a06035504071303617364310c300a060355040a1303617364310c300a060355040b1303617364310c300a06035504031303776572301e170d3139303930353135343930365a170d3434303832393135343930365a3054310c300a06035504061303617364310c300a06035504081303617364310c300a06035504071303617364310c300a060355040a1303617364310c300a060355040b1303617364310c300a0603550403130377657230820122300d06092a864886f70d01010105000382010f003082010a0282010100b7cbdd0cd512091f0745e818639efe1b9f6902b8e601fc18c2de76bcaa588cc70d7b1984f3c896cc96115f805b0746b65eacbb3ae1f90cbe769c69b5f4507f130baba4345a2ddb9e8ebfad3ad74753a0a6b9758b057e91ae0e61517f6bc0e008a4303a8185d313737a74554bf162f4ad48d76ee2309e1f89bdef751973580cdc0ddf27ddc740c6654e71346c3b7819f91ca0c37ab9ca4d9c76776c27200b2521cb3892a1c920c2f0e1d026aa1e96f396e60108617b5e52d7bdff04e3bdd2b9589515975049d0a525c0565bd74c2847235ba154a5a744dfad0ff477d24f275a04e6dc4f1a8cd39fa8cea92ca1ba9bf0f757d3bbfd3919d6f65ed5e1f02a29b4890203010001a321301f301d0603551d0e041604143d72ed96a14fbeebeaee6eaceeeeda957da96129300d06092a864886f70d01010b050003820101006e41f7dea62b0474491ff079d53c825051a03667ae7f4bc64d87e4d50f21d72d992fd7c43486a6e4458c5a7be235d043bc3dc8d249f57532e576eb5effe8f464a849d09c8213172b7a250896020b38cc2e6af84161157876b11a4ca8c089c8b420728dfdbd65dd485cd28139af145c77e0ec42a4ffaa3423a41fb1d7cb8c3dc9062f42c1527cac1c00b8e23c9b7499b357106510caca2d18e6c6da7405a84a635ee15d2b96fa46f6058fd46e033e506f2177881015f42291f2c112dba3c2f7c3cc4b0cb4628fb01b129f25432f793a7ab6bb8b53cf1f48c4ca028cd608b6cd0f93aca557f42476424f6ad77f0b0976774c198ed9fbf709eadebeabc89ace8701OpenSSLRSAPublicKey{modulus=b7cbdd0cd512091f0745e818639efe1b9f6902b8e601fc18c2de76bcaa588cc70d7b1984f3c896cc96115f805b0746b65eacbb3ae1f90cbe769c69b5f4507f130baba4345a2ddb9e8ebfad3ad74753a0a6b9758b057e91ae0e61517f6bc0e008a4303a8185d313737a74554bf162f4ad48d76ee2309e1f89bdef751973580cdc0ddf27ddc740c6654e71346c3b7819f91ca0c37ab9ca4d9c76776c27200b2521cb3892a1c920c2f0e1d026aa1e96f396e60108617b5e52d7bdff04e3bdd2b9589515975049d0a525c0565bd74c2847235ba154a5a744dfad0ff477d24f275a04e6dc4f1a8cd39fa8cea92ca1ba9bf0f757d3bbfd3919d6f65ed5e1f02a29b489,publicExponent=10001}";
        return Signatrure;
    }

    public static void CheckSignature(Context ctx)
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

                        if(!signapk.equals(GetSignature())){

                            Log.e("SIGNATURE","The signature is incorrect !!THIS LEETH!!");

                            System.exit(0);
                        }

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
    }
    public static String bytesToHex(byte[] bytes) {
        char[] hexArray = "0123456789abcdef".toCharArray();
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 0xFF;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[j * 2 + 1] = hexArray[v & 0x0F];
        }
        return new String(hexChars);
    }

    public static String readStream(InputStream in) {
        StringBuilder response = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(in))) {
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
        } catch (IOException ignored) {
        }
        return response.toString();
    }

    public static String SHA256(String data) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.reset();
            md.update(data.getBytes(StandardCharsets.UTF_8));
            return bytesToHex(md.digest()).toUpperCase();
        } catch (NoSuchAlgorithmException ex) {
            return null;
        }
    }

    @SuppressWarnings("unused")
    public static void clearCache(Context context) {
        try {
            File dir = context.getCacheDir();
            deleteFilesInDir(dir);
        } catch (Exception ignored) {}
    }

    @SuppressWarnings({"ConstantConditions", "ResultOfMethodCallIgnored"})
    public static void deleteFilesInDir(File dir) {
        for (File file: dir.listFiles()) {
            if (file.isDirectory()) {
                deleteFilesInDir(file);
            }
            file.delete();
        }
    }
    public static byte[] loaderDecrypt(byte[] srcdata) {
        try {
            SecretKeySpec skey = new SecretKeySpec("22P9ULFDKPJ70G46".getBytes(), "AES");
            @SuppressLint("GetInstance") Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.DECRYPT_MODE, skey);
            return cipher.doFinal(srcdata);
        } catch (NoSuchAlgorithmException e) {
            Log.e("MREOZ","ERROR : "+e);
        } catch (InvalidKeyException | NoSuchPaddingException | BadPaddingException | IllegalBlockSizeException e) {
            Log.e("MREOZ","loaderDecrypt ERROR : "+e);
        }
        return null;
    }

    public static String profileDecrypt(String data, String sign) {
        char[] key = sign.toCharArray();
        char[] out = fromBase64String(data).toCharArray();
        for(int i = 0; i < out.length;i++){
            out[i] = (char)(key[i % key.length] ^ out[i]);
        }
        return new String(out);
    }

    public static String toBase64(String s) {
        return Base64.encodeToString(s.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
    }

    public static String toBase64(byte[] s) {
        return Base64.encodeToString(s, Base64.NO_WRAP);
    }

    public static byte[] fromBase64(String s) {
        return Base64.decode(s, Base64.NO_WRAP);
    }

    public static String fromBase64String(String s) {
        return new String(Base64.decode(s, Base64.NO_WRAP), StandardCharsets.UTF_8);
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
    @SuppressWarnings({"unused", "ResultOfMethodCallIgnored"})
    public static String copyFiles(Context context, String fileName) {
        File dir = getCacheDir(context);
        String filePath = dir.getAbsolutePath() + File.separator + fileName;
        try {
            File desFile = new File(filePath);
            if (desFile.exists()) {
                desFile.delete();
            }
            copyFiles(context, fileName, desFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return filePath;

    }
    public static void copyFiles(String originFilePath,String endFilePath) {
        InputStream in = null;
        OutputStream out = null;
        try {
            in = new FileInputStream(originFilePath);
            out = new FileOutputStream(endFilePath);
            byte[] bytes = new byte[1024];
            int i;
            while ((i = in.read(bytes)) != -1)
                out.write(bytes, 0, i);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (in != null)
                    in.close();
                if (out != null)
                    out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }
    public static void copyFiles(Context context, String fileName, File desFile) {
        InputStream in = null;
        OutputStream out = null;
        try {
            in = context.getAssets().open(fileName);
            out = new FileOutputStream(desFile.getAbsolutePath());
            byte[] bytes = new byte[1024];
            int i;
            while ((i = in.read(bytes)) != -1)
                out.write(bytes, 0, i);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (in != null)
                    in.close();
                if (out != null)
                    out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }

    /**
     * 获取文件夹下的全部文件。
     *
     * @param dir
     * @param filePathList 用于存储文件路径的list
     */
    @SuppressWarnings({"unused", "ConstantConditions", "StatementWithEmptyBody", "JavaDoc"})
    public static void queryFilesPath(String dir, List<File> filePathList) {
        File dirFile = new File(dir);
        if (dirFile != null && dirFile.exists()) {
            if (dirFile.isDirectory()) {
                //遍历dir下的文件和目录，放在File数组中
                File[] fileArray = dirFile.listFiles();
                if (fileArray == null && fileArray.length == 0) {
                    //文件夹不存在或者为空
                } else {
                    for (File file : fileArray) {
                        if (file.isDirectory()) {// 文件夹
                            queryFilesPath(file.getAbsolutePath(), filePathList);
                        } else {
                            filePathList.add(file);
                        }
                    }
                }
            } else {//该路径是一个文件，而不是文件夹，防止传入错误。
                filePathList.add(dirFile);
            }
        }  //文件不存在

    }
    /**
     * 解压zip文件
     *
     * @param zipFilePath
     * @param existPath
     */
    @SuppressWarnings({"ResultOfMethodCallIgnored", "ConstantConditions", "JavaDoc"})
    public static void unZipFolder(String zipFilePath, String existPath) {
        ZipFile zipFile = null;
        try {
            File originFile = new File(zipFilePath);
            if (originFile.exists()) {//zip文件存在
                zipFile = new ZipFile(originFile);
                Enumeration<? extends ZipEntry> enumeration = zipFile.entries();
                while (enumeration.hasMoreElements()) {
                    ZipEntry zipEntry = enumeration.nextElement();
                    if (zipEntry.isDirectory()) {//若是该文件是文件夹，则创建
                        File dir = new File(existPath + File.separator + zipEntry.getName());
                        dir.mkdirs();
                    } else {
                        File targetFile = new File(existPath + File.separator + zipEntry.getName());
                        if (!targetFile.getParentFile().exists()) {
                            targetFile.getParentFile().mkdirs();
                        }
                        targetFile.createNewFile();
                        InputStream inputStream = zipFile.getInputStream(zipEntry);
                        FileOutputStream fileOutputStream = new FileOutputStream(targetFile);
                        int len;
                        byte[] buf = new byte[1024];
                        while ((len = inputStream.read(buf)) != -1) {
                            fileOutputStream.write(buf, 0, len);
                        }
                        // 关流顺序，先打开的后关闭
                        fileOutputStream.close();
                        inputStream.close();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    public static boolean hasExternalStorage() {
        return Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED);
    }

    /**
     * 获取缓存路径
     *
     * @param context
     * @return 返回缓存文件路径
     */
    @SuppressWarnings({"ResultOfMethodCallIgnored", "JavaDoc", "ConstantConditions"})
    public static File getCacheDir(Context context) {
        File cache;
        if (hasExternalStorage()) {
            cache = context.getExternalCacheDir();
        } else {
            cache = context.getCacheDir();
        }
        if (!cache.exists())
            cache.mkdirs();
        return cache;
    }
}
