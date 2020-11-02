.class public Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "DevicePolicyManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub$GetStorageEncryptionStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    sget-object v0, Lmirror/android/app/admin/IDevicePolicyManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "device_policy"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 26
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub$GetStorageEncryptionStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub$GetStorageEncryptionStatus;-><init>(Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
