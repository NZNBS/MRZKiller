.class public Lcom/lody/virtual/client/hook/proxies/mount/MountServiceStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "MountServiceStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/mount/MethodProxies;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/mount/MountServiceStub;->getInterfaceMethod()Lmirror/RefStaticMethod;

    move-result-object v0

    const-string v1, "mount"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method

.method private static getInterfaceMethod()Lmirror/RefStaticMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmirror/RefStaticMethod<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lmirror/android/os/storage/IStorageManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lmirror/android/os/mount/IMountService$Stub;->asInterface:Lmirror/RefStaticMethod;

    return-object v0
.end method
