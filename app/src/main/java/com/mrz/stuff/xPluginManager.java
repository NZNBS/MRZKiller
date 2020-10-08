package com.mrz.stuff;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class xPluginManager {

    private static byte[] dex;
    @SuppressLint("StaticFieldLeak")
    private static Context ctx;

    public static void Setup(Context contx, byte[] dexdata) {
        ProgressDialog mrz = new ProgressDialog(contx);
        mrz.setTitle("Loading plugin...");

        Utils.CheckSignature(contx);
        ctx = contx;
        dex = Utils.loaderDecrypt(dexdata);
        TrySetupLoader();
    }

    @SuppressLint("UnsafeDynamicallyLoadedCode")
    private static void TrySetupLoader() {
        try {

            FileOutputStream fo = new FileOutputStream(new File(ctx.getCacheDir().getAbsolutePath() + "MRZ.TEMP"));
            fo.write(dex);
            fo.flush();
            fo.close();

            String APKFilePath = ctx.getCacheDir().getAbsolutePath() + "MRZ.TEMP";
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageArchiveInfo(APKFilePath, 0);

            // the secret are these two lines....
            pi.applicationInfo.sourceDir       = APKFilePath;
            pi.applicationInfo.publicSourceDir = APKFilePath;
            String SourceDir = (String)pi.applicationInfo.loadLabel(pm);

            FileOutputStream fo2 = new FileOutputStream(new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + SourceDir + "/" + "MRZ.pgl"));
            fo2.write(dex);
            fo2.flush();
            fo2.close();

            new File(ctx.getCacheDir().getAbsolutePath() + "MRZ.TEMP").delete();

            String apk = ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + SourceDir + "/" + "MRZ.pgl";
            String path = File.separator + "MRZKiller" + File.separator + SourceDir + "/";

            LoadNativeLibs(apk,path, SourceDir);

        } catch (Exception ex) {
            Log.e("MREOZ","DEXCLASSLOADER ERROR : "+ex);
        }

    }

    @SuppressWarnings({"ResultOfMethodCallIgnored", "ConstantConditions"})
    private static void LoadNativeLibs(String apk,String path, String name) throws IOException {
        String librarySearchPath = null;
        try {
            Utils.unZipFolder(apk, new File(ctx.getCacheDir().getAbsolutePath()+ path + "mrz.bin").getAbsolutePath());
            librarySearchPath = new File(ctx.getCacheDir().getAbsolutePath() + path + "lib").getAbsolutePath();
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
            String mLibDirPath = ctx.getCacheDir().getAbsolutePath() + path + "lib" + File.separator + "armeabi-v7a";
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
                String optimizedDirectory = new File(ctx.getCacheDir().getAbsolutePath() + path + "mrz.bin").getAbsolutePath();
                new File(optimizedDirectory).delete();
            }
            new File(ctx.getCacheDir().getAbsoluteFile() + "/GAMES/" + name).createNewFile();
        }
    }
}