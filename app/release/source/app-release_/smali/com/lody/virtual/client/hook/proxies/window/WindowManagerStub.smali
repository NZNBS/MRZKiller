.class public Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "WindowManagerStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/window/MethodProxies;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    sget-object v0, Lmirror/android/view/IWindowManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "window"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 27
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->inject()V

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 29
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lmirror/RefStaticObject;

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lmirror/android/view/WindowManagerGlobal;->sWindowManagerService:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lmirror/android/view/Display;->sWindowManager:Lmirror/RefStaticObject;

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lmirror/android/view/Display;->sWindowManager:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lmirror/com/android/internal/policy/PhoneWindow;->TYPE:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 38
    sget-object v0, Lmirror/com/android/internal/policy/PhoneWindow;->sWindowManager:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onBindMethods()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;

    const-string v1, "addAppToken"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;

    const-string v1, "setScreenCaptureDisabled"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
