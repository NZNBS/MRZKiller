.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BindService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 840
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 849
    aget-object v0, p3, v0

    check-cast v0, Landroid/os/IInterface;

    const/4 v1, 0x1

    .line 850
    aget-object v1, p3, v1

    move-object v4, v1

    check-cast v4, Landroid/os/IBinder;

    const/4 v1, 0x2

    .line 851
    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/content/Intent;

    const/4 v1, 0x3

    .line 852
    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const/4 v1, 0x4

    .line 853
    aget-object v1, p3, v1

    check-cast v1, Landroid/app/IServiceConnection;

    const/4 v2, 0x5

    .line 854
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 855
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    .line 856
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;->isServerProcess()Z

    move-result v3

    const/16 v7, -0x2710

    if-eqz v3, :cond_0

    const-string v2, "_VA_|_user_id_"

    .line 857
    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    move v9, v2

    if-ne v9, v7, :cond_1

    .line 860
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 862
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2, v5, v9}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 864
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    .line 865
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 867
    :cond_2
    invoke-static {v1}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->getDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    move-result-object v7

    .line 868
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v2

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {v2 .. v9}, Lcom/lody/virtual/client/ipc/VActivityManager;->bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 871
    :cond_3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "bindService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 876
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;->isAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
