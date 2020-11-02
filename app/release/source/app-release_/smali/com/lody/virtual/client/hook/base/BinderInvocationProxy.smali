.class public abstract Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.super Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;
.source "BinderInvocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/client/hook/base/MethodInvocationProxy<",
        "Lcom/lody/virtual/client/hook/base/BinderInvocationStub;",
        ">;"
    }
.end annotation


# instance fields
.field protected mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-direct {v0, p1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;-><init>(Landroid/os/IInterface;)V

    invoke-direct {p0, v0, p2}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    .line 32
    iput-object p2, p0, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    sget-object v1, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {v0, p1, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;-><init>(Ljava/lang/Class;Landroid/os/IBinder;)V

    invoke-direct {p0, v0, p2}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmirror/RefStaticMethod<",
            "Landroid/os/IInterface;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    sget-object v1, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {v0, p1, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;-><init>(Lmirror/RefStaticMethod;Landroid/os/IBinder;)V

    invoke-direct {p0, v0, p2}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    iget-object v1, p0, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->replaceService(Ljava/lang/String;)V

    return-void
.end method

.method public isEnvBad()Z
    .locals 5

    .line 42
    sget-object v0, Lmirror/android/os/ServiceManager;->getService:Lmirror/RefStaticMethod;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->mServiceName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
