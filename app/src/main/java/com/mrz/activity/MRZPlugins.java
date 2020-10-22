package com.mrz.activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import com.mrz.R;
import com.mrz.stuff.ServicesAdapter;
import com.mrz.stuff.itemModel;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class MRZPlugins extends AppCompatActivity {

    ArrayList<itemModel> arrayList;
    RecyclerView recyclerView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plugins);
        recyclerView = (RecyclerView) findViewById(R.id.recycler_view1);
        arrayList = new ArrayList<>();
        addServices();
    }

    public void addServices() {
        recyclerView.setLayoutManager(new GridLayoutManager(this, 2));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        File dir = new File(this.getCacheDir().getAbsolutePath() + "/GAMES/");
        if (dir.exists()) {
            for (File fre : dir.listFiles()) {
                if (fre.isFile()) {
                    try {
                        String name = fre.getName();
                        String APKFilePath = getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + name + "/" + "MRZ.pgl";
                        PackageManager pm = getPackageManager();
                        PackageInfo pi = pm.getPackageArchiveInfo(APKFilePath, 0);
                        pi.applicationInfo.sourceDir       = APKFilePath;
                        pi.applicationInfo.publicSourceDir = APKFilePath;
                        String   AppName = (String)pi.applicationInfo.loadLabel(pm);
                        Class<?> packageParserClass = Class.forName("android.content.pm.PackageParser");
                        Object packageParser = packageParserClass.newInstance();
                        Method parsePackageMethod = packageParserClass.getDeclaredMethod("parsePackage", File.class, int.class);
                        parsePackageMethod.setAccessible(true);
                        String apk = getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + name + "/" + "MRZ.pgl";
                        Object packageParser$package = parsePackageMethod.invoke(packageParser, new File(apk), PackageManager.GET_RECEIVERS);
                        Class<?> packageParser$package_Class = packageParser$package.getClass();
                        Field mAppMetaDataFiled = packageParser$package_Class.getDeclaredField("mAppMetaData");
                        mAppMetaDataFiled.setAccessible(true);
                        Bundle mAppMetaData = (Bundle) mAppMetaDataFiled.get(packageParser$package);
                        if (mAppMetaData != null && mAppMetaData.containsKey("icon") && mAppMetaData.containsKey("pkg") && mAppMetaData.containsKey("autor")) {
                            String icon = mAppMetaData.getString("icon");
                            String pkg = mAppMetaData.getString("pkg");
                            String autor = mAppMetaData.getString("autor");
                            itemModel itemModel = new itemModel();
                            itemModel.setPKG(pkg);
                            itemModel.setAUTOR(autor);
                            itemModel.setService(AppName);
                            itemModel.setImage(icon);
                            arrayList.add(itemModel);
                        }
                    } catch (ClassNotFoundException | InstantiationException | InvocationTargetException | NoSuchMethodException | IllegalAccessException | NoSuchFieldException e) {
                        e.printStackTrace();
                        Log.e("MREOZ","LOAD PLUNGINS ERROR : "+e);
                    }

                }
            }
            ServicesAdapter adapter = new ServicesAdapter(getApplicationContext(), arrayList);
            recyclerView.setAdapter(adapter);
        } else {
            Toast.makeText(this,"You need instal plugins :(",Toast.LENGTH_LONG).show();
        }
    }
}