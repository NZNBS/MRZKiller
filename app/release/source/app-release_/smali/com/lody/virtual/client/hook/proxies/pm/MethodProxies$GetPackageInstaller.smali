.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetPackageInstaller"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 264
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    .line 265
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->getPackageInstaller()Lcom/lody/virtual/server/IPackageInstaller;

    move-result-object p2

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;

    invoke-direct {v0, p0, p2}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;-><init>(Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;Lcom/lody/virtual/server/IPackageInstaller;)V

    invoke-static {p3, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getPackageInstaller"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 254
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;->isAppProcess()Z

    move-result v0

    return v0
.end method
