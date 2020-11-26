.class abstract Lcom/lody/virtual/client/hook/proxies/window/MethodProxies$BasePatchSession;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/window/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BasePatchSession"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method private proxySession(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 1

    .line 80
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;

    invoke-direct {v0, p1}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;-><init>(Landroid/os/IInterface;)V

    .line 81
    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 73
    instance-of p2, p1, Landroid/os/IInterface;

    if-eqz p2, :cond_0

    .line 74
    check-cast p1, Landroid/os/IInterface;

    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/window/MethodProxies$BasePatchSession;->proxySession(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
