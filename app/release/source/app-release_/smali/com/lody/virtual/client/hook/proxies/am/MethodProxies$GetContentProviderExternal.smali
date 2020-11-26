.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProviderExternal;
.super Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetContentProviderExternal"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getContentProviderExternal"

    return-object v0
.end method

.method public getPackageIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getProviderNameIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 209
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetContentProviderExternal;->isAppProcess()Z

    move-result v0

    return v0
.end method
