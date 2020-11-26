.class public Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;
.super Ljava/lang/Object;
.source "WifiManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPInfo"
.end annotation


# instance fields
.field addr:Ljava/net/InetAddress;

.field intf:Ljava/net/NetworkInterface;

.field ip:Ljava/lang/String;

.field ip_hex:I

.field netmask_hex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
