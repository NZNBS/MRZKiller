package com.mrz;


import android.graphics.Canvas;

public class NativeCalls {

    static {
        System.loadLibrary("MRZ");
    }

    public static native void init();

    public static native String[] getListFT();

    public static native String[] getListFTLITE();

    public static native String[] getListFTEN();

    public static native String[] getListFTLITEEN();

    public static native String[] getListFTBR();

    public static native String[] getListFTLITEBR();

    public static native void changeToggle(int i);

    public static native void changeSeekBar(int id, int value);
	
	public static native void DrawOn(ESPView espView, Canvas canvas);

}
