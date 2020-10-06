package com.mrz.stuff;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;

import dalvik.system.BaseDexClassLoader;

public class xDexLoader {
    @SuppressWarnings("UnnecessaryLocalVariable")
    public static String GetSignature() {
        String Signatrure = "5cc9056516550b02b17974dedb04ffc301a2ba424bd8f93e34daaeb0bc2ff9eac2706a28308203473082022fa003020102020446d706b7300d06092a864886f70d01010b05003054310c300a06035504061303617364310c300a06035504081303617364310c300a06035504071303617364310c300a060355040a1303617364310c300a060355040b1303617364310c300a06035504031303776572301e170d3139303930353135343930365a170d3434303832393135343930365a3054310c300a06035504061303617364310c300a06035504081303617364310c300a06035504071303617364310c300a060355040a1303617364310c300a060355040b1303617364310c300a0603550403130377657230820122300d06092a864886f70d01010105000382010f003082010a0282010100b7cbdd0cd512091f0745e818639efe1b9f6902b8e601fc18c2de76bcaa588cc70d7b1984f3c896cc96115f805b0746b65eacbb3ae1f90cbe769c69b5f4507f130baba4345a2ddb9e8ebfad3ad74753a0a6b9758b057e91ae0e61517f6bc0e008a4303a8185d313737a74554bf162f4ad48d76ee2309e1f89bdef751973580cdc0ddf27ddc740c6654e71346c3b7819f91ca0c37ab9ca4d9c76776c27200b2521cb3892a1c920c2f0e1d026aa1e96f396e60108617b5e52d7bdff04e3bdd2b9589515975049d0a525c0565bd74c2847235ba154a5a744dfad0ff477d24f275a04e6dc4f1a8cd39fa8cea92ca1ba9bf0f757d3bbfd3919d6f65ed5e1f02a29b4890203010001a321301f301d0603551d0e041604143d72ed96a14fbeebeaee6eaceeeeda957da96129300d06092a864886f70d01010b050003820101006e41f7dea62b0474491ff079d53c825051a03667ae7f4bc64d87e4d50f21d72d992fd7c43486a6e4458c5a7be235d043bc3dc8d249f57532e576eb5effe8f464a849d09c8213172b7a250896020b38cc2e6af84161157876b11a4ca8c089c8b420728dfdbd65dd485cd28139af145c77e0ec42a4ffaa3423a41fb1d7cb8c3dc9062f42c1527cac1c00b8e23c9b7499b357106510caca2d18e6c6da7405a84a635ee15d2b96fa46f6058fd46e033e506f2177881015f42291f2c112dba3c2f7c3cc4b0cb4628fb01b129f25432f793a7ab6bb8b53cf1f48c4ca028cd608b6cd0f93aca557f42476424f6ad77f0b0976774c198ed9fbf709eadebeabc89ace8701OpenSSLRSAPublicKey{modulus=b7cbdd0cd512091f0745e818639efe1b9f6902b8e601fc18c2de76bcaa588cc70d7b1984f3c896cc96115f805b0746b65eacbb3ae1f90cbe769c69b5f4507f130baba4345a2ddb9e8ebfad3ad74753a0a6b9758b057e91ae0e61517f6bc0e008a4303a8185d313737a74554bf162f4ad48d76ee2309e1f89bdef751973580cdc0ddf27ddc740c6654e71346c3b7819f91ca0c37ab9ca4d9c76776c27200b2521cb3892a1c920c2f0e1d026aa1e96f396e60108617b5e52d7bdff04e3bdd2b9589515975049d0a525c0565bd74c2847235ba154a5a744dfad0ff477d24f275a04e6dc4f1a8cd39fa8cea92ca1ba9bf0f757d3bbfd3919d6f65ed5e1f02a29b489,publicExponent=10001}";
        return Signatrure;
    }
    private static byte[] dex;
    @SuppressLint("StaticFieldLeak")
    private static Context ctx;

    public static void Setup(Context contx, byte[] dexdata) {
       Utils.CheckSignature(contx);
        ctx = contx;
        dex = Utils.loaderDecrypt(dexdata);
        TrySetupLoader();
    }
    private static String DexPath() {
        int folder = 1;
        String AppName = String.valueOf(folder);
        while (!new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName).exists())
        {
            folder++;
        }
        return AppName;
    }

    @SuppressLint("UnsafeDynamicallyLoadedCode")
    private static void TrySetupLoader() {
        try {
            int folder = 1;
            String AppName = String.valueOf(folder);
            while (!new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName + "/" + "MRZ.class").exists() && !new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName+ File.separator + "mrz.bin").exists())
            {
                folder++;
            }
            FileOutputStream fo = new FileOutputStream(new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName + "/" + "MRZ.class"));
            fo.write(dex);
            fo.flush();
            fo.close();
            LoadNativeLibs();
        } catch (Exception ex) {
            Log.e("MREOZ","DEXCLASSLOADER ERROR : "+ex);
        }
    }

    @SuppressWarnings({"ResultOfMethodCallIgnored", "ConstantConditions"})
    private static void LoadNativeLibs() {
        String librarySearchPath = null;
        int folder = 1;
        String AppName = String.valueOf(folder);
        while (!new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName + "/" + "MRZ.class").exists() && !new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName+ File.separator + "mrz.bin").exists())
        {
            folder++;
        }
        try {
            Utils.unZipFolder(DexPath(), new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName+ File.separator + "mrz.bin").getAbsolutePath());
            librarySearchPath = new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName+ File.separator + "lib").getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(librarySearchPath)) return;
        File abi_file_dir = null;
        File dirFile = new File(librarySearchPath);
        File[] files = dirFile.listFiles();
        for (File file : files) {
            if (file != null && file.exists() && file.isDirectory()) {
                final String abi = "armeabi-v7a";
                if (file.getName().contains(abi)) {
                    abi_file_dir = file;
                    break;
                }
            }
        }
        File mLibDir = null;
        try {
            String mLibDirPath = ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName + File.separator + "lib" + File.separator + "armeabi-v7a";
            mLibDir = new File(mLibDirPath);
            if (!mLibDir.exists()) {
                mLibDir.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (mLibDir != null && abi_file_dir != null) {
            File[] so_file_array = abi_file_dir.listFiles();
            for (File file : so_file_array) {
                File so_file = new File(mLibDir.getAbsolutePath() + File.separator + file.getName());
                Utils.copyFiles(file.getAbsolutePath(), so_file.getAbsolutePath());
                String optimizedDirectory = new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + AppName+ File.separator + "mrz.bin").getAbsolutePath();
                new File(optimizedDirectory).delete();
            }
        }
    }
}