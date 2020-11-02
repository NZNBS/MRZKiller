.class public Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ReplaceLastPkgMethodProxy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    .line 19
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
