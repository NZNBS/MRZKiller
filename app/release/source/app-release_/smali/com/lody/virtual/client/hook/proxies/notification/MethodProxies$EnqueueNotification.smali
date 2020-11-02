.class Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotification;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnqueueNotification"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotification;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    const-class v2, Landroid/app/Notification;

    invoke-static {p3, v2}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v2

    .line 36
    const-class v3, Ljava/lang/Integer;

    invoke-static {p3, v3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v3

    .line 37
    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 38
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v5

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotification;->getAppUserId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v1, v7, v6}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationId(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p3, v3

    .line 40
    aget-object v2, p3, v2

    check-cast v2, Landroid/app/Notification;

    .line 41
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v2

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotification;->getAppUserId()I

    move-result v3

    invoke-virtual {v2, v4, v7, v1, v3}, Lcom/lody/virtual/client/ipc/VNotificationManager;->addNotification(ILjava/lang/String;Ljava/lang/String;I)V

    .line 45
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotification;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 46
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "enqueueNotification"

    return-object v0
.end method
