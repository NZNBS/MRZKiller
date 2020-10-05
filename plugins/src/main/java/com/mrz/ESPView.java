package com.mrz;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Process;
import android.view.View;
import android.view.WindowManager;

import com.H4X.FloaterHS;

public class ESPView extends View implements Runnable {
    Paint b;

    Context baseContext;

    int c = 0;

    int d = 0;

    long e;

    Paint g;

    Paint h;

    float i;

    Paint j;

    Thread mThread = new Thread(this);

    public ESPView(Context paramContext) {
        super(paramContext, null, 0);
        this.baseContext = paramContext;
        InitializePaints();
        setWillNotDraw(false);
        SetFPS(30);
        setLayerType(2, null);
        setBackgroundColor(0);
        ClearCanvas(new Canvas(), 0);
        this.mThread.start();
    }

    @SuppressWarnings("SameParameterValue")
    private void ClearCanvas(Canvas paramCanvas, int paramInt) { paramCanvas.drawColor(paramInt, PorterDuff.Mode.CLEAR); }

    @SuppressWarnings("unused")
    private void DrawCircle(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
        this.g.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.g.setAlpha(paramInt1);
        this.g.setStrokeWidth(paramFloat1);
        paramCanvas.drawCircle(paramFloat2, paramFloat3, paramFloat4, this.g);
    }

    @SuppressWarnings("unused")
    private void DrawFilledCircle(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, float paramFloat2, float paramFloat3) {
        this.h.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.h.setAlpha(paramInt1);
        paramCanvas.drawCircle(paramFloat1, paramFloat2, paramFloat3, this.h);
    }

    @SuppressWarnings("unused")
    private void DrawFilledRect(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
        this.h.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.h.setAlpha(paramInt1);
        paramCanvas.drawRect(paramFloat1, paramFloat2, paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, this.h);
    }

    @SuppressWarnings("unused")
    private void DrawLine(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5) {
        this.g.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.g.setAlpha(paramInt1);
        this.g.setStrokeWidth(paramFloat1);
        paramCanvas.drawLine(paramFloat2, paramFloat3, paramFloat4, paramFloat5, this.g);
    }

    @SuppressWarnings("unused")
    private void DrawRect(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
        this.g.setStrokeWidth(paramInt5);
        this.g.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.g.setAlpha(paramInt1);
        paramCanvas.drawRect(paramFloat1, paramFloat2, paramFloat1 + paramFloat3, paramFloat2 + paramFloat4, this.g);
    }

    @SuppressWarnings("unused")
    private void DrawRectEx(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
        this.g.setStrokeWidth(paramInt5);
        this.g.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.g.setAlpha(paramInt1);
        paramCanvas.drawRect(paramFloat1, paramFloat2, paramFloat3, paramFloat4, this.g);
    }

    @SuppressWarnings("unused")
    private void DrawText(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString, float paramFloat1, float paramFloat2, float paramFloat3) {
        this.b.setColor(Color.rgb(paramInt2, paramInt3, paramInt4));
        this.b.setAlpha(paramInt1);
        this.b.setTextSize(paramFloat3);
        paramCanvas.drawText(paramString, paramFloat1, paramFloat2, this.b);
    }

    public void InitializePaints() {
        this.g = new Paint();
        this.g.setStyle(Paint.Style.STROKE);
        this.g.setAntiAlias(true);
        this.g.setColor(Color.rgb(0, 0, 0));
        this.h = new Paint();
        this.h.setStyle(Paint.Style.FILL);
        this.h.setAntiAlias(true);
        this.h.setColor(Color.rgb(0, 0, 0));
        Point point = getScreen();
        this.i = (float)(Math.sqrt((point.x * point.y)) / 50.0D);
        this.b = new Paint();
        this.b.setAntiAlias(true);
        this.b.setTypeface(Typeface.MONOSPACE);
        this.b.setColor(Color.rgb(0, 0, 0));
        this.b.setTextAlign(Paint.Align.CENTER);
        this.b.setTextSize(this.i);
        this.b.setStyle(Paint.Style.FILL);
        this.j = new Paint();
        this.j.setAntiAlias(true);
        this.j.setColor(Color.rgb(0, 0, 0));
        this.j.setTextAlign(Paint.Align.CENTER);
        this.j.setTextSize(this.i);
        this.j.setStyle(Paint.Style.STROKE);
        this.j.setStrokeWidth(1.5F);
    }

    public void SetFPS(int paramInt) { this.e = paramInt; }

    public long b() { return 1000L / this.e; }

    @SuppressWarnings("SuspiciousNameCombination")
    @SuppressLint("ObsoleteSdkInt")
    public Point getScreen() {
        Point point = new Point();
        WindowManager windowManager = (WindowManager)this.baseContext.getSystemService(Context.WINDOW_SERVICE);
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealSize(point);
        } else {
            windowManager.getDefaultDisplay().getSize(point);
        }
        if (point.y > point.x)
            point.set(point.y, point.x);
        return point;
    }

    public void onDraw(Canvas paramCanvas) {
        super.onDraw(paramCanvas);
        if (paramCanvas != null && getVisibility() == View.VISIBLE) {
            if (FloaterHS.ESPCheck()) {
                SetFPS(FloaterHS.GetFPS());
                FloaterHS.DrawOn(this, paramCanvas, FloaterHS.GetWIDTH(), FloaterHS.GetHEIGHT());
            }
            if (FloaterHS.AIMCheck())
                FloaterHS.AimOn();
        }
        this.c++;
        if (this.c > this.e)
            this.c = 0;
    }

    public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) { super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4); }

    public void run() {
        Process.setThreadPriority(10);
        while (!this.mThread.isInterrupted()) {
            if (this.c != this.d && getVisibility() == View.VISIBLE) {
                this.d = this.c;
                postInvalidate();
            }
            try {
                Thread.sleep(b());
            } catch (InterruptedException ignored) {}
        }
    }
}
