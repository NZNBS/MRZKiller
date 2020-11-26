.class public Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "TelephonyRegistryStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    sget-object v0, Lmirror/com/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "telephony.registry"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 22
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    const-string v1, "listen"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub$1;

    const-string v1, "listenForSubscriber"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub$1;-><init>(Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
