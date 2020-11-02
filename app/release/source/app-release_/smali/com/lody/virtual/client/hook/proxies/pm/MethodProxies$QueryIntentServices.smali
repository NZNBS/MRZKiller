.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$QueryIntentServices;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryIntentServices"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 445
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z

    move-result v0

    .line 446
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    .line 447
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p3, v3

    check-cast v4, Landroid/content/Intent;

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    .line 448
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 447
    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/lody/virtual/client/ipc/VPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 449
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_0

    .line 451
    sget-object p2, Lmirror/android/content/pm/ParceledListSlice;->getList:Lmirror/RefMethod;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    .line 454
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 455
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 456
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_2

    .line 457
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_2

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$QueryIntentServices;->isVisiblePackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 458
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz v0, :cond_5

    .line 465
    invoke-static {v1}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "queryIntentServices"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 472
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$QueryIntentServices;->isAppProcess()Z

    move-result v0

    return v0
.end method
