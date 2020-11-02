.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetContentProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1366
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

    .line 1375
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;->getProviderNameIndex()I

    move-result v0

    .line 1376
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 1377
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    .line 1378
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/lody/virtual/client/ipc/VPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 1379
    iget-boolean v4, v1, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v4, :cond_5

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;->isAppPkg(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1380
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/lody/virtual/client/ipc/VActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    return-object v3

    .line 1384
    :cond_0
    invoke-static {v4}, Lcom/lody/virtual/client/stub/VASettings;->getStubAuthority(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v0

    .line 1385
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v3

    .line 1389
    :cond_1
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1390
    sget-object p2, Lmirror/android/content/ContentProviderHolderOreo;->provider:Lmirror/RefObject;

    invoke-virtual {p2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IInterface;

    if-eqz p2, :cond_2

    .line 1392
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IInterface;

    move-result-object p2

    .line 1394
    :cond_2
    sget-object p3, Lmirror/android/content/ContentProviderHolderOreo;->provider:Lmirror/RefObject;

    invoke-virtual {p3, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1395
    sget-object p2, Lmirror/android/content/ContentProviderHolderOreo;->info:Lmirror/RefObject;

    invoke-virtual {p2, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1397
    :cond_3
    sget-object p2, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {p2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IInterface;

    if-eqz p2, :cond_4

    .line 1399
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IInterface;

    move-result-object p2

    .line 1401
    :cond_4
    sget-object p3, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {p3, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1402
    sget-object p2, Lmirror/android/app/IActivityManager$ContentProviderHolder;->info:Lmirror/RefObject;

    invoke-virtual {p2, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p1

    .line 1407
    :cond_5
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1408
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;->getPackageIndex()I

    move-result v0

    if-lez v0, :cond_6

    .line 1409
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1410
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1413
    :cond_6
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1415
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_8

    .line 1416
    sget-object p2, Lmirror/android/content/ContentProviderHolderOreo;->provider:Lmirror/RefObject;

    invoke-virtual {p2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IInterface;

    .line 1417
    sget-object v0, Lmirror/android/content/ContentProviderHolderOreo;->info:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    if-eqz p2, :cond_7

    .line 1419
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p3, v0, p2}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object p2

    .line 1421
    :cond_7
    sget-object p3, Lmirror/android/content/ContentProviderHolderOreo;->provider:Lmirror/RefObject;

    invoke-virtual {p3, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1423
    :cond_8
    sget-object p2, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {p2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IInterface;

    .line 1424
    sget-object v0, Lmirror/android/app/IActivityManager$ContentProviderHolder;->info:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    if-eqz p2, :cond_9

    .line 1426
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p3, v0, p2}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object p2

    .line 1428
    :cond_9
    sget-object p3, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {p3, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p1

    :cond_a
    return-object v3
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getContentProvider"

    return-object v0
.end method

.method public getPackageIndex()I
    .locals 1

    .line 1444
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getProviderNameIndex()I
    .locals 1

    .line 1437
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1452
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;->isAppProcess()Z

    move-result v0

    return v0
.end method
