package com.H4X;

import android.graphics.Canvas;
import android.util.Log;

import com.mrz.ESPView;

public class FloaterHS {
    private static boolean isAimOn;

    private static boolean isESPOn;

    private static int ESP_FPS;

    public static int SCREEN_HEIGHT;

    public static int SCREEN_WIDTH;

    private static native void changeSeekBar(int paramInt1, int paramInt2);

    public static native void changeToggle(int paramInt);


    public static boolean ESPCheck() { return isESPOn; }

    public static native void AimOn();

    private static native String Descrypt(String paramString1, String paramString2);


    public static native void DrawOn(ESPView paramESPView, Canvas paramCanvas, int paramInt1, int paramInt2);

    public static boolean AIMCheck() { return isAimOn; }

    public static int GetFPS() { return ESP_FPS; }

    public static int GetHEIGHT() { return SCREEN_HEIGHT; }

    public static int GetWIDTH() { return SCREEN_WIDTH; }

    static  {

        ESP_FPS = 30;
        isESPOn = false;
        isAimOn = false;
        SCREEN_WIDTH = 0;
        SCREEN_HEIGHT = 0;

    }

    private static native boolean InitCheat();

    public static void Comprobate() {
        verify();
    }

    public static void verify() {
        if(InitCheat()){
            Log.e("MREOZ","Init Susses");
        } else{
            Log.e("MREOZ","Error :(");
        }
    }
}
