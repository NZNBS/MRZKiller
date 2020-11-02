.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RequestLocationUpdates;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLocationUpdates"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "requestLocationUpdates"

    .line 69
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

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

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 75
    aget-object v0, p3, v1

    check-cast v0, Landroid/location/LocationRequest;

    .line 76
    invoke-static {v0}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;->access$000(Landroid/location/LocationRequest;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RequestLocationUpdates;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object p1, Lmirror/android/location/LocationManager$ListenerTransport;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    sget-object p2, Lmirror/android/location/LocationManager$ListenerTransport;->this$0:Lmirror/RefObject;

    invoke-virtual {p2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->setGpsStatus(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->get()Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->addListenerTransport(Ljava/lang/Object;)V

    .line 85
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 87
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
