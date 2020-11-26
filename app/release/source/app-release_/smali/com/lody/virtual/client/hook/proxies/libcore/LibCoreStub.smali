.class public Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;
.super Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;
.source "LibCoreStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/libcore/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/MethodInvocationProxy<",
        "Lcom/lody/virtual/client/hook/base/MethodInvocationStub<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->getOs()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    return-void
.end method

.method private static getOs()Ljava/lang/Object;
    .locals 2

    .line 22
    sget-object v0, Lmirror/libcore/io/Libcore;->os:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    .line 23
    sget-object v1, Lmirror/libcore/io/ForwardingOs;->os:Lmirror/RefObject;

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lmirror/libcore/io/ForwardingOs;->os:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    sget-object v0, Lmirror/libcore/io/Libcore;->os:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .line 49
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->getOs()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindMethods()V
    .locals 4

    .line 34
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->onBindMethods()V

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;

    const-string v1, "chown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;

    const-string v1, "fchown"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;

    const-string v1, "getpwuid"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;

    const-string v1, "lchown"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;

    const-string v1, "setuid"

    invoke-direct {v0, v1, v3}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
