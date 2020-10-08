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

    private MediaPlayer FXPlayer;
    public View mFloatingView;
    private Button close;
    private Button kill;
    private LinearLayout mButtonPanel;
    public LinearLayout mExpanded;
    private RelativeLayout mRootContainer;
    public WindowManager mWindowManager;
    public WindowManager.LayoutParams params;
    private LinearLayout patches;
    //private FrameLayout rootFrame;
    private ImageView startimage;
    private LinearLayout view1;
    private LinearLayout view2;
    private LinearLayout Btns;
    private AlertDialog alert;

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
        FrameLayout frameLayout = new FrameLayout(getBaseContext());
        RelativeLayout relativeLayout = new RelativeLayout(getBaseContext());
        // rootFrame = new FrameLayout(getBaseContext()); // Global markup
        // mRootContainer = new RelativeLayout(getBaseContext()); // Markup on which two markups of the icon and the menu itself will be placed
        mExpanded = new LinearLayout(getBaseContext()); // Menu markup (when the menu is expanded)
        patches = new LinearLayout(getBaseContext());
        Btns = new LinearLayout(getBaseContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        relativeLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(getBaseContext());
        startimage = imageView;

        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        // int applyDimension = (int) TypedValue.applyDimension(1, (float) 60, getResources().getDisplayMetrics());
        view1 = new LinearLayout(getBaseContext());
        view2 = new LinearLayout(getBaseContext());
        mButtonPanel = new LinearLayout(getBaseContext()); // Layout of option buttons (when the menu is expanded)

        //********** Gradients **********
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(GradientDrawable.RECTANGLE);
        String str = "#ffff2323";
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(3, Color.parseColor(str));
        gradientDrawable.setCornerRadius(8.0f);

        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable.setShape(GradientDrawable.RECTANGLE);
        gradientDrawable2.setColor(-1);
        gradientDrawable2.setStroke(3, -1);
        gradientDrawable2.setCornerRadius(8.0f);

        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setShape(GradientDrawable.RECTANGLE);
        gradientDrawable3.setColor(Color.parseColor(str));
        gradientDrawable3.setStroke(3, -1);
        gradientDrawable3.setCornerRadius(8.0f);

        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        // mRootContainer.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));

        ((ViewGroup.MarginLayoutParams) startimage.getLayoutParams()).topMargin = convertDipToPixels(10);

        //********** Mod menu box **********
        mExpanded.setVisibility(View.GONE);
        mExpanded.setBackgroundColor(Color.parseColor("#FF0000"));
        mExpanded.setBackground(gradientDrawable);
        mExpanded.setGravity(17);
        mExpanded.setOrientation(LinearLayout.VERTICAL);
        mExpanded.setPadding(5, 0, 5, 0);
       /* if (dpi() > 400)
            mExpanded.setLayoutParams(new LinearLayout.LayoutParams(550, -2)); //-1
        if (dpi() > 350)
            mExpanded.setLayoutParams(new LinearLayout.LayoutParams(500, -2)); //-1
        else*/
        mExpanded.setLayoutParams(new LinearLayout.LayoutParams(400, -2)); //-1

        ScrollView scrollView = new ScrollView(getBaseContext());
        /*   if (dpi() > 400)
            scrollView.setLayoutParams(new LinearLayout.LayoutParams(-1, 450));
        else*/
        scrollView.setLayoutParams(new LinearLayout.LayoutParams(-1, 350));

        this.Btns.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.Btns.setBackgroundColor(0);
        this.Btns.setGravity(5);
        this.Btns.setPadding(0, 0, 5, 0);
        this.Btns.setOrientation(LinearLayout.HORIZONTAL);

        //********** Title text **********
        TextView textView = new TextView(getBaseContext());
        textView.setText("Select instaled plugin");
        if (dpi() > 400)
            textView.setTextSize(15.0f);
        else
            textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setShadowLayer(12.0f, 0.0f, 0.0f, Color.parseColor("#000000"));
        textView.setPadding(0, 8, 0, 8);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        //textView.setLayoutParams(layoutParams2);

        //********** Close button **********
        close = new Button(this);
        close.setBackgroundColor(Color.parseColor("#1C2A35"));
        close.setText("CLOSE");
        close.setTextSize(11.0f);
        close.setAllCaps(false);
        close.setBackground(gradientDrawable3);
        close.setShadowLayer(8.0f, 0.0f, 0.0f, Color.parseColor("#000000"));
        close.setPadding(3, 3, 3, 3);
        close.setTextColor(Color.parseColor("#82CAFD"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, dp(40));
        layoutParams.topMargin = 9;
        layoutParams.bottomMargin = 3;
        close.setLayoutParams(layoutParams);

        //********** Add views **********
        new LinearLayout.LayoutParams(-1, dp(25)).topMargin = dp(2);
        frameLayout.addView(relativeLayout);
        relativeLayout.addView(this.mExpanded);
        mExpanded.addView(textView);
        mExpanded.addView(scrollView);
        scrollView.addView(patches);
        this.mExpanded.addView(this.Btns);
        this.Btns.addView(this.close);

        this.mFloatingView = frameLayout;
        if (Build.VERSION.SDK_INT >= 26) {
            params = new WindowManager.LayoutParams(-2, -2, 2038, 8, -3);
        } else {
            params = new WindowManager.LayoutParams(-2, -2, 2002, 8, -3);
        }
        params.gravity = 8388659;
        params.x = 0;
        params.y = 100;
        mWindowManager = (WindowManager) getSystemService(Context.WINDOW_SERVICE);
        mWindowManager.addView(mFloatingView, params);
        findViewById(R.id.pluginlist).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mExpanded.setVisibility(View.VISIBLE);
                File dir = new File(getCacheDir().getAbsoluteFile() + "/GAMES/");
                if (dir.isDirectory())
                {
                    String[] children = dir.list();
                    for (int i = 0; i < children.length; i++)
                    {
                        if (!children[i].equals("GAMES")){
                            addButton(children[i], new InterfaceBtn() {
                                public void OnWrite() {
                                    mExpanded.setVisibility(View.GONE);
                                }
                            });
                        }
                    }
                }
            }
        });
        close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mExpanded.setVisibility(View.GONE);
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
        patches.addView(button);
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