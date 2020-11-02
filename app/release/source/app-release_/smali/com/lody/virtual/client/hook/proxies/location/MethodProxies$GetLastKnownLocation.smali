.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastKnownLocation;
.super Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastLocation;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetLastKnownLocation"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$GetLastLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getLastKnownLocation"

    return-object v0
.end method
