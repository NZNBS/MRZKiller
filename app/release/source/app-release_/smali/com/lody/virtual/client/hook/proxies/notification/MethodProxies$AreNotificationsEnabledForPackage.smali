.class Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$AreNotificationsEnabledForPackage;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AreNotificationsEnabledForPackage"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$AreNotificationsEnabledForPackage;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object p1

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$AreNotificationsEnabledForPackage;->getAppUserId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/lody/virtual/client/ipc/VNotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "areNotificationsEnabledForPackage"

    return-object v0
.end method
