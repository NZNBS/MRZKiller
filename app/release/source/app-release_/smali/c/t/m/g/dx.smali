.class public final Lc/t/m/g/dx;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/telephony/CellLocation;)I
    .locals 1

    .line 111
    instance-of v0, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_0

    .line 112
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 113
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    return p0

    .line 116
    :cond_0
    :try_start_0
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 117
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lc/t/m/g/ci;)Landroid/telephony/CellLocation;
    .locals 6

    .line 61
    invoke-virtual {p0}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 64
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 69
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/2addr v0, v1

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_1

    .line 74
    :try_start_2
    invoke-static {v2}, Lc/t/m/g/dx;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lc/t/m/g/dx;->a(Landroid/telephony/CellLocation;)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lc/t/m/g/ci;->a:Landroid/content/Context;

    .line 75
    invoke-static {p0}, Lc/t/m/g/dx;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v5, 0x1

    :cond_2
    sput-boolean v5, Lc/t/m/g/dx;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return-object v2

    .line 84
    :catch_1
    sput-boolean v1, Lc/t/m/g/dx;->a:Z

    .line 88
    :cond_4
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/telephony/TelephonyManager;[I)V
    .locals 5

    .line 391
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x3

    .line 402
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, p1, v1

    .line 407
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 410
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :cond_0
    const/16 p0, 0x1cc

    .line 414
    aput p0, p1, v1

    .line 415
    aput v1, p1, v0

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(IIIII)Z
    .locals 3

    .line 314
    invoke-static {p0}, Lc/t/m/g/dx;->b(I)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0xffff

    if-eqz p0, :cond_2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v2, :cond_1

    if-lez p4, :cond_1

    if-gt p4, v2, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    if-lez p3, :cond_6

    if-lt p3, v2, :cond_3

    goto :goto_1

    :cond_3
    const p0, 0xfffffff

    if-eq p4, p0, :cond_6

    const p0, 0x7fffffff

    if-eq p4, p0, :cond_6

    const p0, 0x3040101

    if-eq p4, p0, :cond_6

    if-eq p4, v2, :cond_6

    if-gtz p4, :cond_4

    goto :goto_1

    :cond_4
    if-eq p4, v2, :cond_6

    if-gtz p4, :cond_5

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public static a(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {p0, p1, p2}, Lc/t/m/g/dx;->b(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 352
    invoke-static {p0}, Lc/t/m/g/dx;->a(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 p0, 0x3

    if-le p1, p0, :cond_1

    return v0

    :cond_1
    return v1

    .line 354
    :cond_2
    invoke-static {p0}, Lc/t/m/g/dx;->b(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    if-le p1, p0, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 43
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 44
    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 48
    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v4, :cond_1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return v0
.end method

.method public static a(Landroid/telephony/CellLocation;Landroid/telephony/CellLocation;)Z
    .locals 3

    .line 200
    invoke-static {p0, p1}, Lc/t/m/g/b$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    .line 210
    :cond_1
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 211
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 212
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 213
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 214
    :cond_3
    instance-of v0, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_4

    .line 215
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 216
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 217
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p1

    if-ne p0, p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static a(Lc/t/m/g/dg;)Z
    .locals 4

    .line 288
    invoke-static {p0}, Lc/t/m/g/b$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 291
    :cond_0
    iget v0, p0, Lc/t/m/g/dg;->a:I

    iget v1, p0, Lc/t/m/g/dg;->b:I

    iget v2, p0, Lc/t/m/g/dg;->c:I

    iget v3, p0, Lc/t/m/g/dg;->d:I

    iget p0, p0, Lc/t/m/g/dg;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lc/t/m/g/dx;->a(IIIII)Z

    move-result p0

    return p0
.end method

.method private static b(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)I
    .locals 1

    .line 363
    :try_start_0
    invoke-static {p0}, Lc/t/m/g/dx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 365
    :cond_0
    invoke-static {p0}, Lc/t/m/g/dx;->b(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 366
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p0, p1

    return p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lc/t/m/g/ci;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/t/m/g/ci;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 104
    :catch_0
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/telephony/CellLocation;)Z
    .locals 1

    .line 130
    :try_start_0
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 131
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method
