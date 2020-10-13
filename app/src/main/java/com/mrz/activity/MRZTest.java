package com.mrz.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

import com.mrz.R;
import com.mrz.stuff.FileUtils;
import com.mrz.stuff.xPluginManager;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class MRZTest extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_m_r_z_test);

        findViewById(R.id.addplugin).setOnClickListener(view -> {
            Intent getContentIntent = FileUtils.createGetContentIntent();
            Intent intent = Intent.createChooser(getContentIntent, "Select .mrz file");
            startActivityForResult(intent, REQUEST_CHOOSER);
        });
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
        } catch (IOException e) {
            e.printStackTrace();
        }
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

    private static final int REQUEST_CHOOSER = 1234;

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent     data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case REQUEST_CHOOSER:
                if (resultCode == RESULT_OK) {

                    final Uri uri = data.getData();

                    // Get the File path from the Uri
                    String path = FileUtils.getPath(this, uri);

                    // Alternatively, use FileUtils.getFile(Context, Uri)
                    if (path != null && FileUtils.isLocal(path) && path.equals(".mrz")) {
                        try {
                            @SuppressLint({"NewApi", "LocalSuppress"}) byte[] bytes = Files.readAllBytes(Paths.get(path));
                            xPluginManager.Setup(this, bytes);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
                break;
        }
    }
}