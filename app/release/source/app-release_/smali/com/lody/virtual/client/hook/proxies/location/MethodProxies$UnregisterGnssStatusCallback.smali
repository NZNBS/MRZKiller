.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$UnregisterGnssStatusCallback;
.super Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RemoveGpsStatusListener;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnregisterGnssStatusCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "unregisterGnssStatusCallback"

    .line 244
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RemoveGpsStatusListener;-><init>(Ljava/lang/String;)V

    return-void
.end method
