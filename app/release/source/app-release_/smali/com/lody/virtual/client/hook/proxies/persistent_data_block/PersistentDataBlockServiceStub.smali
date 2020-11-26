.class public Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "PersistentDataBlockServiceStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    sget-object v0, Lmirror/android/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "persistent_data_block"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 5

    .line 19
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 20
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "write"

    invoke-direct {v0, v2, v1}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 21
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const/4 v1, 0x0

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [B

    const-string v4, "read"

    .line 21
    invoke-direct {v0, v4, v3}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 22
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const-string v3, "wipe"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 23
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const-string v3, "getDataBlockSize"

    invoke-direct {v0, v3, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 24
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const-string v3, "getMaximumDataBlockSize"

    invoke-direct {v0, v3, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    const-string v3, "setOemUnlockEnabled"

    invoke-direct {v0, v3, v2}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 26
    new-instance v0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "getOemUnlockEnabled"

    invoke-direct {v0, v2, v1}, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
