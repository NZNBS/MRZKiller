.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$FreeStorageAndNotify;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FreeStorageAndNotify"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 346
    array-length p1, p3

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget-object p1, p3, p1

    instance-of p1, p1, Landroid/content/pm/IPackageDataObserver;

    if-eqz p1, :cond_0

    .line 347
    array-length p1, p3

    sub-int/2addr p1, p2

    aget-object p1, p3, p1

    check-cast p1, Landroid/content/pm/IPackageDataObserver;

    const/4 p3, 0x0

    .line 348
    invoke-interface {p1, p3, p2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x0

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "freeStorageAndNotify"

    return-object v0
.end method
