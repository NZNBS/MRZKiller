.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RegisterGnssStatusCallback;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegisterGnssStatusCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RegisterGnssStatusCallback;->isFakeLocationEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/MethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 260
    :cond_0
    sget-object p1, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 262
    sget-object p3, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onGnssStarted:Lmirror/RefMethod;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object p3, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Lmirror/RefObject;

    invoke-virtual {p3, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 264
    invoke-static {p1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeSvStatusChanged(Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {p1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->invokeNmeaReceived(Ljava/lang/Object;)V

    .line 268
    :goto_0
    sget-object p3, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onFirstFix:Lmirror/RefMethod;

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p3, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object p3, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->this$0:Lmirror/RefObject;

    invoke-virtual {p3, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 270
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->get()Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->addListenerTransport(Ljava/lang/Object;)V

    .line 272
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "registerGnssStatusCallback"

    return-object v0
.end method
