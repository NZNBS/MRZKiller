.class Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "AppOpsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseMethodProxy"
.end annotation


# instance fields
.field final pkgIndex:I

.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;

.field final uidIndex:I


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;Ljava/lang/String;II)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->this$0:Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;

    .line 61
    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    .line 62
    iput p4, p0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->pkgIndex:I

    .line 63
    iput p3, p0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->uidIndex:I

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .line 68
    iget p1, p0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->pkgIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    array-length v0, p3

    if-le v0, p1, :cond_0

    aget-object v0, p3, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    .line 71
    :cond_0
    iget p1, p0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->uidIndex:I

    if-eq p1, p2, :cond_1

    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 72
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$BaseMethodProxy;->getRealUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
