package com.mrz.activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import com.mrz.R;
import com.mrz.stuff.IconsAdapter;
import com.mrz.stuff.ServicesAdapter;
import com.mrz.stuff.itemModel;

import java.io.File;
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
        if (dir.isDirectory()) {
            String[] icons = dir.list();
            for (int i = 0; i < icons.length; i++) {
                if(!icons[i].equals("GAMES")){
                    String APKFilePath = getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + icons + "/" + "MRZ.pgl"; //For example...
                    PackageManager pm = getPackageManager();
                    PackageInfo pi = pm.getPackageArchiveInfo(APKFilePath, 0);

                    // the secret are these two lines....
                    pi.applicationInfo.sourceDir       = APKFilePath;
                    pi.applicationInfo.publicSourceDir = APKFilePath;
                    //

                    Drawable APKicon = pi.applicationInfo.loadIcon(pm);
                    itemModel itemModel = new itemModel();
                    itemModel.setImage(APKicon);
                    arrayList.add(itemModel);
                }
            }

            IconsAdapter adapter = new IconsAdapter(getApplicationContext(), arrayList);
            recyclerView.setAdapter(adapter);
        }
    }

    public void addServices() {
        recyclerView1.setLayoutManager(new GridLayoutManager(this, 2));
        recyclerView1.setItemAnimator(new DefaultItemAnimator());
        File dir = new File(getCacheDir().getAbsoluteFile() + "/GAMES/");
        if (dir.isDirectory()) {
            String[] icons = dir.list();
            for (int i = 0; i < icons.length; i++) {
                if(!icons[i].equals("GAMES")){
                    String APKFilePath = getCacheDir().getAbsolutePath() + File.separator + "MRZKiller" + File.separator + icons + "/" + "MRZ.pgl"; //For example...
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

        ServicesAdapter adapter = new ServicesAdapter(getApplicationContext(), arrayList1);
        recyclerView1.setAdapter(adapter);
    }
}