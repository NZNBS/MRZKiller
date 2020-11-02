.class public Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.super Ljava/lang/Object;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$locationCallbackFinished;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$getProviderProperties;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RegisterGnssStatusCallback;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$UnregisterGnssStatusCallback;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$sendExtraCommand;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RemoveGpsStatusListener;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetBestProvider;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$getAllProviders;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$IsProviderEnabled;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$getProviders;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastKnownLocation;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastLocation;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RemoveUpdates;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RequestLocationUpdates;,
        Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$AddGpsStatusListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/location/LocationRequest;)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;->fixLocationRequest(Landroid/location/LocationRequest;)V

    return-void
.end method

.method private static fixLocationRequest(Landroid/location/LocationRequest;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 28
    sget-object v0, Lmirror/android/location/LocationRequestL;->mHideFromAppOps:Lmirror/RefBoolean;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lmirror/android/location/LocationRequestL;->mHideFromAppOps:Lmirror/RefBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmirror/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 31
    :cond_0
    sget-object v0, Lmirror/android/location/LocationRequestL;->mWorkSource:Lmirror/RefObject;

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lmirror/android/location/LocationRequestL;->mWorkSource:Lmirror/RefObject;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
