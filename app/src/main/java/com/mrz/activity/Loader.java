package com.mrz.activity;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;

import com.mrz.stuff.xPluginManager;


public class Loader extends Service {
    private String NAME;
    @Override
    public void onCreate() {
        super.onCreate();
        Handler handler = new Handler();
        handler.postDelayed(this::Start,5000);
    }

    private void Start() {
        if (!NAME.isEmpty()) {
            xPluginManager.Init(this, this, NAME);
            Toast.makeText(this,"Starting " + NAME, Toast.LENGTH_SHORT).show();
        }
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

    public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) { NAME = paramIntent.getStringExtra("NAME"); return Service.START_NOT_STICKY; }

    public void onTaskRemoved(Intent paramIntent) {
        stopSelf();
        try {
            Thread.sleep(100L);
        } catch (InterruptedException interruptedException) {
            Log.e("MREOZ","Loader ERROR : "+interruptedException);
        }
    }
}
