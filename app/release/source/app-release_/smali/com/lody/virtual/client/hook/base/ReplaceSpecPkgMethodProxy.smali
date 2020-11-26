.class public Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ReplaceSpecPkgMethodProxy.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    .line 15
    iput p2, p0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;->index:I

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    if-eqz p3, :cond_1

    .line 21
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;->index:I

    if-gez v0, :cond_0

    .line 23
    array-length v1, p3

    add-int/2addr v0, v1

    :cond_0
    if-ltz v0, :cond_1

    .line 25
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 26
    invoke-static {}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 29
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
