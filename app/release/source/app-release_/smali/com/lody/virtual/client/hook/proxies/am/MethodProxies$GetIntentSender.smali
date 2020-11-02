.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetIntentSender"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method private redirectIntentSender(ILjava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 330
    invoke-virtual {p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 341
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, p3, v2}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 343
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;->getHostContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/lody/virtual/client/stub/StubPendingService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, p3, v2}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 335
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;->getHostContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/lody/virtual/client/stub/StubPendingActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 336
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;->getHostContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/lody/virtual/client/stub/StubPendingReceiver;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 354
    :cond_3
    :goto_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result p1

    const-string v2, "_VA_|_user_id_"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_VA_|_intent_"

    .line 355
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_VA_|_creator_"

    .line 356
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "_VA_|_from_inner_"

    .line 357
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 299
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x6

    .line 300
    aget-object v2, p3, v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 301
    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    .line 302
    aget-object v6, p3, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    .line 303
    aget-object v8, p3, v7

    instance-of v8, v8, [Landroid/content/Intent;

    if-eqz v8, :cond_2

    .line 304
    aget-object v7, p3, v7

    check-cast v7, [Landroid/content/Intent;

    check-cast v7, [Landroid/content/Intent;

    const/4 v8, 0x0

    .line 305
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_2

    .line 306
    aget-object v9, v7, v8

    if-eqz v2, :cond_0

    .line 307
    array-length v10, v2

    if-ge v8, v10, :cond_0

    .line 308
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    aget-object v11, v2, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :cond_0
    invoke-direct {p0, v4, v1, v9}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;->redirectIntentSender(ILjava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 312
    aput-object v9, v7, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 316
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v5

    .line 317
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 319
    array-length v2, p3

    sub-int/2addr v2, v0

    aget-object v2, p3, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 320
    array-length v2, p3

    sub-int/2addr v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v2

    .line 322
    :cond_3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 324
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p2

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getIntentSender"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 363
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetIntentSender;->isAppProcess()Z

    move-result v0

    return v0
.end method
