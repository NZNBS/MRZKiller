.class public Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "ActivityTaskManagerStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    sget-object v0, Lmirror/android/app/IActivityTaskManager$Stub;->TYPE:Ljava/lang/Class;

    const-string v1, "activity_task"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 26
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$1;

    const-string v1, "activityDestroyed"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$1;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$2;

    const-string v1, "activityResumed"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$2;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$3;

    const-string v1, "finishActivity"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$3;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
