package com.mrz.activity;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

import com.mrz.stuff.xPluginManager;

public class Loader extends Service {
    @Override
    public void onCreate() {
        super.onCreate();
        Handler handler = new Handler();
        handler.postDelayed(this::Start,5000);
    }

    private void Start() {
        xPluginManager.Init(this, this);
    }

    @Override
    public void onDestroy() {
        xPluginManager.Destroy();
        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) { return Service.START_NOT_STICKY; }

    public void onTaskRemoved(Intent paramIntent) {
        stopSelf();
        try {
            Thread.sleep(100L);
        } catch (InterruptedException interruptedException) {
            Log.e("MREOZ","Loader ERROR : "+interruptedException);
        }
    }
}
