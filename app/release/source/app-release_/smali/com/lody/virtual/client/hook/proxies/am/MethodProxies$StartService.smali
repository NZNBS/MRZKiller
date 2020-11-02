.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartService;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 895
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method private isFiltered(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 939
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Y29tLnRlbmNlbnQudGlua2VyLmxpYi5zZXJ2aWMuVGlua2VyUGF0Y2hTZXJ2aWNl"

    .line 940
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 904
    aget-object v1, p3, v0

    check-cast v1, Landroid/os/IInterface;

    const/4 v2, 0x1

    .line 905
    aget-object v2, p3, v2

    check-cast v2, Landroid/content/Intent;

    const/4 v3, 0x2

    .line 906
    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/String;

    .line 907
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 908
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartService;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 910
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 912
    :cond_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v4

    const-string v5, "_VA_|_from_inner_"

    .line 913
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "_VA_|_user_id_"

    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "_VA_|_intent_"

    .line 915
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    goto :goto_0

    .line 917
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartService;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x2710

    .line 918
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 921
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 924
    invoke-direct {p0, v2}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartService;->isFiltered(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 925
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 927
    :cond_3
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/lody/virtual/client/ipc/VActivityManager;->startService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 929
    :cond_4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "startService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 934
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartService;->isAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartService;->isServerProcess()Z

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
