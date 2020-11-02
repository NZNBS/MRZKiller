.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivities;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartActivities"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 554
    const-class p1, [Landroid/content/Intent;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Landroid/content/Intent;

    .line 555
    const-class p1, [Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Ljava/lang/String;

    .line 557
    const-class p1, Landroid/os/IBinder;

    const/4 p2, 0x2

    invoke-static {p3, p1, p2}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfObject([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 559
    aget-object p1, p3, p1

    check-cast p1, Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    .line 561
    const-class p1, Landroid/os/Bundle;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    .line 562
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/client/ipc/VActivityManager;->startActivities([Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "startActivities"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 567
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivities;->isAppProcess()Z

    move-result v0

    return v0
.end method
