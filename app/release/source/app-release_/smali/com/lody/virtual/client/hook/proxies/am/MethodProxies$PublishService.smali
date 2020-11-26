.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$PublishService;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublishService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 961
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

    .line 970
    aget-object v1, p3, v0

    check-cast v1, Landroid/os/IBinder;

    .line 971
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->isVAServiceToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 972
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 974
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/Intent;

    const/4 p2, 0x2

    .line 975
    aget-object p2, p3, p2

    check-cast p2, Landroid/os/IBinder;

    .line 976
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p3

    invoke-virtual {p3, v1, p1, p2}, Lcom/lody/virtual/client/ipc/VActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "publishService"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 982
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$PublishService;->isAppProcess()Z

    move-result v0

    return v0
.end method
