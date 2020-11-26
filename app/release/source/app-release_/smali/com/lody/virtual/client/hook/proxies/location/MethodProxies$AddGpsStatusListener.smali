.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$AddGpsStatusListener;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddGpsStatusListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "addGpsStatusListener"

    .line 40
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$AddGpsStatusListener;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object p1, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    sget-object p2, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->this$0:Lmirror/RefObject;

    invoke-virtual {p2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 52
    sget-object p3, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onGpsStarted:Lmirror/RefMethod;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object p3, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onFirstFix:Lmirror/RefMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, p1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p3, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->mListener:Lmirror/RefObject;

    invoke-virtual {p3, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 55
    invoke-static {p1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeSvStatusChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeNmeaReceived(Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->get()Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->addListenerTransport(Ljava/lang/Object;)V

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
