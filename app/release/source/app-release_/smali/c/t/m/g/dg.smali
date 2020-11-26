.class public final Lc/t/m/g/dg;
.super Lc/t/m/g/dj;
.source "TL"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lc/t/m/g/dj;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lc/t/m/g/dg;->a:I

    .line 40
    iput v0, p0, Lc/t/m/g/dg;->b:I

    iput v0, p0, Lc/t/m/g/dg;->c:I

    iput v0, p0, Lc/t/m/g/dg;->d:I

    iput v0, p0, Lc/t/m/g/dg;->e:I

    iput v0, p0, Lc/t/m/g/dg;->f:I

    const v0, 0x7fffffff

    .line 41
    iput v0, p0, Lc/t/m/g/dg;->g:I

    iput v0, p0, Lc/t/m/g/dg;->h:I

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dg;->i:J

    return-void
.end method

.method public static a(Landroid/telephony/CellInfo;)Lc/t/m/g/dg;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Lc/t/m/g/dg;

    invoke-direct {v0}, Lc/t/m/g/dg;-><init>()V

    .line 127
    :try_start_0
    instance-of v1, p0, Landroid/telephony/CellInfoCdma;

    const/16 v2, -0x28

    const/16 v3, -0x58

    const/16 v4, -0x6e

    if-eqz v1, :cond_2

    .line 128
    check-cast p0, Landroid/telephony/CellInfoCdma;

    .line 129
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    const/4 v5, 0x2

    .line 130
    iput v5, v0, Lc/t/m/g/dg;->a:I

    .line 131
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->c:I

    .line 132
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->d:I

    .line 133
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->e:I

    .line 134
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->g:I

    .line 135
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dg;->h:I

    .line 136
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result p0

    if-le p0, v4, :cond_1

    if-ge p0, v2, :cond_1

    move v3, p0

    .line 137
    :cond_1
    iput v3, v0, Lc/t/m/g/dg;->f:I

    goto/16 :goto_0

    .line 138
    :cond_2
    instance-of v1, p0, Landroid/telephony/CellInfoGsm;

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 139
    check-cast p0, Landroid/telephony/CellInfoGsm;

    .line 140
    iput v5, v0, Lc/t/m/g/dg;->a:I

    .line 141
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->d:I

    .line 143
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->e:I

    .line 144
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->b:I

    .line 145
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dg;->c:I

    .line 146
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p0

    if-le p0, v4, :cond_3

    if-ge p0, v2, :cond_3

    move v3, p0

    .line 147
    :cond_3
    iput v3, v0, Lc/t/m/g/dg;->f:I

    goto :goto_0

    .line 148
    :cond_4
    instance-of v1, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_6

    .line 149
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    .line 150
    iput v5, v0, Lc/t/m/g/dg;->a:I

    .line 151
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->d:I

    .line 153
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->e:I

    .line 154
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->b:I

    .line 155
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dg;->c:I

    .line 156
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p0

    if-le p0, v4, :cond_5

    if-ge p0, v2, :cond_5

    move v3, p0

    .line 157
    :cond_5
    iput v3, v0, Lc/t/m/g/dg;->f:I

    goto :goto_0

    .line 158
    :cond_6
    instance-of v1, p0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_8

    .line 159
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 160
    iput v5, v0, Lc/t/m/g/dg;->a:I

    .line 161
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->d:I

    .line 163
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->e:I

    .line 164
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v5

    iput v5, v0, Lc/t/m/g/dg;->b:I

    .line 165
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dg;->c:I

    .line 166
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p0

    if-le p0, v4, :cond_7

    if-ge p0, v2, :cond_7

    move v3, p0

    .line 167
    :cond_7
    iput v3, v0, Lc/t/m/g/dg;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :cond_8
    :goto_0
    return-object v0
.end method

.method public static a(Lc/t/m/g/ci;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dg;
    .locals 4

    .line 72
    invoke-virtual {p0}, Lc/t/m/g/ci;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 77
    new-instance v0, Lc/t/m/g/dg;

    invoke-direct {v0}, Lc/t/m/g/dg;-><init>()V

    .line 79
    :try_start_0
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 80
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 81
    iput v3, v0, Lc/t/m/g/dg;->a:I

    .line 82
    invoke-direct {v0, p0}, Lc/t/m/g/dg;->a(Landroid/telephony/TelephonyManager;)V

    .line 83
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->c:I

    .line 84
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->d:I

    .line 85
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->e:I

    .line 86
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->g:I

    .line 87
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->h:I

    if-nez p2, :cond_1

    .line 89
    iput v2, v0, Lc/t/m/g/dg;->f:I

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p0

    .line 92
    iput p0, v0, Lc/t/m/g/dg;->f:I

    goto :goto_0

    .line 95
    :cond_2
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v1, 0x1

    .line 96
    iput v1, v0, Lc/t/m/g/dg;->a:I

    .line 97
    invoke-direct {v0, p0}, Lc/t/m/g/dg;->a(Landroid/telephony/TelephonyManager;)V

    .line 98
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->d:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    iput p0, v0, Lc/t/m/g/dg;->e:I

    if-nez p2, :cond_3

    .line 107
    iput v2, v0, Lc/t/m/g/dg;->f:I

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x71

    .line 110
    iput p0, v0, Lc/t/m/g/dg;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/telephony/TelephonyManager;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 186
    invoke-static {p1, v0}, Lc/t/m/g/dx;->a(Landroid/telephony/TelephonyManager;[I)V

    const/4 p1, 0x0

    .line 187
    aget v1, v0, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ltz v2, :cond_0

    .line 188
    aget p1, v0, p1

    iput p1, p0, Lc/t/m/g/dg;->b:I

    .line 189
    aget p1, v0, v1

    iput p1, p0, Lc/t/m/g/dg;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/dg;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/dg;->j:Ljava/util/List;

    .line 202
    :cond_0
    iget-object v0, p0, Lc/t/m/g/dg;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/dg;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/dg;->j:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lc/t/m/g/dg;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxCellInfo [PhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc/t/m/g/dg;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MCC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LNG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dg;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/t/m/g/dg;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
