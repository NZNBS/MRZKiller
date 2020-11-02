.class public Lcom/lody/virtual/client/hook/proxies/graphics/GraphicsStatsStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "GraphicsStatsStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    sget-object v0, Lmirror/android/view/IGraphicsStats$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "graphicsstats"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 20
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 21
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    const-string v1, "requestBufferForProcess"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/graphics/GraphicsStatsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
