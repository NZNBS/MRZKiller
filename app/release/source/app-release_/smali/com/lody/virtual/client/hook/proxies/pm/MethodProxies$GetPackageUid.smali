.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageUid;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetPackageUid"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 181
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

    const/4 v0, 0x0

    .line 190
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageUid;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    .line 195
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getPackageUid"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 200
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageUid;->isAppProcess()Z

    move-result v0

    return v0
.end method
