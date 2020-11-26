.class public Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ReplaceSequencePkgMethodProxy.java"


# instance fields
.field private sequence:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    .line 17
    iput p2, p0, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;->sequence:I

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .line 22
    iget v0, p0, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;->sequence:I

    invoke-static {p3, v0}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceSequenceAppPkg([Ljava/lang/Object;I)Ljava/lang/String;

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
