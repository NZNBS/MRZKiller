package com.mrz.activity;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.mrz.R;
import com.mrz.stuff.FileUtils;
import com.mrz.stuff.xPluginManager;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class MRZTest extends AppCompatActivity {

    //For our image a little converter
    private int convertDipToPixels(int i) {
        return (int) ((((float) i) * getResources().getDisplayMetrics().density) + 0.5f);
    }

    private int dpi() {
        DisplayMetrics metrics = getResources().getDisplayMetrics();
        return (int) (metrics.density * 160f);
    }

    private int dp(int i) {
        if (dpi() > 400)
            return (int) TypedValue.applyDimension(1, (float) i, getResources().getDisplayMetrics()) - 20;
        return (int) TypedValue.applyDimension(1, (float) i, getResources().getDisplayMetrics());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_m_r_z_test);
        findViewById(R.id.addplugin).setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                Intent getContentIntent = FileUtils.createGetContentIntent();
                Intent intent = Intent.createChooser(getContentIntent, "Select .mrz file");
                startActivityForResult(intent, REQUEST_CHOOSER);
            }
        });
        findViewById(R.id.pluginlist).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                File dir = new File(getCacheDir().getAbsoluteFile() + "/GAMES/");
                if (dir.isDirectory())
                {
                    MRZTest ctx = new MRZTest();
                    String[] children = dir.list();
                    for (int i = 0; i < children.length; i++)
                    {
                        if (!children[i].equals("GAMES")){
                            String name = children[i].toString();
                            Toast.makeText(((Context)ctx),name,Toast.LENGTH_LONG).show();
                        }
                    }
                }
            }
        });
    }
    private interface InterfaceBtn {
        void OnWrite();
    }
    public void addButton(String feature, final InterfaceBtn interfaceBtn) {
        final GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(GradientDrawable.RECTANGLE);
        String str2 = "#86FF5900";
        gradientDrawable.setColor(Color.parseColor(str2));
        gradientDrawable.setStroke(3, Color.parseColor(str2));
        gradientDrawable.setCornerRadius(8.0f);
        final GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(GradientDrawable.RECTANGLE);
        gradientDrawable2.setColor(0);
        gradientDrawable2.setStroke(3, Color.parseColor(str2));
        gradientDrawable2.setCornerRadius(8.0f);

        final Button button = new Button(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(7, 5, 7, 5);
        button.setText(feature + " [OFF]");
        button.setTextColor(Color.parseColor("#000000"));
        button.setTextSize(11.0f);
        button.setShadowLayer(8.0f, 0.0f, 0.0f, Color.parseColor("#53AEFC"));
        button.setAllCaps(false);
        button.setBackground(gradientDrawable2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, dp(40));
        button.setPadding(3, 3, 3, 3);
        layoutParams2.bottomMargin = 5;
        button.setLayoutParams(layoutParams2);
        final String feature2 = feature;
        button.setOnClickListener(new View.OnClickListener() {
            private boolean isActive = true;

            public void onClick(View v) {
                interfaceBtn.OnWrite();
                if (isActive) {
                    button.setText(feature2 + " [ON]");
                    button.setBackground(gradientDrawable);
                    isActive = false;
                    return;
                }
                button.setText(feature2 + " [OFF]");
                button.setBackground(gradientDrawable2);
                isActive = true;
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