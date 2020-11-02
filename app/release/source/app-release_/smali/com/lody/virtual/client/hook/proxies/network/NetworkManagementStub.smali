.class public Lcom/lody/virtual/client/hook/proxies/network/NetworkManagementStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "NetworkManagementStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    sget-object v0, Lmirror/android/os/INetworkManagementService$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "network_management"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 22
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;

    const-string v1, "setUidCleartextNetworkPolicy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/network/NetworkManagementStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
