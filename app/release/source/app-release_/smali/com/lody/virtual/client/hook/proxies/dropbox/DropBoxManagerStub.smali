.class public Lcom/lody/virtual/client/hook/proxies/dropbox/DropBoxManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "DropBoxManagerStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    sget-object v0, Lmirror/com/android/internal/os/IDropBoxManagerService$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "dropbox"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 20
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 21
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const-string v1, "getNextEntry"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/dropbox/DropBoxManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
