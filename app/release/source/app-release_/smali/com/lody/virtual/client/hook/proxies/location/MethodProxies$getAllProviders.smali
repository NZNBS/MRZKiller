.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$getAllProviders;
.super Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$getProviders;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getAllProviders"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$getProviders;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getAllProviders"

    return-object v0
.end method
