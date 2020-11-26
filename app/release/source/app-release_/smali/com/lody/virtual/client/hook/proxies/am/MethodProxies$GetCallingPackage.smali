.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetCallingPackage;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetCallingPackage"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 612
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

    const/4 p1, 0x0

    .line 621
    aget-object p1, p3, p1

    check-cast p1, Landroid/os/IBinder;

    .line 622
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getCallingPackage"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 627
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetCallingPackage;->isAppProcess()Z

    move-result v0

    return v0
.end method
