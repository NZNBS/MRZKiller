.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindIsolatedService;
.super Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BindIsolatedService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 881
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    .line 889
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceLastAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 890
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BindService;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "bindIsolatedService"

    return-object v0
.end method
