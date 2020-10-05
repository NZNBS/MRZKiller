package com.mrz.activity;

import android.content.Context;

import com.lody.virtual.client.core.VirtualCore;

public class MRZVP extends MRZVPActivity {

    protected void attachBaseContext(Context paramContext) {
        super.attachBaseContext(paramContext);
        try {
            VirtualCore.get().startup(paramContext);
            return;
        } catch (Throwable paramConte) {
            paramConte.printStackTrace();
            return;
        }
    }

}