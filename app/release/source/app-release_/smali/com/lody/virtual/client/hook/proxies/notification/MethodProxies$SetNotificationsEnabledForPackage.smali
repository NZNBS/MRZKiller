.class Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$SetNotificationsEnabledForPackage;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetNotificationsEnabledForPackage"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$SetNotificationsEnabledForPackage;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    const-class p1, Ljava/lang/Boolean;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    .line 169
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 170
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object p2

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$SetNotificationsEnabledForPackage;->getAppUserId()I

    move-result p3

    invoke-virtual {p2, v1, p1, p3}, Lcom/lody/virtual/client/ipc/VNotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;ZI)V

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "setNotificationsEnabledForPackage"

    return-object v0
.end method
