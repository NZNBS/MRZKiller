.class public Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;
.super Ljava/util/TimerTask;
.source "GPSStatusListenerThread.java"


# static fields
.field private static INSTANCE:Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;


# instance fields
.field private isRunning:Z

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    .line 16
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->INSTANCE:Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->isRunning:Z

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->listeners:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->timer:Ljava/util/Timer;

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;
    .locals 1

    .line 56
    sget-object v0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->INSTANCE:Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;

    return-object v0
.end method


# virtual methods
.method public addListenerTransport(Ljava/lang/Object;)V
    .locals 7

    .line 20
    iget-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->isRunning:Z

    if-nez v0, :cond_1

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->isRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->isRunning:Z

    .line 24
    iget-object v1, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x320

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 26
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->listeners:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeListenerTransport(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeSvStatusChanged(Ljava/lang/Object;)V

    .line 43
    invoke-static {v1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeNmeaReceived(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSStatusListenerThread;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
