.class public final Lc/t/m/g/ea;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static a:Lc/t/m/g/ea;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 9

    const-string v0, "gps"

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 117
    :cond_0
    invoke-static {p0}, Lc/t/m/g/ea;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "wifi"

    .line 121
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_1

    .line 128
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    const/4 v5, 0x0

    :catchall_1
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    :try_start_2
    const-string v7, "location"

    .line 140
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v7, :cond_4

    .line 143
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v8, "location_mode"

    invoke-static {p0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    const/4 p0, 0x0

    .line 148
    :goto_2
    :try_start_4
    invoke-virtual {v7, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    .line 150
    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    move v0, p0

    move v3, v8

    goto :goto_3

    .line 155
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, p0

    move p0, v3

    move v3, v8

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    const/4 v0, 0x0

    goto :goto_4

    :catch_0
    const/4 p0, 0x0

    :catch_1
    move v0, p0

    :goto_3
    const/4 p0, 0x0

    :goto_4
    xor-int/2addr v1, v2

    if-nez v5, :cond_5

    add-int/lit8 v1, v1, 0x2

    :cond_5
    if-nez v3, :cond_6

    add-int/lit8 v1, v1, 0x4

    :cond_6
    if-nez v4, :cond_7

    add-int/lit8 v1, v1, 0x8

    :cond_7
    if-nez p0, :cond_8

    add-int/lit8 v1, v1, 0x10

    :cond_8
    if-nez v6, :cond_9

    add-int/lit8 v1, v1, 0x20

    :cond_9
    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_c

    const/4 p0, 0x2

    if-eq v0, p0, :cond_b

    const/4 p0, 0x3

    if-eq v0, p0, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit16 v1, v1, 0x200

    goto :goto_5

    :cond_b
    add-int/lit16 v1, v1, 0x100

    goto :goto_5

    :cond_c
    add-int/lit16 v1, v1, 0x80

    goto :goto_5

    :cond_d
    add-int/lit8 v1, v1, 0x40

    :goto_5
    return v1
.end method

.method public static a()Lc/t/m/g/ea;
    .locals 1

    .line 23
    sget-object v0, Lc/t/m/g/ea;->a:Lc/t/m/g/ea;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lc/t/m/g/ea;

    invoke-direct {v0}, Lc/t/m/g/ea;-><init>()V

    sput-object v0, Lc/t/m/g/ea;->a:Lc/t/m/g/ea;

    .line 26
    :cond_0
    sget-object v0, Lc/t/m/g/ea;->a:Lc/t/m/g/ea;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method
