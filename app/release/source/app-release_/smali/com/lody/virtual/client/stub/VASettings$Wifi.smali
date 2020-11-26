.class public Lcom/lody/virtual/client/stub/VASettings$Wifi;
.super Ljava/lang/Object;
.source "VASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/VASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wifi"
.end annotation


# static fields
.field public static BSSID:Ljava/lang/String; = "66:55:44:33:22:11"

.field public static DEFAULT_BSSID:Ljava/lang/String; = "66:55:44:33:22:11"

.field public static DEFAULT_MAC:Ljava/lang/String; = "11:22:33:44:55:66"

.field public static DEFAULT_SSID:Ljava/lang/String; = "VirtualApp"

.field public static FAKE_WIFI_STATE:Z = false

.field public static MAC:Ljava/lang/String; = "11:22:33:44:55:66"

.field public static SSID:Ljava/lang/String; = "VirtualApp"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
