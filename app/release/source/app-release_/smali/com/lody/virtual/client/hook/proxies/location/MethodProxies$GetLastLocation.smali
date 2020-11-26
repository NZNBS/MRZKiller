.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastLocation;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetLastLocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "getLastLocation"

    .line 110
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 116
    aget-object v0, p3, v0

    check-cast v0, Landroid/location/LocationRequest;

    .line 117
    invoke-static {v0}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;->access$000(Landroid/location/LocationRequest;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastLocation;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getLocation()Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/lody/virtual/remote/vloc/VLocation;->toSysLocation()Landroid/location/Location;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
