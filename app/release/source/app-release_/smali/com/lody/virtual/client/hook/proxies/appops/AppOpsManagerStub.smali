.class public Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "AppOpsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    sget-object v0, Lmirror/com/android/internal/app/IAppOpsService$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "appops"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 7

    .line 31
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "checkOperation"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "noteOperation"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "startOperation"

    const/4 v4, 0x3

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "finishOperation"

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "startWatchingMode"

    const/4 v5, -0x1

    invoke-direct {v0, p0, v1, v5, v2}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "checkPackage"

    const/4 v6, 0x0

    invoke-direct {v0, p0, v1, v6, v2}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "getOpsForPackage"

    invoke-direct {v0, p0, v1, v6, v2}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "setMode"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "checkAudioOperation"

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;

    const-string v1, "setAudioRestriction"

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "resetAllModes"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$1;-><init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
