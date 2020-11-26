.class Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$GetDeviceId;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetDeviceId"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$GetDeviceId;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDeviceId"

    return-object v0
.end method
