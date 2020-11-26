.class public Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "InputMethodManagerStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/input/MethodProxies;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    sget-object v0, Lmirror/com/android/internal/view/inputmethod/InputMethodManager;->mService:Lmirror/RefObject;

    .line 24
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 22
    invoke-direct {p0, v0, v2}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    sget-object v2, Lmirror/com/android/internal/view/inputmethod/InputMethodManager;->mService:Lmirror/RefObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {v3}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->replaceService(Ljava/lang/String;)V

    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    sget-object v1, Lmirror/com/android/internal/view/inputmethod/InputMethodManager;->mService:Lmirror/RefObject;

    .line 40
    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->getBaseInterface()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
