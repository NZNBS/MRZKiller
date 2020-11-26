.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetPackageProcessState;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetPackageProcessState"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "getPackageProcessState"

    .line 1762
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method
