.class public Lcom/lody/virtual/client/hook/proxies/wifi_scanner/WifiScannerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "WifiScannerStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi_scanner/GhostWifiScannerImpl;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/wifi_scanner/GhostWifiScannerImpl;-><init>()V

    const-string v1, "wifiscanner"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
