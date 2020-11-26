.class public Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ReplaceUidMethodProxy.java"


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    .line 10
    iput p2, p0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;->index:I

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 15
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;->index:I

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 16
    invoke-static {}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;->getVUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;->getBaseVUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 17
    :cond_0
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;->index:I

    invoke-static {}, Lcom/lody/virtual/client/hook/base/ReplaceUidMethodProxy;->getRealUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 19
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
