.class public Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;
.super Ljava/util/TimerTask;
.source "GPSListenerThread.java"


# static fields
.field private static INSTANCE:Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isRunning:Z

.field private listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->INSTANCE:Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->isRunning:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->listeners:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;Ljava/util/Map;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyLocation(Ljava/util/Map;)V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;
    .locals 1

    .line 156
    sget-object v0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->INSTANCE:Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    return-object v0
.end method

.method private notifyGPSStatus(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {v0}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeSvStatusChanged(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyLocation(Ljava/util/Map;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 50
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getLocation()Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/lody/virtual/remote/vloc/VLocation;->toSysLocation()Landroid/location/Location;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 60
    :try_start_1
    sget-object v2, Lmirror/android/location/LocationManager$ListenerTransport;->onLocationChanged:Lmirror/RefMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 62
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private notifyMNmeaListener(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeNmeaReceived(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListenerTransport(Ljava/lang/Object;)V
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->listeners:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-boolean p1, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->isRunning:Z

    if-nez p1, :cond_1

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean p1, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->isRunning:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->isRunning:Z

    .line 97
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 99
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeListenerTransport(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 111
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 120
    sget-object v2, Lmirror/android/location/LocationManager;->mGnssNmeaListeners:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 121
    sget-object v3, Lmirror/android/location/LocationManager;->mGnssStatusListeners:Lmirror/RefObject;

    invoke-virtual {v3, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyGPSStatus(Ljava/util/Map;)V

    .line 122
    invoke-direct {p0, v2}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyMNmeaListener(Ljava/util/Map;)V

    .line 123
    sget-object v2, Lmirror/android/location/LocationManager;->mGpsStatusListeners:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 124
    invoke-direct {p0, v2}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyGPSStatus(Ljava/util/Map;)V

    .line 125
    sget-object v3, Lmirror/android/location/LocationManager;->mGpsNmeaListeners:Lmirror/RefObject;

    invoke-virtual {v3, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyMNmeaListener(Ljava/util/Map;)V

    goto :goto_1

    .line 127
    :cond_2
    sget-object v2, Lmirror/android/location/LocationManager;->mGpsStatusListeners:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 128
    invoke-direct {p0, v2}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyGPSStatus(Ljava/util/Map;)V

    .line 129
    sget-object v3, Lmirror/android/location/LocationManager;->mNmeaListeners:Lmirror/RefObject;

    invoke-virtual {v3, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyMNmeaListener(Ljava/util/Map;)V

    .line 131
    :goto_1
    sget-object v3, Lmirror/android/location/LocationManager;->mListeners:Lmirror/RefObject;

    invoke-virtual {v3, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_4

    .line 133
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 141
    :cond_3
    invoke-direct {p0, v1}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->notifyLocation(Ljava/util/Map;)V

    goto :goto_0

    .line 135
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;

    invoke-direct {v3, p0, v1}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;-><init>(Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;Ljava/util/Map;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public stop()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
