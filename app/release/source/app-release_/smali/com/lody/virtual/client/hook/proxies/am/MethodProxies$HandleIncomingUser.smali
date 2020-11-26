.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$HandleIncomingUser;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandleIncomingUser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1157
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

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

    .line 1166
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 1167
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1168
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$HandleIncomingUser;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1170
    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "handleIncomingUser"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1175
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$HandleIncomingUser;->isAppProcess()Z

    move-result v0

    return v0
.end method
