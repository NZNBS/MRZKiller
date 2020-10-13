package com.mrz.activity;

import android.app.Application;
import android.content.Context;
import android.os.Environment;

import com.lody.virtual.client.core.VirtualCore;

import java.io.File;

public class MRZApp extends Application {

    protected void attachBaseContext(Context paramContext) {
        super.attachBaseContext(paramContext);
        try {
            VirtualCore.get().startup(paramContext);
        } catch (Throwable paramConte) {
            paramConte.printStackTrace();
        }
    }
}
