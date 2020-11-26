.class public Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;
.super Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;
.source "ActivityManagerStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$isUserRunning;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/MethodInvocationProxy<",
        "Lcom/lody/virtual/client/hook/base/MethodInvocationStub<",
        "Landroid/os/IInterface;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    sget-object v1, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    return-void
.end method


# virtual methods
.method public inject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lmirror/android/app/ActivityManagerOreo;->IActivityManagerSingleton:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    .line 53
    sget-object v1, Lmirror/android/util/Singleton;->mInstance:Lmirror/RefObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->type()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmirror/android/app/IActivityManager;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 56
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->type()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmirror/android/util/Singleton;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 58
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->gDefault:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v1, Lmirror/android/util/Singleton;->mInstance:Lmirror/RefObject;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :cond_2
    :goto_0
    new-instance v0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getBaseInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;-><init>(Landroid/os/IInterface;)V

    .line 63
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->copyMethodProxies(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    .line 64
    sget-object v1, Lmirror/android/os/ServiceManager;->sCache:Lmirror/RefStaticObject;

    invoke-virtual {v1}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "activity"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isEnvBad()Z
    .locals 3

    .line 147
    sget-object v0, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onBindMethods()V
    .locals 3

    .line 69
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->onBindMethods()V

    .line 70
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$1;

    const-string v1, "navigateUpTo"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$1;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 79
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastUidMethodProxy;

    const-string v1, "checkPermissionWithToken"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastUidMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 80
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$isUserRunning;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$isUserRunning;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 81
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "updateConfiguration"

    invoke-direct {v0, v2, v1}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 82
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    const-string v1, "setAppLockedVerifying"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 83
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$2;

    const-string v1, "checkUriPermission"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$2;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 89
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$3;

    const-string v1, "getRecentTasks"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$3;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 121
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$4;

    const-string v1, "getRunningTasks"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$4;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    :cond_0
    return-void
.end method
