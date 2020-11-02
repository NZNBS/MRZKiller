.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$UnbindFinished;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnbindFinished"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 804
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

    const/4 p1, 0x0

    .line 813
    aget-object p2, p3, p1

    check-cast p2, Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 814
    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x2

    .line 815
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 816
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3}, Lcom/lody/virtual/client/ipc/VActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 817
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "unbindFinished"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 822
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$UnbindFinished;->isAppProcess()Z

    move-result v0

    return v0
.end method
