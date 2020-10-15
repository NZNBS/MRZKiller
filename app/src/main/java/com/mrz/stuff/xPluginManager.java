package com.mrz.stuff;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.lody.virtual.client.core.VirtualCore;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

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

            FileOutputStream fo = new FileOutputStream(new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZ.TEMP"));
            fo.write(dex);
            fo.flush();
            fo.close();

            String APKFilePath = ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZ.TEMP";
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageArchiveInfo(APKFilePath, 0);

            pi.applicationInfo.sourceDir       = APKFilePath;
            pi.applicationInfo.publicSourceDir = APKFilePath;
            String SourceDir = (String)pi.applicationInfo.loadLabel(pm);

            FileOutputStream fo2 = new FileOutputStream(new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + SourceDir + "/" + "MRZ.pgl"));
            fo2.write(dex);
            fo2.flush();
            fo2.close();

            new File(ctx.getCacheDir().getAbsolutePath() + File.separator + "MRZ.TEMP").delete();

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
            // 先获取PackageParser对象
            Class<?> packageParserClass = null;
            try {
                packageParserClass = Class.forName("android.content.pm.PackageParser");
                Object packageParser = packageParserClass.newInstance();
                //接着获取PackageParser.Package
                Method parsePackageMethod = packageParserClass.getDeclaredMethod("parsePackage", File.class, int.class);
                parsePackageMethod.setAccessible(true);
                Object packageParser$package = parsePackageMethod.invoke(packageParser, new File(apk), PackageManager.GET_RECEIVERS);
                // 获取 Bundle mAppMetaData 对象
                Class<?> packageParser$package_Class = packageParser$package.getClass();
                Field mAppMetaDataFiled = packageParser$package_Class.getDeclaredField("mAppMetaData");
                mAppMetaDataFiled.setAccessible(true);
                Bundle mAppMetaData = (Bundle) mAppMetaDataFiled.get(packageParser$package);
                if (mAppMetaData != null && mAppMetaData.containsKey("pkg")) {
                    String pkg = mAppMetaData.getString("pkg");
                    onCheck(pkg,name);
                    new File(ctx.getCacheDir().getAbsoluteFile() + "/GAMES/" + name).createNewFile();
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            }
        }
    }

    private static boolean isGameInstalled(String pkg) { return (ctx.getPackageManager().getLaunchIntentForPackage(pkg) != null); }

    public static void installApp(String paramString) {
        try {
            VirtualCore.get().installPackage((ctx.getPackageManager().getApplicationInfo(paramString, 0)).sourceDir, 36);
            return;
        } catch (android.content.pm.PackageManager.NameNotFoundException paramSstring) {
            paramSstring.printStackTrace();
            return;
        }
    }

    public static void onCheck(final String pkg, final String AppName) { (new Thread(new Runnable() {
        int flag = 1;
        ProgressDialog pd = new ProgressDialog(ctx);

        public void run() {
            try {
                ((Activity)ctx).runOnUiThread(new Runnable() {
                    public void run() {
                        pd.setTitle("Checking");
                        pd.setMessage("Checking Things...");
                        pd.setIndeterminate(true);
                        pd.setCancelable(false);
                        pd.setCanceledOnTouchOutside(false);
                        pd.show();
                    }
                });
                Thread.sleep(700L);
                ((Activity)ctx).runOnUiThread(new Runnable() {
                    public void run() {
                        if (!isGameInstalled(pkg)) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(ctx);
                            builder.setMessage("Please install the game "+AppName+" to continue with this app.");
                            builder.setTitle("Game Not Found!!!").setPositiveButton("Download It!", new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface param3DialogInterface, int param3Int) {
                                    StringBuilder stringBuilder = new StringBuilder();
                                    stringBuilder.append("https://play.google.com/store/apps/details?id=");
                                    stringBuilder.append(pkg);
                                    ((Activity)ctx).startActivity(new Intent("android.intent.action.VIEW", Uri.parse(stringBuilder.toString())));
                                }
                            }).setNeutralButton("Later", new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface param3DialogInterface, int param3Int) { ((Activity)ctx).finish(); }
                            }).setCancelable(false).create().show();
                            flag = 0;
                            pd.dismiss();
                            return;
                        }
                    }
                });
                Thread.sleep(700L);
                if (this.flag == 1) {
                    ((Activity)ctx).runOnUiThread(new Runnable() {
                        public void run() {
                            pd.setTitle("Getting Ready");
                            pd.setMessage("Getting Stuffs From Game To Ready For Mods...");
                        }
                    });
                    installApp(pkg);
                    Thread.sleep(700L);
                }
                ((Activity)ctx).runOnUiThread(new Runnable() {
                    public void run() { pd.dismiss();
                        Toast.makeText(ctx,"The game is avariable in Plugin list", Toast.LENGTH_LONG).show();
                    }
                });
                return;
            } catch (Exception exception) {
                exception.printStackTrace();
                ((Activity)ctx).runOnUiThread(new Runnable() {
                    public void run() { pd.dismiss();
                        Toast.makeText(ctx,"The game is avariable in Plugin list", Toast.LENGTH_LONG).show();}
                });
                return;
            }
        }
    })).start(); }
}