.class public Lcom/lody/virtual/client/hook/proxies/connectivity/ConnectivityStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "ConnectivityStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    sget-object v0, Lmirror/android/net/IConnectivityManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "connectivity"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    return-void
.end method
