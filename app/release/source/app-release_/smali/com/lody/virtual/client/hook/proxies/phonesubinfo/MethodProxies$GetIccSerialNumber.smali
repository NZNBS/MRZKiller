.class Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$GetIccSerialNumber;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetIccSerialNumber"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
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

    .line 47
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$GetIccSerialNumber;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->iccId:Ljava/lang/String;

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getIccSerialNumber"

    return-object v0
.end method
