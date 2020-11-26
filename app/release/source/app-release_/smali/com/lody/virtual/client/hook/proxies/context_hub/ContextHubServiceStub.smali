.class public Lcom/lody/virtual/client/hook/proxies/context_hub/ContextHubServiceStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "ContextHubServiceStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    sget-object v0, Lmirror/android/hardware/location/IContextHubService$Stub;->asInterface:Lmirror/RefStaticMethod;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/context_hub/ContextHubServiceStub;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method

.method private static getServiceName()Ljava/lang/String;
    .locals 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "contexthub"

    goto :goto_0

    :cond_0
    const-string v0, "contexthub_service"

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 22
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "registerCallback"

    invoke-direct {v0, v2, v1}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/context_hub/ContextHubServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
