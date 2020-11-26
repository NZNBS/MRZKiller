.class public Lcom/lody/virtual/client/hook/proxies/media/session/SessionManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "SessionManagerStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    sget-object v0, Lmirror/android/media/session/ISessionManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "media_session"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    const-string v1, "createSession"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/media/session/SessionManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
