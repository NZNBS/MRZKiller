package com.mrz.activity;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Base64;
import android.widget.ImageView;

import com.mrz.R;
import com.mrz.stuff.IconsAdapter;
import com.mrz.stuff.ServicesAdapter;
import com.mrz.stuff.itemModel;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class MRZPlugins extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plugins);
        recyclerView = (RecyclerView) findViewById(R.id.recycler_view);
        recyclerView1 = (RecyclerView) findViewById(R.id.recycler_view1);
        arrayList = new ArrayList<>();
        arrayList1 = new ArrayList<>();

        addIcons();
        addServices();
    }

    ArrayList<itemModel> arrayList, arrayList1;
    RecyclerView recyclerView, recyclerView1;

    public void addIcons() {
        recyclerView.setLayoutManager(new GridLayoutManager(this, 3));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        File dir = new File(getCacheDir().getAbsolutePath() + "/GAMES/");
        for (File f : dir.listFiles()) {
            if (f.isFile()) {
                String name = f.getName();
                Class<?> packageParserClass = null;
                try {
                    packageParserClass = Class.forName("android.content.pm.PackageParser");
                    Object packageParser = packageParserClass.newInstance();
                    //接着获取PackageParser.Package
                    Method parsePackageMethod = packageParserClass.getDeclaredMethod("parsePackage", File.class, int.class);
                    parsePackageMethod.setAccessible(true);
                    String apk = getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + name + "/" + "MRZ.pgl";
                    Object packageParser$package = parsePackageMethod.invoke(packageParser, new File(apk), PackageManager.GET_RECEIVERS);
                    // 获取 Bundle mAppMetaData 对象
                    Class<?> packageParser$package_Class = packageParser$package.getClass();
                    Field mAppMetaDataFiled = packageParser$package_Class.getDeclaredField("mAppMetaData");
                    mAppMetaDataFiled.setAccessible(true);
                    Bundle mAppMetaData = (Bundle) mAppMetaDataFiled.get(packageParser$package);
                    if (mAppMetaData != null && mAppMetaData.containsKey("icon")) {
                        String icon = mAppMetaData.getString("icon");
                        itemModel itemModel = new itemModel();
                        itemModel.setImage(icon);
                        arrayList.add(itemModel);
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
                // Do your stuff
            }
        }
    }

    public void addServices() {
        recyclerView1.setLayoutManager(new GridLayoutManager(this, 2));
        recyclerView1.setItemAnimator(new DefaultItemAnimator());
        File dir = new File(getCacheDir().getAbsoluteFile() + "/GAMES/");
        for (File f : dir.listFiles()) {
            if (f.isFile()) {
                String name = f.getName();
                String APKFilePath = getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + name + "/" + "MRZ.pgl"; //For example...
                PackageManager pm = getPackageManager();
                PackageInfo pi = pm.getPackageArchiveInfo(APKFilePath, 0);

                // the secret are these two lines....
                pi.applicationInfo.sourceDir       = APKFilePath;
                pi.applicationInfo.publicSourceDir = APKFilePath;
                //

                String   AppName = (String)pi.applicationInfo.loadLabel(pm);
                itemModel itemModel = new itemModel();
                itemModel.setService(AppName);
                arrayList1.add(itemModel);
            }
        }
        IconsAdapter adapter = new IconsAdapter(getApplicationContext(), arrayList);
        recyclerView.setAdapter(adapter);
    }
}