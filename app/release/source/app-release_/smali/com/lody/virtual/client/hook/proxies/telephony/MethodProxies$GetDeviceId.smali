.class Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetDeviceId;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetDeviceId"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "getDeviceId"

    .line 37
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

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

    .line 42
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetDeviceId;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->deviceId:Ljava/lang/String;

    return-object p1
.end method
