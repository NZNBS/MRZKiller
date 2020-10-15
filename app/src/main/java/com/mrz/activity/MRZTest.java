package com.mrz.activity;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.gun0912.tedpermission.PermissionListener;
import com.gun0912.tedpermission.TedPermission;
import com.mrz.R;
import com.mrz.stuff.FileUtils;
import com.mrz.stuff.xPluginManager;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

public class MRZTest extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
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
            setContentView(R.layout.activity_m_r_z_test);
            PermissionListener permissionlistener = new PermissionListener() {
                @Override
                public void onPermissionGranted() {
                    Toast.makeText(MRZTest.this, "Permission Granted", Toast.LENGTH_SHORT).show();
                }

                @Override
                public void onPermissionDenied(List<String> deniedPermissions) {
                    Toast.makeText(MRZTest.this, "Permission Denied\n" + deniedPermissions.toString(), Toast.LENGTH_SHORT).show();
                    finish();
                }
            };

            //check all needed permissions together
            TedPermission.with(this)
                    .setPermissionListener(permissionlistener)
                    .setDeniedMessage("If you reject permission,you can not use this service\n\nPlease turn on permissions at [Setting] > [Permission]")
                    .setPermissions(Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE)
                    .check();
            findViewById(R.id.addplugin).setOnClickListener(view -> {
                Intent getContentIntent = FileUtils.createGetContentIntent();
                Intent intent = Intent.createChooser(getContentIntent, "Select .mrz file");
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
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent     data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 152:
                if (resultCode == RESULT_OK) {

                    final Uri uri = data.getData();

                    // Get the File path from the Uri
                    String path = FileUtils.getPath(this, uri);

                    // Alternatively, use FileUtils.getFile(Context, Uri)
                    if (path.equals("-PLUGIN.mrz")) {
                        try {
                            @SuppressLint({"NewApi", "LocalSuppress"}) byte[] bytes = Files.readAllBytes(Paths.get(path));
                            xPluginManager.Setup(this, bytes);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    } else{
                        Toast.makeText(this,"The select file is not soported",Toast.LENGTH_LONG).show();
                    }
                }
                break;
        }
    }
}