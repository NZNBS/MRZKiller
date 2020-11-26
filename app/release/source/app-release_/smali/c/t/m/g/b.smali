.class public final Lc/t/m/g/b;
.super Landroid/telephony/PhoneStateListener;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/b$c;,
        Lc/t/m/g/b$b;
    }
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lc/t/m/g/ci;

.field private c:Landroid/telephony/CellLocation;

.field private d:Landroid/telephony/SignalStrength;

.field private e:Landroid/telephony/ServiceState;

.field private f:J

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    .line 32
    iput-object v0, p0, Lc/t/m/g/b;->d:Landroid/telephony/SignalStrength;

    .line 33
    iput-object v0, p0, Lc/t/m/g/b;->e:Landroid/telephony/ServiceState;

    .line 41
    iput-object p1, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    return-void
.end method

.method static synthetic a(Lc/t/m/g/b;)Lc/t/m/g/ci;
    .locals 0

    .line 25
    iget-object p0, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 102
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lc/t/m/g/b;Landroid/telephony/CellLocation;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lc/t/m/g/b;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method private a(Landroid/telephony/CellLocation;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 172
    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 173
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    :catch_0
    nop

    .line 179
    :cond_1
    invoke-static {p1}, Lc/t/m/g/dx;->a(Landroid/telephony/CellLocation;)I

    move-result v1

    if-gez v1, :cond_2

    return v0

    .line 182
    :cond_2
    iget-object v1, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    invoke-static {v1, p1}, Lc/t/m/g/dx;->a(Landroid/telephony/CellLocation;Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 186
    :cond_3
    iget-object v1, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lc/t/m/g/dg;->a(Lc/t/m/g/ci;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dg;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lc/t/m/g/dx;->a(Lc/t/m/g/dg;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method private c()V
    .locals 7

    .line 218
    iget-boolean v0, p0, Lc/t/m/g/b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    if-nez v0, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    iget-wide v2, p0, Lc/t/m/g/b;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 231
    iput-wide v0, p0, Lc/t/m/g/b;->f:J

    .line 232
    iget-object v0, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    iget-object v1, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    iget-object v2, p0, Lc/t/m/g/b;->d:Landroid/telephony/SignalStrength;

    invoke-static {v0, v1, v2}, Lc/t/m/g/dg;->a(Lc/t/m/g/ci;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dg;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc/t/m/g/b;->h:Landroid/os/Handler;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Lc/t/m/g/b$c;

    iget-object v2, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-direct {v1, v2}, Lc/t/m/g/b$c;-><init>(Lc/t/m/g/ci;)V

    invoke-virtual {v1, v0}, Lc/t/m/g/b$c;->a(Lc/t/m/g/dg;)V

    iget-object v0, p0, Lc/t/m/g/b;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 45
    iget-boolean v0, p0, Lc/t/m/g/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lc/t/m/g/b;->a:Z

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CellProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lc/t/m/g/b$b;

    iget-object v1, p0, Lc/t/m/g/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lc/t/m/g/b$b;-><init>(Lc/t/m/g/b;Landroid/os/Looper;B)V

    iput-object v0, p0, Lc/t/m/g/b;->h:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    iget-object v0, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-static {v0}, Lc/t/m/g/dx;->a(Lc/t/m/g/ci;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lc/t/m/g/b;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lc/t/m/g/dg;->a(Lc/t/m/g/ci;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    iput-object v0, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    .line 59
    iget-object v0, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-virtual {v0, v1}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x111

    .line 63
    invoke-direct {p0, v0}, Lc/t/m/g/b;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lc/t/m/g/b;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lc/t/m/g/b;->a:Z

    .line 75
    invoke-direct {p0, v0}, Lc/t/m/g/b;->a(I)V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/b;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iput-object v1, p0, Lc/t/m/g/b;->h:Landroid/os/Handler;

    .line 81
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lc/t/m/g/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 83
    iput-object v1, p0, Lc/t/m/g/b;->g:Landroid/os/HandlerThread;

    .line 84
    iput-object v1, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    iput-object v1, p0, Lc/t/m/g/b;->d:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lc/t/m/g/b;->e:Landroid/telephony/ServiceState;

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lc/t/m/g/b;->f:J

    return-void

    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p0

    throw v0
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 155
    invoke-direct {p0, p1}, Lc/t/m/g/b;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput-object p1, p0, Lc/t/m/g/b;->c:Landroid/telephony/CellLocation;

    .line 160
    invoke-direct {p0}, Lc/t/m/g/b;->c()V

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCellLocationChanged: illegal cell or same cell "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    .line 121
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lc/t/m/g/b;->e:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 128
    :cond_1
    iput-object p1, p0, Lc/t/m/g/b;->e:Landroid/telephony/ServiceState;

    .line 129
    iget-boolean p1, p0, Lc/t/m/g/b;->a:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lc/t/m/g/b;->e:Landroid/telephony/ServiceState;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/t/m/g/b;->e:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    iget-object v2, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-virtual {v2}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    iget-object v3, v3, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-static {v3}, Lc/t/m/g/dx;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v3, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, p1

    :cond_6
    :goto_2
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x32c7

    iput v0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2ee3

    iput v0, p1, Landroid/os/Message;->arg1:I

    iput v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-virtual {v0, p1}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/b;->d:Landroid/telephony/SignalStrength;

    .line 141
    iget-object v1, p0, Lc/t/m/g/b;->b:Lc/t/m/g/ci;

    invoke-virtual {v1}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object v1

    iget v1, v1, Lc/t/m/g/cj;->b:I

    if-eqz v0, :cond_1

    .line 143
    invoke-static {v1, v0, p1}, Lc/t/m/g/dx;->a(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    iput-object p1, p0, Lc/t/m/g/b;->d:Landroid/telephony/SignalStrength;

    .line 145
    invoke-direct {p0}, Lc/t/m/g/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return-void
.end method
