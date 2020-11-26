.class Lcom/lody/virtual/client/hook/proxies/view/AutoFillManagerStub$ReplacePkgAndComponentProxy;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "AutoFillManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/view/AutoFillManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReplacePkgAndComponentProxy"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static replaceLastAppComponent([Ljava/lang/Object;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    .line 68
    const-class v0, Landroid/content/ComponentName;

    invoke-static {p0, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfLast([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    aget-object v1, p0, v0

    check-cast v1, Landroid/content/ComponentName;

    .line 71
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    aput-object v2, p0, v0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/view/AutoFillManagerStub$ReplacePkgAndComponentProxy;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/lody/virtual/client/hook/proxies/view/AutoFillManagerStub$ReplacePkgAndComponentProxy;->replaceLastAppComponent([Ljava/lang/Object;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
