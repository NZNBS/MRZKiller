.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$SetServiceForeground;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetServiceForeground"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 715
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

    const/4 p1, 0x0

    .line 724
    aget-object p2, p3, p1

    move-object v1, p2

    check-cast v1, Landroid/content/ComponentName;

    const/4 p2, 0x1

    .line 725
    aget-object v0, p3, p2

    move-object v2, v0

    check-cast v2, Landroid/os/IBinder;

    const/4 v0, 0x2

    .line 726
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x3

    .line 727
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/app/Notification;

    const/4 v0, 0x4

    .line 729
    aget-object v5, p3, v0

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 730
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :goto_0
    move v5, p3

    goto :goto_1

    .line 731
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_2

    aget-object v5, p3, v0

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 732
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/2addr p3, p2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown flag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v0

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {v5, p3, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 737
    :goto_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object p3

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$SetServiceForeground;->getAppPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v3, v4, v0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z

    if-eqz v4, :cond_4

    .line 747
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_4

    sget-object p3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "samsung"

    .line 748
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 749
    :cond_3
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$SetServiceForeground;->getHostContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p3, v4, Landroid/app/Notification;->icon:I

    .line 750
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$SetServiceForeground;->getHostPkg()Ljava/lang/String;

    move-result-object p3

    iget v0, v4, Landroid/app/Notification;->icon:I

    invoke-static {p3, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    .line 751
    invoke-static {v4}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, p1

    const-string p3, "setSmallIcon"

    invoke-virtual {v0, p3, p2}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 754
    :cond_4
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/client/ipc/VActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "setServiceForeground"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 760
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$SetServiceForeground;->isAppProcess()Z

    move-result v0

    return v0
.end method
