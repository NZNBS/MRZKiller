.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackagesForUid;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetPackagesForUid"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 742
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 752
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 754
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result p3

    if-ne p1, p3, :cond_0

    .line 755
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackagesForUid;->getBaseVUid()I

    move-result p1

    .line 757
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 758
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/lody/virtual/client/ipc/VPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    .line 761
    new-instance v0, Lcom/lody/virtual/helper/collection/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/collection/ArraySet;-><init>(I)V

    if-eqz p2, :cond_1

    .line 762
    array-length v1, p2

    if-lez v1, :cond_1

    .line 763
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 765
    array-length p2, p1

    if-lez p2, :cond_2

    .line 766
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_3

    .line 768
    array-length p1, p3

    if-lez p1, :cond_3

    .line 769
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 771
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getPackagesForUid"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 776
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackagesForUid;->isAppProcess()Z

    move-result v0

    return v0
.end method
