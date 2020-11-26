.class Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnqueueNotificationWithTag"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    const-class v2, Landroid/app/Notification;

    invoke-static {p3, v2}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v2

    .line 64
    const-class v3, Ljava/lang/Integer;

    invoke-static {p3, v3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v3

    .line 65
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 66
    :goto_0
    aget-object v7, p3, v3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 67
    aget-object v8, p3, v4

    check-cast v8, Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v9

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;->getAppUserId()I

    move-result v10

    invoke-virtual {v9, v7, v1, v8, v10}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationId(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 70
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v9

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;->getAppUserId()I

    move-result v10

    invoke-virtual {v9, v7, v1, v8, v10}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationTag(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, p3, v3

    .line 72
    aput-object v8, p3, v4

    .line 74
    aget-object v2, p3, v2

    check-cast v2, Landroid/app/Notification;

    .line 75
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v7, v2, v1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 78
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v2

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;->getAppUserId()I

    move-result v3

    invoke-virtual {v2, v7, v8, v1, v3}, Lcom/lody/virtual/client/ipc/VNotificationManager;->addNotification(ILjava/lang/String;Ljava/lang/String;I)V

    .line 79
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_3

    aget-object v0, p3, v6

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 81
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v6

    .line 83
    :cond_3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "enqueueNotificationWithTag"

    return-object v0
.end method
