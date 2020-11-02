.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$CheckPermission;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckPermission"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1120
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1129
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    .line 1130
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->isWhitePermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "com.google"

    .line 1133
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1136
    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$CheckPermission;->getRealUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1137
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "checkPermission"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1142
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$CheckPermission;->isAppProcess()Z

    move-result v0

    return v0
.end method
