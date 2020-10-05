package com.mrz.loader;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.Html;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.H4X.FloaterHS;

import org.json.JSONObject;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import javax.net.ssl.TrustManagerFactory;
import static com.mrz.NativeCalls.changeSeekBar;
import static com.mrz.NativeCalls.changeToggle;
import static com.mrz.NativeCalls.getListFT;
import static com.mrz.NativeCalls.getListFTBR;
import static com.mrz.NativeCalls.getListFTEN;
import static com.mrz.NativeCalls.getListFTLITE;
import static com.mrz.NativeCalls.getListFTLITEBR;
import static com.mrz.NativeCalls.getListFTLITEEN;
import static com.mrz.NativeCalls.init;

@SuppressWarnings("ResultOfMethodCallIgnored")
public class Loader {
    private static boolean isRunning = false;
    private Service floater;
    private Context ctx;
    private Timer timer;
    public static String Juego = "Admin";
    private String Lenguaje = "ESP";
    private WindowManager windowManager;
    private View mFloatingView;
	private View mMenuView;
    private LinearLayout patches;
    private LinearLayout patchesAIM;
    private LinearLayout patchesVISUAL;
    private LinearLayout patchesESP;
    private ScrollView AIM;
    private ScrollView ESP;
    private ScrollView VISUAL;
    private ScrollView OTHERS;
    private ScrollView ACCOUNT;
    private TextView initText;
	
    @SuppressWarnings("FieldCanBeLocal")
    private String floaterinfo = "[ M R Z ] - Server loader 5.5 - updated 21/7/2020";


    @SuppressWarnings("unused")
    public void Init(Context context, Service service) {
        try {
            floater = service;
            timer = new Timer();
            ctx = context;
            windowManager = (WindowManager) ctx.getSystemService(Context.WINDOW_SERVICE);
            mFloatingView = LayoutInflater.from(ctx).inflate(getResID("mrz_floater", "layout"), null);
            if (Prefs.with(floater).read("MENU").equals("FULLSCREEN")) {
                Prefs.with(floater).write("MENU","FULLSCREEN");
                FloatButtonFullScreen();
            } else if (Prefs.with(floater).read("MENU").equals("SEMISCREEN")){
                Prefs.with(floater).write("MENU","SEMISCREEN");
                FloatButtonSemiScreen();
            } else {
                Prefs.with(floater).write("MENU","FULLSCREEN");
                FloatButtonFullScreen();
            }
        } catch (Exception e) {
            Log.e("MREOZ","LOADER ERROR : "+e);
        }
    }

    public void generateIMEI(String IMEI) {
        try {
            File roo = new File(ctx.getFilesDir().getPath(), "/MRZ/");
            if (!roo.exists()) {
                roo.mkdirs();
            }
            File root = new File(ctx.getFilesDir().getPath(), "/MRZ/"+Loader.Juego);
            if (!root.exists()) {
                root.mkdirs();
            }
            String sFileName = "signatureData.txt";
            File gpxfile = new File(root, sFileName);
            FileWriter writer = new FileWriter(gpxfile);
            writer.append(IMEI);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            Log.e("MREOZ","LOADER ERROR : "+e);
        }
    }

    @SuppressWarnings({"unused", "WeakerAccess"})
    public void Destroy() {
        isRunning = false;
        String mLibDirPath = ctx.getCacheDir() +File.separator +"MRZ"+ File.separator + "lib" + File.separator + "armeabi-v7a"+File.separator+ "libMRZ.so";
        new File(mLibDirPath).delete();
        if (mFloatingView != null) {
            windowManager.removeView(mFloatingView);
            mFloatingView = null;
        }
		if (mMenuView != null) {
            windowManager.removeView(mMenuView);
            mMenuView = null;
        }
        if (timer != null) {
            timer.cancel();
        }
    }

    @SuppressWarnings("deprecation")
    @SuppressLint("SetTextI18n")
    private void FloatButtonFullScreen() {
        mMenuView = LayoutInflater.from(ctx).inflate(getResID("mrz_fullscreen", "layout"), null);

        Button semiscreen = mMenuView.findViewById(getID("SemiScreen"));

        semiscreen.setOnClickListener(view -> {
            if (mFloatingView != null) {
                windowManager.removeView(mFloatingView);
            }
            if (mMenuView != null) {
                windowManager.removeView(mMenuView);
            }
            Prefs.with(floater).write("MENU","SEMISCREEN");
            FloatButtonFullScreen();
        });

        final TextView ftinfo = mFloatingView.findViewById(getID("ftinfo"));

        final WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                getLayoutType(),
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.TOP | Gravity.START;
        params.x = 100;
        params.y = 100;
        windowManager.addView(mFloatingView, params);
		
		final WindowManager.LayoutParams params2 = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.FILL_PARENT,
                WindowManager.LayoutParams.FILL_PARENT,
                getLayoutType(),
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        params2.gravity = Gravity.TOP | Gravity.START;
        params2.x = 0;
        params2.y = 0;
        windowManager.addView(mMenuView, params2);

        this.mFloatingView.setVisibility(View.GONE);
        this.mMenuView.setVisibility(View.GONE);


        patches = mMenuView.findViewById(getID("patches"));
        patchesESP = mMenuView.findViewById(getID("patchesesp"));
        patchesAIM = mMenuView.findViewById(getID("patchesaim"));
        patchesVISUAL = mMenuView.findViewById(getID("patchesvisual"));

        OTHERS = mMenuView.findViewById(getID("others"));
        ESP = mMenuView.findViewById(getID("esp"));
        AIM = mMenuView.findViewById(getID("aim"));
        VISUAL = mMenuView.findViewById(getID("visual"));
        ACCOUNT = mMenuView.findViewById(getID("acount"));
        Button userIMEI = mMenuView.findViewById(getID("IMEIUSER"));
        userIMEI.setText(GetIMEI.GetIMEI(ctx));
        double random = Math.random();
        double d = (double) 899999999999999L;
        Double.isNaN(d);
        String imei = "" + (((long) (random * d)) + 100000000000000L);
        userIMEI.setOnClickListener(view -> {
            userIMEI.setText(imei.trim());
            generateIMEI(imei);
            Toast.makeText(ctx,"IMEI Saved",Toast.LENGTH_SHORT).show();
        });
        Button AIMB = mMenuView.findViewById(getID("MENUAIM"));
        Button OTHER = mMenuView.findViewById(getID("MENUOTHER"));
        Button ESPB = mMenuView.findViewById(getID("MENUESP"));
        Button VISUALB = mMenuView.findViewById(getID("MENUVISUAL"));
        Button ACCOUNTB = mMenuView.findViewById(getID("MENUUSER"));

        AIMB.setTextColor(Color.parseColor("#000000"));
        OTHER.setTextColor(Color.parseColor("#000000"));
        ESPB.setTextColor(Color.parseColor("#000000"));
        VISUALB.setTextColor(Color.parseColor("#000000"));
        ACCOUNTB.setTextColor(Color.parseColor("#00ff0d"));

        ACCOUNTB.setText(Html.fromHtml("<u>"+"ACOUNT"+"</u>"));

        AIMB.setOnClickListener(view -> {

            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.VISIBLE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor(Color.parseColor("#000000"));
            VISUALB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#00ff0d"));
            ESPB.setTextColor(Color.parseColor("#000000"));
            AIMB.setText(Html.fromHtml("<u>"+"AIM"+"</u>"));
        });
        ESPB.setOnClickListener(view -> {
            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.VISIBLE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor(Color.parseColor("#000000"));
            VISUALB.setTextColor(Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#000000"));
            ESPB.setTextColor(Color.parseColor("#00ff0d"));

            ESPB.setText(Html.fromHtml("<u>"+"ESP"+"</u>"));
        });
        OTHER.setOnClickListener(view -> {
            OTHERS.setVisibility(View.VISIBLE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor( Color.parseColor("#000000"));
            VISUALB.setTextColor( Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#00ff0d"));
            ESPB.setTextColor( Color.parseColor("#000000"));

            OTHER.setText(Html.fromHtml("<u>"+"PLAYER"+"</u>"));
        });
        VISUALB.setOnClickListener(view -> {
            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.VISIBLE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor(Color.parseColor("#000000"));
            VISUALB.setTextColor( Color.parseColor("#00ff0d"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor( Color.parseColor("#000000"));
            ESPB.setTextColor(Color.parseColor("#000000"));

            VISUALB.setText(Html.fromHtml("<u>"+"VISUAL"+"</u>"));
        });
        ACCOUNTB.setOnClickListener(view -> {
            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.VISIBLE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor( Color.parseColor("#00ff0d"));
            VISUALB.setTextColor(Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#000000"));
            ESPB.setTextColor( Color.parseColor("#000000"));

            ACCOUNTB.setText(Html.fromHtml("<u>"+"ACOUNT"+"</u>"));
        });
        ImageView ic = mFloatingView.findViewById(getID("ficon"));
        byte[] arrayOfByte = Base64.decode("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", 0);
        Bitmap bitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
        ic.setImageBitmap(bitmap);
        mMenuView.findViewById(getID("mclose")).setOnClickListener(view -> {
            mFloatingView.setVisibility(View.VISIBLE);
            mMenuView.setVisibility(View.GONE);
        });
        mMenuView.findViewById(getID("fc")).setOnClickListener(view -> floater.stopSelf());
        mFloatingView.setOnTouchListener(new View.OnTouchListener() {
            private int initialX;
            private int initialY;
            private float initialTouchX;
            private float initialTouchY;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initialX = params.x;
                        initialY = params.y;
                        initialTouchX = event.getRawX();
                        initialTouchY = event.getRawY();
                        return true;
                    case MotionEvent.ACTION_UP:
                        v.performClick();
                        int differenceX = (int) Math.abs(initialTouchX - event.getRawX());
                        int differenceY = (int) Math.abs(initialTouchY - event.getRawY());
                        if (differenceX < 10 && differenceY < 10 && mFloatingView.getVisibility() == View.VISIBLE) {
                            mFloatingView.setVisibility(View.GONE);
                            mMenuView.setVisibility(View.VISIBLE);
                        }
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        params.x = initialX + (int) (event.getRawX() - initialTouchX);
                        params.y = initialY + (int) (event.getRawY() - initialTouchY);
                        windowManager.updateViewLayout(mFloatingView, params);
                        return true;
                }
                return false;
            }
        });
        this.mFloatingView.setVisibility(View.GONE);
        this.mMenuView.setVisibility(View.GONE);
        initText = addText("Waiting...");
        timer.scheduleAtFixedRate(new DRM(), 60, 60000);
        ftinfo.setText(floaterinfo);
    }
    @SuppressLint("SetTextI18n")
    private void FloatButtonSemiScreen() {
        mMenuView = LayoutInflater.from(ctx).inflate(getResID("mrz_semiscreen", "layout"), null);
        Button fullscreen = mMenuView.findViewById(getID("smFullScreen"));
        fullscreen.setOnClickListener(view -> {
            if (mFloatingView != null) {
                windowManager.removeView(mFloatingView);
                mFloatingView = null;
            }
            if (mMenuView != null) {
                windowManager.removeView(mMenuView);
                mMenuView = null;
            }
            Prefs.with(floater).write("MENU","FULLSCREEN");
            FloatButtonFullScreen();
        });
        final TextView ftinfo = mFloatingView.findViewById(getID("ftinfo"));

        final WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                getLayoutType(),
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.TOP | Gravity.START;
        params.x = 100;
        params.y = 100;
        windowManager.addView(mFloatingView, params);

        final WindowManager.LayoutParams params2 = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.MATCH_PARENT,
                getLayoutType(),
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        params2.gravity = Gravity.TOP | Gravity.START;
        params2.x = 0;
        params2.y = 0;
        windowManager.addView(mMenuView, params2);

        this.mFloatingView.setVisibility(View.GONE);
        this.mMenuView.setVisibility(View.GONE);


        patches = mMenuView.findViewById(getID("smpatches"));
        patchesESP = mMenuView.findViewById(getID("smpatchesesp"));
        patchesAIM = mMenuView.findViewById(getID("smpatchesaim"));
        patchesVISUAL = mMenuView.findViewById(getID("smpatchesvisual"));

        OTHERS = mMenuView.findViewById(getID("smothers"));
        ESP = mMenuView.findViewById(getID("smesp"));
        AIM = mMenuView.findViewById(getID("smaim"));
        VISUAL = mMenuView.findViewById(getID("smvisual"));
        ACCOUNT = mMenuView.findViewById(getID("smacount"));
        Button userIMEI = mMenuView.findViewById(getID("smIMEIUSER"));
        userIMEI.setText(GetIMEI.GetIMEI(ctx));
        double random = Math.random();
        double d = (double) 899999999999999L;
        Double.isNaN(d);
        String imei = "" + (((long) (random * d)) + 100000000000000L);
        userIMEI.setOnClickListener(view -> {
            userIMEI.setText(imei.trim());
            generateIMEI(imei);
            Toast.makeText(ctx,"IMEI Saved",Toast.LENGTH_SHORT).show();
        });
        Button AIMB = mMenuView.findViewById(getID("smMENUAIM"));
        Button OTHER = mMenuView.findViewById(getID("smMENUOTHER"));
        Button ESPB = mMenuView.findViewById(getID("smMENUESP"));
        Button VISUALB = mMenuView.findViewById(getID("smMENUVISUAL"));
        Button ACCOUNTB = mMenuView.findViewById(getID("smMENUUSER"));

        AIMB.setTextColor(Color.parseColor("#000000"));
        OTHER.setTextColor(Color.parseColor("#000000"));
        ESPB.setTextColor(Color.parseColor("#000000"));
        VISUALB.setTextColor(Color.parseColor("#000000"));
        ACCOUNTB.setTextColor(Color.parseColor("#00ff0d"));

        ACCOUNTB.setText(Html.fromHtml("<u>"+"ACOUNT"+"</u>"));

        AIMB.setOnClickListener(view -> {

            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.VISIBLE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor(Color.parseColor("#000000"));
            VISUALB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#00ff0d"));
            ESPB.setTextColor(Color.parseColor("#000000"));
            AIMB.setText(Html.fromHtml("<u>"+"AIM"+"</u>"));
        });
        ESPB.setOnClickListener(view -> {
            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.VISIBLE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor(Color.parseColor("#000000"));
            VISUALB.setTextColor(Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#000000"));
            ESPB.setTextColor(Color.parseColor("#00ff0d"));

            ESPB.setText(Html.fromHtml("<u>"+"ESP"+"</u>"));
        });
        OTHER.setOnClickListener(view -> {
            OTHERS.setVisibility(View.VISIBLE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor( Color.parseColor("#000000"));
            VISUALB.setTextColor( Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#00ff0d"));
            ESPB.setTextColor( Color.parseColor("#000000"));

            OTHER.setText(Html.fromHtml("<u>"+"PLAYER"+"</u>"));
        });
        VISUALB.setOnClickListener(view -> {
            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.VISIBLE);
            ACCOUNT.setVisibility(View.GONE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor(Color.parseColor("#000000"));
            VISUALB.setTextColor( Color.parseColor("#00ff0d"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor( Color.parseColor("#000000"));
            ESPB.setTextColor(Color.parseColor("#000000"));

            VISUALB.setText(Html.fromHtml("<u>"+"VISUAL"+"</u>"));
        });
        ACCOUNTB.setOnClickListener(view -> {
            OTHERS.setVisibility(View.GONE);
            ESP.setVisibility(View.GONE);
            AIM.setVisibility(View.GONE);
            VISUAL.setVisibility(View.GONE);
            ACCOUNT.setVisibility(View.VISIBLE);

            ACCOUNTB.setText("ACOUNT");
            VISUALB.setText("VISUAL");
            OTHER.setText("PLAYER");
            AIMB.setText("AIM");
            ESPB.setText("ESP");

            ACCOUNTB.setTextColor( Color.parseColor("#00ff0d"));
            VISUALB.setTextColor(Color.parseColor("#000000"));
            AIMB.setTextColor(Color.parseColor("#000000"));
            OTHER.setTextColor(Color.parseColor("#000000"));
            ESPB.setTextColor( Color.parseColor("#000000"));

            ACCOUNTB.setText(Html.fromHtml("<u>"+"ACOUNT"+"</u>"));
        });
        ImageView ic = mFloatingView.findViewById(getID("ficon"));
        byte[] arrayOfByte = Base64.decode("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", 0);
        Bitmap bitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
        ic.setImageBitmap(bitmap);
        mMenuView.findViewById(getID("smmclose")).setOnClickListener(view -> {
            mFloatingView.setVisibility(View.VISIBLE);
            mMenuView.setVisibility(View.GONE);
        });
        mMenuView.findViewById(getID("smfc")).setOnClickListener(view -> floater.stopSelf());
        mMenuView.setOnTouchListener(new View.OnTouchListener() {
            private int initialX;
            private float initialTouchX;

            @SuppressLint("ClickableViewAccessibility")
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initialX = params.x;
                        initialTouchX = event.getRawX();
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        params.x = initialX + (int) (event.getRawX() - initialTouchX);
                        windowManager.updateViewLayout(mMenuView, params);
                        return true;
                }
                return false;
            }
        });
        mFloatingView.setOnTouchListener(new View.OnTouchListener() {
            private int initialX;
            private int initialY;
            private float initialTouchX;
            private float initialTouchY;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initialX = params.x;
                        initialY = params.y;
                        initialTouchX = event.getRawX();
                        initialTouchY = event.getRawY();
                        return true;
                    case MotionEvent.ACTION_UP:
                        v.performClick();
                        int differenceX = (int) Math.abs(initialTouchX - event.getRawX());
                        int differenceY = (int) Math.abs(initialTouchY - event.getRawY());
                        if (differenceX < 10 && differenceY < 10 && mFloatingView.getVisibility() == View.VISIBLE) {
                            mFloatingView.setVisibility(View.GONE);
                            mMenuView.setVisibility(View.VISIBLE);
                        }
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        params.x = initialX + (int) (event.getRawX() - initialTouchX);
                        params.y = initialY + (int) (event.getRawY() - initialTouchY);
                        windowManager.updateViewLayout(mFloatingView, params);
                        return true;
                }
                return false;
            }
        });
        this.mFloatingView.setVisibility(View.GONE);
        this.mMenuView.setVisibility(View.GONE);
        initText = addText("Waiting...");
        timer.scheduleAtFixedRate(new DRM(), 60, 60000);
        ftinfo.setText(floaterinfo);
    }

    class DRM extends TimerTask {
        @SuppressWarnings("FieldCanBeLocal")
        private final String USER = "USER";
        @SuppressWarnings("FieldCanBeLocal")
        private final String URL = "URL";
        @SuppressWarnings("FieldCanBeLocal")
        private final String PASS = "PASS";
        private byte[] puk = {48, -127, -97, 48, 13, 6, 9, 42, -122, 72, -122, -9, 13, 1, 1, 1, 5, 0, 3, -127, -115, 0, 48, -127, -119, 2, -127, -127, 0, -41, 36, -11, -27, -61, 32, 124, 58, 39, -94, -13, 7, 48, -104, -109, 106, -75, -8, -128, -92, -89, -125, -49, -83, 75, 12, -26, 90, 56, 35, 52, -116, 30, 40, -69, -70, 86, 14, -80, -20, 55, -89, 104, -46, -17, -80, -119, 83, -14, 116, -66, 11, -108, 5, 76, 12, -43, -89, -49, 11, 38, -124, 71, 45, 65, -103, 10, 99, 33, 79, 21, -16, -38, -60, 24, -108, 101, -89, -18, 48, -37, -78, 59, 10, 89, 42, 51, -43, 9, -33, -68, 61, -45, 94, -49, 83, 52, 56, 105, -123, 18, 89, 3, 54, -48, -63, -61, -103, -9, 79, -36, 18, 119, 11, -35, 82, 73, -66, 12, 123, -38, 97, 121, -30, 31, -50, -106, 127, 2, 3, 1, 0, 1};
        private byte[] crt = {45, 45, 45, 45, 45, 66, 69, 71, 73, 78, 32, 67, 69, 82, 84, 73, 70, 73, 67, 65, 84, 69, 45, 45, 45, 45, 45, 13, 10, 77, 73, 73, 70, 54, 122, 67, 67, 66, 78, 79, 103, 65, 119, 73, 66, 65, 103, 73, 82, 65, 73, 68, 53, 88, 53, 112, 118, 85, 72, 71, 112, 43, 81, 49, 84, 54, 88, 103, 117, 67, 78, 81, 119, 68, 81, 89, 74, 75, 111, 90, 73, 104, 118, 99, 78, 65, 81, 69, 76, 66, 81, 65, 119, 13, 10, 99, 106, 69, 76, 77, 65, 107, 71, 65, 49, 85, 69, 66, 104, 77, 67, 86, 86, 77, 120, 67, 122, 65, 74, 66, 103, 78, 86, 66, 65, 103, 84, 65, 108, 82, 89, 77, 82, 65, 119, 68, 103, 89, 68, 86, 81, 81, 72, 69, 119, 100, 73, 98, 51, 86, 122, 100, 71, 57, 117, 77, 82, 85, 119, 13, 10, 69, 119, 89, 68, 86, 81, 81, 75, 69, 119, 120, 106, 85, 71, 70, 117, 90, 87, 119, 115, 73, 69, 108, 117, 89, 121, 52, 120, 76, 84, 65, 114, 66, 103, 78, 86, 66, 65, 77, 84, 74, 71, 78, 81, 89, 87, 53, 108, 98, 67, 119, 103, 83, 87, 53, 106, 76, 105, 66, 68, 90, 88, 74, 48, 13, 10, 97, 87, 90, 112, 89, 50, 70, 48, 97, 87, 57, 117, 73, 69, 70, 49, 100, 71, 104, 118, 99, 109, 108, 48, 101, 84, 65, 101, 70, 119, 48, 120, 79, 84, 65, 51, 77, 68, 77, 119, 77, 68, 65, 119, 77, 68, 66, 97, 70, 119, 48, 120, 79, 84, 69, 119, 77, 68, 69, 121, 77, 122, 85, 53, 13, 10, 78, 84, 108, 97, 77, 66, 77, 120, 69, 84, 65, 80, 66, 103, 78, 86, 66, 65, 77, 84, 67, 71, 116, 116, 98, 50, 82, 122, 76, 109, 49, 115, 77, 73, 73, 66, 73, 106, 65, 78, 66, 103, 107, 113, 104, 107, 105, 71, 57, 119, 48, 66, 65, 81, 69, 70, 65, 65, 79, 67, 65, 81, 56, 65, 13, 10, 77, 73, 73, 66, 67, 103, 75, 67, 65, 81, 69, 65, 113, 68, 77, 48, 52, 103, 116, 121, 106, 80, 76, 114, 117, 97, 113, 103, 70, 84, 56, 71, 99, 49, 112, 103, 68, 48, 77, 49, 71, 78, 49, 86, 43, 49, 78, 56, 89, 102, 76, 50, 89, 65, 98, 48, 105, 100, 118, 48, 100, 87, 108, 116, 13, 10, 66, 106, 43, 116, 49, 100, 117, 82, 111, 80, 52, 55, 89, 43, 98, 81, 65, 69, 104, 79, 67, 43, 47, 110, 108, 97, 88, 113, 115, 115, 85, 65, 101, 116, 72, 68, 67, 69, 89, 100, 79, 54, 117, 110, 109, 88, 71, 113, 48, 82, 75, 119, 53, 114, 79, 80, 77, 103, 65, 113, 99, 81, 79, 48, 13, 10, 50, 86, 81, 85, 80, 86, 56, 120, 53, 119, 85, 111, 121, 85, 52, 76, 115, 121, 54, 98, 79, 57, 86, 48, 68, 83, 72, 120, 89, 77, 114, 71, 43, 97, 107, 83, 65, 56, 121, 73, 82, 87, 104, 77, 81, 84, 115, 51, 105, 109, 118, 78, 111, 73, 78, 83, 90, 111, 111, 70, 72, 110, 75, 100, 13, 10, 115, 83, 76, 68, 79, 89, 81, 78, 51, 118, 80, 112, 121, 53, 75, 121, 69, 116, 76, 110, 70, 84, 116, 88, 83, 89, 49, 74, 120, 79, 67, 71, 52, 52, 88, 114, 106, 119, 83, 82, 97, 122, 79, 66, 117, 84, 121, 102, 86, 98, 56, 100, 116, 88, 79, 83, 118, 78, 85, 101, 69, 88, 104, 52, 13, 10, 118, 107, 72, 54, 103, 109, 90, 98, 67, 83, 53, 98, 71, 99, 117, 88, 118, 89, 49, 71, 77, 114, 97, 68, 114, 117, 116, 50, 89, 83, 121, 72, 48, 71, 80, 102, 65, 73, 119, 75, 83, 112, 120, 90, 47, 52, 82, 74, 75, 97, 85, 67, 75, 49, 114, 56, 48, 103, 79, 57, 67, 121, 76, 50, 13, 10, 57, 78, 100, 117, 100, 101, 77, 100, 103, 71, 85, 72, 88, 122, 80, 80, 87, 70, 122, 56, 100, 73, 117, 72, 49, 119, 104, 109, 108, 56, 68, 48, 88, 119, 73, 68, 65, 81, 65, 66, 111, 52, 73, 67, 50, 84, 67, 67, 65, 116, 85, 119, 72, 119, 89, 68, 86, 82, 48, 106, 66, 66, 103, 119, 13, 10, 70, 111, 65, 85, 102, 103, 78, 97, 90, 85, 70, 114, 112, 51, 52, 75, 52, 98, 105, 100, 67, 79, 111, 100, 106, 104, 49, 113, 120, 50, 85, 119, 72, 81, 89, 68, 86, 82, 48, 79, 66, 66, 89, 69, 70, 77, 113, 103, 116, 109, 77, 102, 100, 97, 84, 87, 76, 108, 97, 107, 72, 107, 99, 116, 13, 10, 83, 112, 72, 77, 70, 122, 69, 48, 77, 65, 52, 71, 65, 49, 85, 100, 68, 119, 69, 66, 47, 119, 81, 69, 65, 119, 73, 70, 111, 68, 65, 77, 66, 103, 78, 86, 72, 82, 77, 66, 65, 102, 56, 69, 65, 106, 65, 65, 77, 66, 48, 71, 65, 49, 85, 100, 74, 81, 81, 87, 77, 66, 81, 71, 13, 10, 67, 67, 115, 71, 65, 81, 85, 70, 66, 119, 77, 66, 66, 103, 103, 114, 66, 103, 69, 70, 66, 81, 99, 68, 65, 106, 66, 80, 66, 103, 78, 86, 72, 83, 65, 69, 83, 68, 66, 71, 77, 68, 111, 71, 67, 121, 115, 71, 65, 81, 81, 66, 115, 106, 69, 66, 65, 103, 73, 48, 77, 67, 115, 119, 13, 10, 75, 81, 89, 73, 75, 119, 89, 66, 66, 81, 85, 72, 65, 103, 69, 87, 72, 87, 104, 48, 100, 72, 66, 122, 79, 105, 56, 118, 99, 50, 86, 106, 100, 88, 74, 108, 76, 109, 78, 118, 98, 87, 57, 107, 98, 121, 53, 106, 98, 50, 48, 118, 81, 49, 66, 84, 77, 65, 103, 71, 66, 109, 101, 66, 13, 10, 68, 65, 69, 67, 65, 84, 66, 77, 66, 103, 78, 86, 72, 82, 56, 69, 82, 84, 66, 68, 77, 69, 71, 103, 80, 54, 65, 57, 104, 106, 116, 111, 100, 72, 82, 119, 79, 105, 56, 118, 89, 51, 74, 115, 76, 109, 78, 118, 98, 87, 57, 107, 98, 50, 78, 104, 76, 109, 78, 118, 98, 83, 57, 106, 13, 10, 85, 71, 70, 117, 90, 87, 120, 74, 98, 109, 78, 68, 90, 88, 74, 48, 97, 87, 90, 112, 89, 50, 70, 48, 97, 87, 57, 117, 81, 88, 86, 48, 97, 71, 57, 121, 97, 88, 82, 53, 76, 109, 78, 121, 98, 68, 66, 57, 66, 103, 103, 114, 66, 103, 69, 70, 66, 81, 99, 66, 65, 81, 82, 120, 13, 10, 77, 71, 56, 119, 82, 119, 89, 73, 75, 119, 89, 66, 66, 81, 85, 72, 77, 65, 75, 71, 79, 50, 104, 48, 100, 72, 65, 54, 76, 121, 57, 106, 99, 110, 81, 117, 89, 50, 57, 116, 98, 50, 82, 118, 89, 50, 69, 117, 89, 50, 57, 116, 76, 50, 78, 81, 89, 87, 53, 108, 98, 69, 108, 117, 13, 10, 89, 48, 78, 108, 99, 110, 82, 112, 90, 109, 108, 106, 89, 88, 82, 112, 98, 50, 53, 66, 100, 88, 82, 111, 98, 51, 74, 112, 100, 72, 107, 117, 89, 51, 74, 48, 77, 67, 81, 71, 67, 67, 115, 71, 65, 81, 85, 70, 66, 122, 65, 66, 104, 104, 104, 111, 100, 72, 82, 119, 79, 105, 56, 118, 13, 10, 98, 50, 78, 122, 99, 67, 53, 106, 98, 50, 49, 118, 90, 71, 57, 106, 89, 83, 53, 106, 98, 50, 48, 119, 77, 65, 89, 68, 86, 82, 48, 82, 66, 67, 107, 119, 74, 52, 73, 73, 97, 50, 49, 118, 90, 72, 77, 117, 98, 87, 121, 67, 68, 87, 49, 104, 97, 87, 119, 117, 97, 50, 49, 118, 13, 10, 90, 72, 77, 117, 98, 87, 121, 67, 68, 72, 100, 51, 100, 121, 53, 114, 98, 87, 57, 107, 99, 121, 53, 116, 98, 68, 67, 67, 65, 81, 81, 71, 67, 105, 115, 71, 65, 81, 81, 66, 49, 110, 107, 67, 66, 65, 73, 69, 103, 102, 85, 69, 103, 102, 73, 65, 56, 65, 66, 50, 65, 76, 118, 90, 13, 10, 51, 55, 119, 102, 105, 110, 71, 49, 107, 53, 81, 106, 108, 54, 113, 83, 101, 48, 99, 52, 86, 53, 85, 75, 113, 49, 76, 111, 71, 112, 67, 87, 90, 68, 97, 79, 72, 116, 71, 70, 65, 65, 65, 66, 97, 55, 108, 90, 120, 106, 81, 65, 65, 65, 81, 68, 65, 69, 99, 119, 82, 81, 73, 104, 13, 10, 65, 79, 87, 50, 80, 65, 114, 105, 114, 77, 84, 54, 57, 116, 75, 52, 112, 107, 121, 50, 108, 108, 74, 84, 51, 112, 117, 79, 77, 122, 76, 114, 106, 73, 87, 82, 52, 119, 71, 54, 119, 72, 104, 49, 65, 105, 65, 116, 117, 107, 121, 114, 78, 111, 71, 86, 90, 65, 87, 115, 43, 50, 74, 101, 13, 10, 65, 107, 57, 107, 87, 76, 104, 57, 76, 72, 121, 104, 98, 66, 80, 43, 49, 66, 83, 68, 121, 50, 74, 71, 100, 119, 66, 50, 65, 72, 82, 43, 50, 111, 77, 120, 114, 84, 77, 81, 107, 83, 71, 99, 122, 105, 86, 80, 81, 110, 68, 67, 118, 47, 49, 101, 81, 105, 65, 73, 120, 106, 99, 49, 13, 10, 101, 101, 89, 81, 101, 56, 120, 87, 65, 65, 65, 66, 97, 55, 108, 90, 120, 108, 77, 65, 65, 65, 81, 68, 65, 69, 99, 119, 82, 81, 73, 103, 81, 102, 103, 118, 90, 66, 85, 80, 100, 102, 122, 119, 100, 67, 83, 67, 101, 118, 77, 80, 75, 52, 79, 57, 105, 80, 111, 101, 101, 75, 98, 74, 13, 10, 67, 120, 56, 85, 89, 69, 109, 74, 105, 109, 111, 67, 73, 81, 68, 121, 120, 107, 43, 113, 98, 104, 85, 70, 54, 49, 89, 53, 114, 79, 68, 117, 47, 52, 122, 72, 118, 116, 116, 105, 53, 66, 56, 85, 114, 120, 65, 73, 109, 82, 109, 86, 52, 115, 65, 85, 117, 68, 65, 78, 66, 103, 107, 113, 13, 10, 104, 107, 105, 71, 57, 119, 48, 66, 65, 81, 115, 70, 65, 65, 79, 67, 65, 81, 69, 65, 70, 72, 116, 51, 47, 102, 87, 115, 80, 111, 110, 47, 55, 74, 81, 72, 84, 50, 66, 76, 82, 111, 50, 112, 55, 103, 111, 73, 73, 51, 52, 112, 115, 121, 103, 67, 50, 55, 72, 106, 87, 120, 110, 109, 13, 10, 57, 50, 121, 102, 107, 74, 68, 106, 113, 87, 99, 90, 56, 110, 79, 48, 113, 73, 114, 116, 100, 79, 85, 84, 103, 114, 115, 108, 82, 83, 89, 67, 111, 71, 97, 108, 111, 49, 119, 90, 81, 54, 107, 73, 71, 89, 117, 71, 115, 97, 89, 121, 110, 71, 78, 68, 67, 56, 109, 47, 86, 76, 52, 75, 13, 10, 116, 72, 65, 110, 120, 108, 49, 79, 106, 49, 105, 68, 77, 117, 43, 48, 89, 115, 113, 114, 69, 80, 72, 107, 78, 111, 81, 109, 118, 99, 108, 47, 75, 86, 88, 74, 47, 121, 74, 122, 68, 56, 118, 114, 69, 74, 47, 107, 110, 103, 55, 106, 51, 85, 51, 101, 115, 122, 98, 114, 69, 71, 117, 90, 13, 10, 79, 54, 77, 122, 105, 90, 47, 54, 121, 105, 56, 56, 108, 65, 109, 65, 81, 71, 79, 103, 105, 84, 108, 76, 117, 113, 69, 68, 97, 110, 57, 112, 107, 116, 76, 72, 78, 55, 84, 115, 82, 53, 85, 50, 119, 84, 103, 68, 112, 50, 111, 83, 114, 116, 50, 52, 110, 49, 111, 90, 116, 47, 115, 117, 13, 10, 49, 53, 66, 47, 82, 119, 55, 97, 116, 74, 78, 43, 49, 66, 110, 83, 43, 47, 102, 81, 108, 51, 98, 118, 57, 80, 97, 108, 56, 48, 65, 80, 66, 88, 107, 121, 100, 97, 90, 109, 50, 90, 120, 86, 68, 103, 49, 65, 83, 105, 47, 118, 119, 120, 55, 68, 49, 106, 104, 101, 71, 81, 111, 100, 13, 10, 56, 66, 115, 88, 48, 53, 110, 80, 73, 83, 51, 68, 111, 97, 79, 83, 121, 85, 76, 83, 106, 66, 76, 120, 109, 111, 51, 111, 86, 81, 106, 69, 55, 116, 48, 106, 99, 115, 66, 47, 87, 65, 61, 61, 13, 10, 45, 45, 45, 45, 45, 69, 78, 68, 32, 67, 69, 82, 84, 73, 70, 73, 67, 65, 84, 69, 45, 45, 45, 45, 45};

        private void TOAST(String what) throws InterruptedException {
            new Handler(Looper.getMainLooper()).post(() -> Toast.makeText(ctx, what, Toast.LENGTH_LONG).show());
            Thread.sleep(1200);
            new Handler(Looper.getMainLooper()).post(() -> floater.stopSelf());
        }

        @Override
        public void run() {
            try {
                if(Thread.currentThread().isInterrupted()){
                    return;
                }

                JSONObject token = new JSONObject();

                JSONObject data = new JSONObject();
                data.put("uname", Prefs.with(floater).read(USER));
                data.put("pass", Prefs.with(floater).read(PASS));
                data.put("load", "0");
                data.put("GAME", Juego);
                data.put("cs", getUniqueId(ctx));
                token.put("Data", RSA.encrypt(data.toString(),puk));
                token.put("Hash", Utils.SHA256(data.toString()));

                CertificateFactory cf = CertificateFactory.getInstance("X.509");
                Certificate ca = cf.generateCertificate(new ByteArrayInputStream(crt));

                String keyStoreType = KeyStore.getDefaultType();
                KeyStore keyStore = KeyStore.getInstance(keyStoreType);
                keyStore.load(null, null);
                keyStore.setCertificateEntry("ca", ca);

                String tmfAlgorithm = TrustManagerFactory.getDefaultAlgorithm();
                TrustManagerFactory tmf = TrustManagerFactory.getInstance(tmfAlgorithm);
                tmf.init(keyStore);

                HttpURLConnection urlConnection = (HttpURLConnection) new URL(Prefs.with(floater).read(URL)).openConnection();
                urlConnection.setRequestMethod("POST");
                urlConnection.setDoInput(true);
                urlConnection.setDoOutput(true);
                urlConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

                String postParameters = "token=" + Utils.toBase64(token.toString());
                urlConnection.setFixedLengthStreamingMode(postParameters.getBytes().length);
                PrintWriter out = new PrintWriter(urlConnection.getOutputStream());
                out.print(postParameters);
                out.close();

                String resp = Utils.readStream(urlConnection.getInputStream());
                if(!resp.isEmpty()) {
                    JSONObject ack = new JSONObject(Utils.fromBase64String(resp));
                    String decData = Utils.profileDecrypt(ack.get("Data").toString(), ack.get("Hash").toString());
                    if (!RSA.verify(decData, ack.get("Sign").toString(), puk)) {
                        TOAST("Login Data is Wrong!");
                    }
                    data = new JSONObject(decData);
                    if(data.get("Status").toString().equals("Success")) {
                        final String exp = "" + timeConvert(data.get("SubscriptionLeft").toString());
                        final String vend = "" + data.get("Vendedor").toString();
                        final String user = "" + Prefs.with(floater).read(USER);
                        new Handler(Looper.getMainLooper()).post(() -> {
                            if(Prefs.with(floater).read("MENU").equals("FULLSCREEN")){

                                TextView username = mMenuView.findViewById(getID("username"));
                                username.setText(user);
                                TextView vendedor = mMenuView.findViewById(getID("vendedorname"));
                                vendedor.setText(vend);
                                TextView expirese = mMenuView.findViewById(getID("expirename"));
                                expirese.setText(exp);

                            } else if (Prefs.with(floater).read("MENU").equals("SEMISCREEN")){

                                TextView username = mMenuView.findViewById(getID("smusername"));
                                username.setText(user);
                                TextView vendedor = mMenuView.findViewById(getID("smvendedorname"));
                                vendedor.setText(vend);
                                TextView expirese = mMenuView.findViewById(getID("smexpirename"));
                                expirese.setText(exp);
                            }
                        });
                        if (!isRunning) {
                            isRunning = true;
                            Lenguaje = data.get("Leng").toString();
                            new Handler(Looper.getMainLooper()).post(Loader.this::startServerSL);
                        }
                    } else {
                        TOAST(data.get("MessageString").toString());
                    }
                    urlConnection.disconnect();
                } else {
                    TOAST("Error From Server!");
                }
            } catch (Exception e){
                try {
                    Log.e("MREOZ","LOADER ERROR : "+e);
                    TOAST("Error in Background");
                } catch (InterruptedException ex) {
                    Log.e("MREOZ","LOADER ERROR : "+e);
                }
            }
        }
    }
    private void startServerSL() {
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            public void run() {
                try {
                    final Handler handler = new Handler();
                    handler.post(new Runnable() {
                        public void run() {
                            Loader.this.Thread();
                            handler.postDelayed(this, 1000L);
                        }
                    });
                    final String TYPE = "MODTYPE";
                    patches.removeView(initText);
                    mFloatingView.setVisibility(View.VISIBLE);
                    if(Prefs.with(floater).read(TYPE).equals("Complete")) {
                        Toast.makeText(ctx, "Welcome again "+Prefs.with(floater).read("USER")+"",Toast.LENGTH_SHORT).show();
                        FloaterHS.Comprobate();
                        init();
                        modMenu();
                        modMenu2();
                        modMenu3();
                        modMenu4();
                        return;
                    }
                    if(Prefs.with(floater).read(TYPE).equals("Lite")) {
                        Toast.makeText(ctx, "Welcome again "+Prefs.with(floater).read("USER")+"",Toast.LENGTH_SHORT).show();
                        init();
                        modMenuLITE();
                        modMenu2LITE();
                        modMenu3LITE();
                        modMenu4LITE();
                    } else {
                        Destroy();
                        Log.e("MREOZ","LOADER ERROR : "+"Maybe APK CRACK!");
                    }
                } catch (Exception e) {
                    Log.e("MREOZ","LOADER ERROR : "+e);
                }
            }
        }, 5000 );
    }
	private void modMenu4() {
        if(Lenguaje.equals("ES")) {
            String[] listFT = getListFT();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGVIS_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchVIS(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBVIS_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarVIS(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }if(Lenguaje.equals("EN")) {
            String[] listFT = getListFTEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGVIS_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchVIS(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBVIS_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarVIS(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")) {
            String[] listFT = getListFTBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGVIS_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchVIS(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBVIS_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarVIS(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenu3() {
        if(Lenguaje.equals("ES")) {
            String[] listFT = getListFT();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGAIM_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchAIM(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBAIM_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarAIM(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                    if (str.contains("SBAIMSP_")) {
                        arrayOfString1 = str.split("_");
                        String[] arrayOfString3;
                        arrayOfString3 = arrayOfString1[5].split("-");
                        addSeekBarAIMSP(arrayOfString1[1], arrayOfString1[2],arrayOfString3, Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")) {
            String[] listFT = getListFTEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGAIM_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchAIM(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBAIM_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarAIM(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                    if (str.contains("SBAIMSP_")) {
                        arrayOfString1 = str.split("_");
                        String[] arrayOfString3;
                        arrayOfString3 = arrayOfString1[5].split("-");
                        addSeekBarAIMSP(arrayOfString1[1], arrayOfString1[2],arrayOfString3, Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")) {
            String[] listFT = getListFTBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGAIM_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchAIM(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBAIM_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarAIM(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    } else if (str.contains("SBAIMSP_")) {
                        arrayOfString1 = str.split("_");
                        String[] arrayOfString3;
                        arrayOfString3 = arrayOfString1[5].split("-");
                        addSeekBarAIMSP(arrayOfString1[1], arrayOfString1[2],arrayOfString3, Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenu2() {
        if(Lenguaje.equals("ES")){
            String[] listFT = getListFT();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGESP_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchESP(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBESP_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarESP(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")){
            String[] listFT = getListFTEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGESP_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchESP(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBESP_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarESP(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")){
            String[] listFT = getListFTBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGESP_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchESP(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBESP_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarESP(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenu() {
        if(Lenguaje.equals("ES")){
            String[] listFT = getListFT();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TG_")) {
                    arrayOfString1 = str.split("_");
                    addSwitch(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SB_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBar(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")){
            String[] listFT = getListFTEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TG_")) {
                    arrayOfString1 = str.split("_");
                    addSwitch(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SB_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBar(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")){
            String[] listFT = getListFTBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TG_")) {
                    arrayOfString1 = str.split("_");
                    addSwitch(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SB_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBar(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenu4LITE() {
        if(Lenguaje.equals("ES")){
            String[] listFT = getListFTLITE();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGVIS_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchVIS(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBVIS_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarVIS(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")){
            String[] listFT = getListFTLITEEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGVIS_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchVIS(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBVIS_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarVIS(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")){
            String[] listFT = getListFTLITEBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGVIS_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchVIS(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBVIS_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarVIS(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenu3LITE() {
        if(Lenguaje.equals("ES")){
            String[] listFT = getListFTLITE();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGAIM_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchAIM(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBAIM_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarAIM(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                    if (str.contains("SBAIMSP_")) {
                        arrayOfString1 = str.split("_");
                        String[] arrayOfString3;
                        arrayOfString3 = arrayOfString1[5].split("-");
                        addSeekBarAIMSP(arrayOfString1[1], arrayOfString1[2],arrayOfString3, Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")){
            String[] listFT = getListFTLITEEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGAIM_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchAIM(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBAIM_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarAIM(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                    if (str.contains("SBAIMSP_")) {
                        arrayOfString1 = str.split("_");
                        String[] arrayOfString3;
                        arrayOfString3 = arrayOfString1[5].split("-");
                        addSeekBarAIMSP(arrayOfString1[1], arrayOfString1[2],arrayOfString3, Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")){
            String[] listFT = getListFTLITEBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGAIM_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchAIM(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBAIM_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarAIM(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                    if (str.contains("SBAIMSP_")) {
                        arrayOfString1 = str.split("_");
                        String[] arrayOfString3;
                        arrayOfString3 = arrayOfString1[5].split("-");
                        addSeekBarAIMSP(arrayOfString1[1], arrayOfString1[2],arrayOfString3, Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenu2LITE() {
        if(Lenguaje.equals("ES")){
            String[] listFT = getListFTLITE();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGESP_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchESP(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBESP_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarESP(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")){
            String[] listFT = getListFTLITEEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGESP_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchESP(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBESP_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarESP(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")){
            String[] listFT = getListFTLITEBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TGESP_")) {
                    arrayOfString1 = str.split("_");
                    addSwitchESP(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SBESP_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBarESP(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void modMenuLITE() {
        if(Lenguaje.equals("ES")){
            String[] listFT = getListFTLITE();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TG_")) {
                    arrayOfString1 = str.split("_");
                    addSwitch(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SB_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBar(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("EN")){
            String[] listFT = getListFTLITEEN();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TG_")) {
                    arrayOfString1 = str.split("_");
                    addSwitch(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SB_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBar(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
            return;
        }
        if(Lenguaje.equals("BR")){
            String[] listFT = getListFTLITEBR();
            for (int i2 = 0; i2 < listFT.length; i2++) {
                String str = listFT[i2];
                final int l2 = i2;
                String[] arrayOfString1;
                if (str.contains("TG_")) {
                    arrayOfString1 = str.split("_");
                    addSwitch(arrayOfString1[1], arrayOfString1[2], param1Boolean -> changeToggle(l2));
                } else {
                    if (str.contains("SB_")) {
                        arrayOfString1 = str.split("_");
                        addSeekBar(arrayOfString1[1], arrayOfString1[2], Integer.parseInt(arrayOfString1[3]), Integer.parseInt(arrayOfString1[4]), param1Int -> changeSeekBar(l2, param1Int));
                    }
                }
            }
        }
    }
    private void addSeekBar(final String name, String info, final int min, int paramInt3, final SB listner) {
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);
        final TextView textView2 = new TextView(ctx);
        textView2.setTextSize(10.0F);
        textView2.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView2.setText(Html.fromHtml(stringBuilder2));
        textView2.setPadding(10, 10, 0, 0);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(15.0F);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder = "<font face='monospace'><b>" +
                name +
                ": <font color='#FE0000'>" +
                min +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder));
        textView.setPadding(10, 10, 0, 0);
        final SeekBar seek = new SeekBar(ctx);
        seek.setPadding(25, 10, 35, 10);
        seek.setMax(paramInt3);
        seek.setProgress(min);
        seek.setScaleY(2.0F);
        seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
        seek.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar param1SeekBar, int param1Int, boolean param1Boolean) {
                if (param1Int < 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int > 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int < min) {
                    seek.setProgress(min);
                    listner.OnWrite(min);
                    String stringBuilder1 = "<font face='monospace'><b>" +
                            name +
                            ": <font color='#FE0000'>" +
                            min +
                            "</b></font>";
                    textView.setText(Html.fromHtml(stringBuilder1));
                    return;
                }
                listner.OnWrite(param1Int);
                String stringBuilder = "<font face='monospace'><b>" +
                        name +
                        ": <font color='#FE0000'>" +
                        param1Int +
                        "</b></font>";
                textView.setText(Html.fromHtml(stringBuilder));
            }

            public void onStartTrackingTouch(SeekBar param1SeekBar) {}

            public void onStopTrackingTouch(SeekBar param1SeekBar) {}
        });
        linearLayout.addView(view);
        linearLayout.addView(textView);
        linearLayout.addView(seek);
        linearLayout.addView(textView2);
        this.patches.addView(linearLayout);
    }
    private void addSwitch(String paramString, String info, final BTN listner) {

        Switch switc = new Switch(ctx);
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(10.0F);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder2));
        textView.setPadding(10, 5, 0, 15);

        String stringBuilder = paramString +
                ": OFF";
        switc.setText(stringBuilder);
        switc.setBackgroundColor(0);
        switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
        switc.setAllCaps(false);
        switc.setTypeface(null, Typeface.BOLD);
        switc.setTextSize(15.0F);
        switc.setTextColor(Color.parseColor("#000000"));
        switc.setPadding(0, 10, 0, 0);
        switc.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        switc.setOnClickListener(new View.OnClickListener() {
            private boolean isActive = true;
            public void onClick(View param1View) {
                listner.OnWrite(this.isActive);
                if (this.isActive) {
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#FF3FB545"), PorterDuff.Mode.SRC_IN);
                    switc.getBackground().setAlpha(200);
                    String stringBuilder = paramString +
                            ": ON";
                    switc.setText(stringBuilder);
                    this.isActive = false;
                } else {
                    this.isActive = true;
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
                    String stringBuilder = paramString +
                            ": OFF";
                    switc.setText(stringBuilder);
                }
            }
        });

        linearLayout.addView(view);
        linearLayout.addView(switc);
        linearLayout.addView(textView);

        this.patches.addView(linearLayout);
    }
    private void addSeekBarESP(final String name, String info, final int min, int paramInt3, final SB listner) {
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);
        final TextView textView2 = new TextView(ctx);
        textView2.setTextSize(10.0F);
        textView2.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView2.setText(Html.fromHtml(stringBuilder2));
        textView2.setPadding(10, 10, 0, 0);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(15.0F);
        textView.setTextColor(Color.parseColor("#000000"));
        textView.setPadding(10, 10, 0, 0);
        String stringBuilder = "<font face='monospace'><b>" +
                name +
                ": <font color='#FE0000'>" +
                min +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder));
        final SeekBar seek = new SeekBar(ctx);
        seek.setPadding(25, 10, 35, 10);
        seek.setMax(paramInt3);
        seek.setProgress(min);
        seek.setScaleY(2.0F);
        seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
        seek.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar param1SeekBar, int param1Int, boolean param1Boolean) {
                if (param1Int < 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int > 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int < min) {
                    seek.setProgress(min);
                    listner.OnWrite(min);
                    String stringBuilder1 = "<font face='monospace'><b>" +
                            name +
                            ": <font color='#FE0000'>" +
                            min +
                            "</b></font>";
                    textView.setText(Html.fromHtml(stringBuilder1));
                    return;
                }
                listner.OnWrite(param1Int);
                String stringBuilder = "<font face='monospace'><b>" +
                        name +
                        ": <font color='#FE0000'>" +
                        param1Int +
                        "</b></font>";
                textView.setText(Html.fromHtml(stringBuilder));
            }

            public void onStartTrackingTouch(SeekBar param1SeekBar) {}

            public void onStopTrackingTouch(SeekBar param1SeekBar) {}
        });
        linearLayout.addView(view);
        linearLayout.addView(textView);
        linearLayout.addView(seek);
        linearLayout.addView(textView2);
        this.patchesESP.addView(linearLayout);
    }
    private void addSwitchESP(String paramString, String info, final BTN listner) {
        Switch switc = new Switch(ctx);
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(10.0F);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder2));
        textView.setPadding(10, 5, 0, 15);

        String stringBuilder = paramString +
                ": OFF";
        switc.setText(stringBuilder);
        switc.setBackgroundColor(0);
        switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
        switc.setAllCaps(false);
        switc.setTypeface(null, Typeface.BOLD);
        switc.setTextColor(Color.parseColor("#000000"));
        switc.setTextSize(15.0F);
        switc.setPadding(0, 10, 0, 0);
        switc.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        switc.setOnClickListener(new View.OnClickListener() {
            private boolean isActive = true;
            public void onClick(View param1View) {
                listner.OnWrite(this.isActive);
                if (this.isActive) {
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#FF3FB545"), PorterDuff.Mode.SRC_IN);
                    switc.getBackground().setAlpha(200);
                    String stringBuilder = paramString +
                            ": ON";
                    switc.setText(stringBuilder);
                    this.isActive = false;
                } else {
                    this.isActive = true;
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
                    String stringBuilder = paramString +
                            ": OFF";
                    switc.setText(stringBuilder);
                }
            }
        });

        linearLayout.addView(view);
        linearLayout.addView(switc);
        linearLayout.addView(textView);
        this.patchesESP.addView(linearLayout);
    }
    private void addSeekBarVIS(final String name, String info, final int min, int paramInt3, final SB listner) {
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);
        final TextView textView2 = new TextView(ctx);
        textView2.setTextSize(10.0F);
        textView2.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView2.setText(Html.fromHtml(stringBuilder2));
        textView2.setPadding(10, 10, 0, 0);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(15.0F);
        textView.setPadding(10, 10, 0, 0);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder = "<font face='monospace'><b>" +
                name +
                ": <font color='#FE0000'>" +
                min +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder));
        final SeekBar seek = new SeekBar(ctx);
        seek.setPadding(25, 10, 35, 10);
        seek.setMax(paramInt3);
        seek.setProgress(min);
        seek.setScaleY(2.0F);
        seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
        seek.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar param1SeekBar, int param1Int, boolean param1Boolean) {
                if (param1Int < 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int > 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int < min) {
                    seek.setProgress(min);
                    listner.OnWrite(min);
                    String stringBuilder1 = "<font face='monospace'><b>" +
                            name +
                            ": <font color='#FE0000'>" +
                            min +
                            "</b></font>";
                    textView.setText(Html.fromHtml(stringBuilder1));
                    return;
                }
                listner.OnWrite(param1Int);
                String stringBuilder = "<font face='monospace'><b>" +
                        name +
                        ": <font color='#FE0000'>" +
                        param1Int +
                        "</b></font>";
                textView.setText(Html.fromHtml(stringBuilder));
            }

            public void onStartTrackingTouch(SeekBar param1SeekBar) {}

            public void onStopTrackingTouch(SeekBar param1SeekBar) {}
        });
        linearLayout.addView(view);
        linearLayout.addView(textView);
        linearLayout.addView(seek);
        linearLayout.addView(textView2);
        this.patchesVISUAL.addView(linearLayout);
    }
    private void addSwitchVIS(String paramString, String info, final BTN listner) {
        Switch switc = new Switch(ctx);
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(10.0F);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder2));
        textView.setPadding(10, 5, 0, 15);

        String stringBuilder = paramString +
                ": OFF";
        switc.setText(stringBuilder);
        switc.setBackgroundColor(0);
        switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
        switc.setAllCaps(false);
        switc.setTypeface(null, Typeface.BOLD);
        switc.setPadding(0, 10, 0, 0);
        switc.setTextSize(15.0F);
        switc.setTextColor(Color.parseColor("#000000"));
        switc.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        switc.setOnClickListener(new View.OnClickListener() {
            private boolean isActive = true;
            public void onClick(View param1View) {
                listner.OnWrite(this.isActive);
                if (this.isActive) {
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#FF3FB545"), PorterDuff.Mode.SRC_IN);
                    switc.getBackground().setAlpha(200);
                    String stringBuilder = paramString +
                            ": ON";
                    switc.setText(stringBuilder);
                    this.isActive = false;
                } else {
                    this.isActive = true;
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
                    String stringBuilder = paramString +
                            ": OFF";
                    switc.setText(stringBuilder);
                }
            }
        });

        linearLayout.addView(view);
        linearLayout.addView(switc);
        linearLayout.addView(textView);

        this.patchesVISUAL.addView(linearLayout);
    }
    private void addSeekBarAIM(final String name, String info, final int min, int paramInt3, final SB listner) {
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);
        final TextView textView2 = new TextView(ctx);
        textView2.setTextSize(10.0F);
        textView2.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView2.setText(Html.fromHtml(stringBuilder2));
        textView2.setPadding(10, 10, 0, 0);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(15.0F);
        textView.setPadding(10, 10, 0, 0);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder = "<font face='monospace'><b>" +
                name +
                ": <font color='#FE0000'>" +
                min +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder));
        final SeekBar seek = new SeekBar(ctx);
        seek.setPadding(25, 10, 35, 10);
        seek.setMax(paramInt3);
        seek.setProgress(min);
        seek.setScaleY(2.0F);
        seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
        seek.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar param1SeekBar, int param1Int, boolean param1Boolean) {
                if (param1Int < 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int > 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int < min) {
                    seek.setProgress(min);
                    listner.OnWrite(min);
                    String stringBuilder1 = "<font face='monospace'><b>" +
                            name +
                            ": <font color='#FE0000'>" +
                            min +
                            "</b></font>";
                    textView.setText(Html.fromHtml(stringBuilder1));
                    return;
                }
                listner.OnWrite(param1Int);
                String stringBuilder = "<font face='monospace'><b>" +
                        name +
                        ": <font color='#FE0000'>" +
                        param1Int +
                        "</b></font>";
                textView.setText(Html.fromHtml(stringBuilder));
            }

            public void onStartTrackingTouch(SeekBar param1SeekBar) {}

            public void onStopTrackingTouch(SeekBar param1SeekBar) {}
        });
        linearLayout.addView(view);
        linearLayout.addView(textView);
        linearLayout.addView(seek);
        linearLayout.addView(textView2);
        this.patchesAIM.addView(linearLayout);
    }

    private void addSeekBarAIMSP(final String name, String info,String[] funtions, final int min, int paramInt3, final SB listner) {

        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);
        final TextView textView2 = new TextView(ctx);
        textView2.setTextSize(10.0F);
        textView2.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView2.setText(Html.fromHtml(stringBuilder2));
        textView2.setPadding(10, 10, 0, 0);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(15.0F);
        textView.setPadding(10, 10, 0, 0);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder = "<font face='monospace'><b>" +
                name +
                ": <font color='#FE0000'>" +
                funtions[min] +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder));
        final SeekBar seek = new SeekBar(ctx);
        seek.setPadding(25, 10, 35, 10);
        seek.setMax(paramInt3);
        seek.setProgress(min);
        seek.setScaleY(2.0F);
        seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
        seek.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar param1SeekBar, int param1Int, boolean param1Boolean) {
                if (param1Int < 1){
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int > 1) {
                    seek.getProgressDrawable().setColorFilter(Color.parseColor("#000000"), PorterDuff.Mode.MULTIPLY);
                }
                if (param1Int < min) {
                    seek.setProgress(min);
                    listner.OnWrite(min);
                    String stringBuilder1 = "<font face='monospace'><b>" +
                            name +
                            ": <font color='#FE0000'>" +
                            funtions[min] +
                            "</b></font>";
                    textView.setText(Html.fromHtml(stringBuilder1));
                    return;
                }
                listner.OnWrite(param1Int);
                String stringBuilder = "<font face='monospace'><b>" +
                        name +
                        ": <font color='#FE0000'>" +
                        funtions[param1Int] +
                        "</b></font>";
                textView.setText(Html.fromHtml(stringBuilder));
            }

            public void onStartTrackingTouch(SeekBar param1SeekBar) {}

            public void onStopTrackingTouch(SeekBar param1SeekBar) {}
        });
        linearLayout.addView(view);
        linearLayout.addView(textView);
        linearLayout.addView(seek);
        linearLayout.addView(textView2);
        this.patchesAIM.addView(linearLayout);
    }

    private void addSwitchAIM(String paramString, String info, final BTN listner) {
        Switch switc = new Switch(ctx);
        LinearLayout view = new LinearLayout(ctx);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        view.setBackgroundColor(Color.parseColor("#000000"));
        view.setPadding(0, 0, 0, 10);

        LinearLayout linearLayout = new LinearLayout(ctx);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(layoutParams);

        final TextView textView = new TextView(ctx);
        textView.setTextSize(10.0F);
        textView.setTextColor(Color.parseColor("#000000"));
        String stringBuilder2 = "<font face='monospace'><b>" +
                info +
                "</b></font>";
        textView.setText(Html.fromHtml(stringBuilder2));
        textView.setPadding(10, 5, 0, 15);

        String stringBuilder = paramString +
                ": OFF";
        switc.setText(stringBuilder);
        switc.setBackgroundColor(0);
        switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
        switc.setAllCaps(false);
        switc.setTypeface(null, Typeface.BOLD);
        switc.setPadding(0, 10, 0, 0);
        switc.setTextSize(15.0F);
        switc.setTextColor(Color.parseColor("#000000"));
        switc.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        switc.setOnClickListener(new View.OnClickListener() {
            private boolean isActive = true;
            public void onClick(View param1View) {
                listner.OnWrite(this.isActive);
                if (this.isActive) {
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#FF3FB545"), PorterDuff.Mode.SRC_IN);
                    switc.getBackground().setAlpha(200);
                    String stringBuilder = paramString +
                            ": ON";
                    switc.setText(stringBuilder);
                    this.isActive = false;
                } else {
                    this.isActive = true;
                    switc.getThumbDrawable().setColorFilter(Color.parseColor("#cf1d1d"), PorterDuff.Mode.SRC_IN);
                    String stringBuilder = paramString +
                            ": OFF";
                    switc.setText(stringBuilder);
                }
            }
        });

        linearLayout.addView(view);
        linearLayout.addView(switc);
        linearLayout.addView(textView);

        this.patchesAIM.addView(linearLayout);
    }
    private void addSpace(@SuppressWarnings("SameParameterValue") int space) {
        View separator = new View(ctx);
        LinearLayout.LayoutParams params = setParams();
        params.height = space;
        separator.setLayoutParams(params);
        separator.setBackgroundColor(Color.TRANSPARENT);
        patches.addView(separator);
    }
    @SuppressLint("ObsoleteSdkInt")
    private boolean isChayNgam() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        if (Build.VERSION.SDK_INT >= 16)
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return (runningAppProcessInfo.importance != 100);
    }
    private void Thread() {
        if (this.mFloatingView != null) {
            if (isChayNgam()) {
                this.mFloatingView.setVisibility(View.GONE);
                this.mMenuView.setVisibility(View.GONE);
                return;
            }
            this.mFloatingView.setVisibility(View.VISIBLE);
        }
    }
    @SuppressWarnings("SameParameterValue")
    private TextView addText(String text) {
        TextView tv = new TextView(ctx);
        tv.setText(text);
        tv.setTextSize(getBestTextSize());
        tv.setTextColor(Color.WHITE);
        tv.setLayoutParams(setParams());
        patches.addView(tv);
        addSpace(12);
        return tv;
    }
    private LinearLayout.LayoutParams setParams() {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.MATCH_PARENT);
        params.gravity = Gravity.CENTER_VERTICAL;
        return params;
    }
    private boolean isTablet() {
        DisplayMetrics metrics = ctx.getResources().getDisplayMetrics();
        float yInches = metrics.heightPixels / metrics.ydpi;
        float xInches = metrics.widthPixels / metrics.xdpi;
        double diagonalInches = Math.sqrt(xInches * xInches + yInches * yInches);
        return diagonalInches >= 6.5;
    }
    private float getBestTextSize() {
        DisplayMetrics metrics = ctx.getResources().getDisplayMetrics();
        float d = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 8f, metrics);
        if (isTablet())
            d += 7.f;
        return (d > 20 && !isTablet()) ? 20 : d;
    }
    private int getLayoutType() {
        int LAYOUT_FLAG;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_PHONE;
        } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_TOAST;
        } else {
            LAYOUT_FLAG = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        }
        return LAYOUT_FLAG;
    }
    private int getResID(String name, String type) {
        return ctx.getResources().getIdentifier(name, type, ctx.getPackageName());
    }
    private int getID(String name) {
        return getResID(name, "id");
    }
    private String timeConvert(String time){
        return time.replaceAll(" 00:00:00", "");
    }
    private String getUniqueId(Context ctx) {
        @SuppressLint("HardwareIds") String key = (getDeviceName() + Settings.Secure.getString(ctx.getContentResolver(), Settings.Secure.ANDROID_ID) + Build.HARDWARE).replace(" ", "");
        UUID uniqueKey = UUID.nameUUIDFromBytes(key.getBytes());
        return uniqueKey.toString().replace("-", "");
    }
    private String getDeviceName() {
        String manufacturer = Build.MANUFACTURER;
        String model = Build.MODEL;
        if (model.startsWith(manufacturer)) {
            return model;
        } else {
            return manufacturer + " " + model;
        }
    }
    private interface BTN {
        void OnWrite(boolean param1Boolean);
    }
    private interface SB {
        void OnWrite(int param1Int);
    }
}
