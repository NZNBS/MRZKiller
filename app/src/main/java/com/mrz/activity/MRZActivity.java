package com.mrz.activity;

import androidx.appcompat.app.AppCompatActivity;
import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;


import com.gun0912.tedpermission.PermissionListener;
import com.gun0912.tedpermission.TedPermission;
import com.mrz.R;
import com.mrz.stuff.FileUtils;
import com.mrz.stuff.xPluginManager;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class MRZActivity extends AppCompatActivity {
    static Context ctx;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Ask();
        ctx = this;
    }

    public static void ReloadList(Context context) {
        try {
            ((Activity)context).finish();
            Intent intent = new Intent(ctx, MRZPlugins.class);
            ctx.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void Ask() {
        PermissionListener permissionlistener = new PermissionListener() {
            @Override
            public void onPermissionGranted() {
                LogcatService();
            }

            @Override
            public void onPermissionDenied(List<String> deniedPermissions) {
                Toast.makeText(MRZActivity.this, "Permission Denied\n" + deniedPermissions.toString(), Toast.LENGTH_SHORT).show();
                finish();
            }
        };

        //check all needed permissions together
        TedPermission.with(this)
                .setPermissionListener(permissionlistener)
                .setDeniedMessage("If you reject permission,you can not use this service\n\nPlease turn on permissions at [Setting] > [Permission]")
                .setPermissions(Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.READ_PHONE_STATE)
                .check();
    }

    private void LogcatService() {
        try {
            if (!(new File(Environment.getExternalStorageDirectory(), "/MRZ/")).exists())
                //noinspection ResultOfMethodCallIgnored
                (new File(Environment.getExternalStorageDirectory(), "/MRZ/")).mkdir();
            if ((new File(Environment.getExternalStorageDirectory(), "/MRZ/logs.txt")).exists())
                //noinspection ResultOfMethodCallIgnored
                (new File(Environment.getExternalStorageDirectory(), "/MRZ/logs.txt")).delete();
            Runtime runtime = Runtime.getRuntime();
            String tringBuilder = "logcat -f " +
                    Environment.getExternalStorageDirectory().getAbsolutePath() +
                    "/MRZ/logs.txt";
            runtime.exec(tringBuilder);
            Init();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void Init() {
        findViewById(R.id.addplugin).setOnClickListener(view -> {
            Intent getContentIntent = FileUtils.createGetContentIntent();
            Intent intent = Intent.createChooser(getContentIntent, "Select .mrz file");
            Toast.makeText(this,"Please, select MRZ file",Toast.LENGTH_LONG).show();
            startActivityForResult(intent, 152);
        });
        Intent intent = new Intent(this, MRZPlugins.class);
        findViewById(R.id.pluginlist).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                try
                {
                    startActivity(intent);
                }
                catch (Exception e)
                {
                    System.exit(0);
                }
            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent     data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 152:
                if (resultCode == RESULT_OK) {
                    final Uri uri = data.getData();
                    String path = FileUtils.getPath(this, uri);
                    if (path != null && FileUtils.isLocal(path)) {
                        File file = new File(path);
                        xPluginManager.Setup(this, file);
                    }
                }
                break;
        }
    }

    boolean twice;
    @Override
    public void onBackPressed() {
        if(twice){
            System.exit(0);
        }
        Toast.makeText(this,"Press Back Again To Exit",Toast.LENGTH_SHORT).show();
        new Handler().postDelayed(() -> twice = false,2000);
        twice = true;
    }
}