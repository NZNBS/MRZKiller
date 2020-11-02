.class public Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;
.super Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;
.source "WindowSessionPatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/MethodInvocationProxy<",
        "Lcom/lody/virtual/client/hook/base/MethodInvocationStub<",
        "Landroid/os/IInterface;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-direct {v0, p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    return-void
.end method


# virtual methods
.method public inject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public isEnvBad()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindMethods()V
    .locals 2

    .line 20
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;

    const-string v1, "add"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 21
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;

    const-string v1, "addToDisplay"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 22
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;

    const-string v1, "addToDisplayWithoutInputChannel"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;

    const-string v1, "addWithoutInputChannel"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;

    const-string v1, "relayout"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/window/session/BaseMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/session/WindowSessionPatch;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
