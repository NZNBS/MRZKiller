.class public Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "PowerManagerStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    sget-object v0, Lmirror/android/os/IPowerManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "power"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;->onHandleError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private onHandleError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 26
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$1;

    const-string v1, "acquireWakeLock"

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$1;-><init>(Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$2;

    const-string v1, "acquireWakeLockWithUid"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$2;-><init>(Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "updateWakeLockWorkSource"

    invoke-direct {v0, v2, v1}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
