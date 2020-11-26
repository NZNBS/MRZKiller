.class public Lcom/tencent/map/geolocation/TencentGeofence;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/geolocation/TencentGeofence$Builder;
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final c:F

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:J


# direct methods
.method private constructor <init>(DDFJLjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentGeofence;->a:D

    .line 40
    iput-wide p3, p0, Lcom/tencent/map/geolocation/TencentGeofence;->b:D

    .line 41
    iput p5, p0, Lcom/tencent/map/geolocation/TencentGeofence;->c:F

    .line 42
    iput-wide p6, p0, Lcom/tencent/map/geolocation/TencentGeofence;->f:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, p6

    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentGeofence;->d:J

    .line 44
    iput-object p8, p0, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(DDFJLjava/lang/String;B)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/tencent/map/geolocation/TencentGeofence;-><init>(DDFJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 130
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 132
    :cond_2
    check-cast p1, Lcom/tencent/map/geolocation/TencentGeofence;

    .line 133
    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/tencent/map/geolocation/TencentGeofence;->a:D

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 136
    :cond_3
    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/tencent/map/geolocation/TencentGeofence;->b:D

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 140
    iget-object p1, p1, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 142
    :cond_5
    iget-object p1, p1, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->f:J

    return-wide v0
.end method

.method public getExpireAt()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->d:J

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->b:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->c:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 113
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1f

    .line 118
    iget-wide v3, p0, Lcom/tencent/map/geolocation/TencentGeofence;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 120
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 149
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "CIRCLE"

    aput-object v3, v1, v2

    .line 152
    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->c:F

    .line 153
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentGeofence;->d:J

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "TencentGeofence[tag=%s, type=%s, loc=(%.6f, %.6f), radius=%.2fm life=%.2fs]"

    .line 150
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
