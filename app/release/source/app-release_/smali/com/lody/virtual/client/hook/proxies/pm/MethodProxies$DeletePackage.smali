.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$DeletePackage;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeletePackage"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 902
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 911
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/String;

    .line 913
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lody/virtual/client/core/VirtualCore;->uninstallPackage(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 914
    aget-object p3, p3, v0

    check-cast p3, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz p3, :cond_0

    const-string v0, "done."

    .line 916
    invoke-interface {p3, p2, p1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :catchall_0
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "deletePackage"

    return-object v0
.end method
