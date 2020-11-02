.class final Lc/t/m/g/co;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:Lcom/tencent/map/geolocation/TencentGeofence;

.field final b:Landroid/location/Location;

.field public final c:J

.field public final d:Landroid/app/PendingIntent;

.field e:I

.field f:D

.field g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/map/geolocation/TencentGeofence;JLandroid/app/PendingIntent;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lc/t/m/g/co;->e:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 52
    iput-wide v0, p0, Lc/t/m/g/co;->f:D

    .line 54
    iput-object p1, p0, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    .line 55
    iput-wide p2, p0, Lc/t/m/g/co;->c:J

    .line 56
    iput-object p4, p0, Lc/t/m/g/co;->d:Landroid/app/PendingIntent;

    .line 59
    new-instance p2, Landroid/location/Location;

    const-string p3, ""

    invoke-direct {p2, p3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lc/t/m/g/co;->b:Landroid/location/Location;

    .line 60
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentGeofence;->getLatitude()D

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/location/Location;->setLatitude(D)V

    .line 61
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentGeofence;->getLongitude()D

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    const-wide/16 p3, 0x0

    .line 62
    invoke-virtual {p2, p3, p4}, Landroid/location/Location;->setTime(J)V

    const p1, -0x457ced91    # -0.001f

    .line 63
    invoke-virtual {p2, p1}, Landroid/location/Location;->setSpeed(F)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    .line 153
    iget-object v0, p0, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const v1, -0x457ced91    # -0.001f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    return v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 171
    iget v0, p0, Lc/t/m/g/co;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    const-string v0, "OUT"

    goto :goto_0

    :cond_1
    const-string v0, "IN"

    .line 181
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    .line 182
    invoke-virtual {v6}, Lcom/tencent/map/geolocation/TencentGeofence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-wide v5, p0, Lc/t/m/g/co;->f:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lc/t/m/g/co;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v0, "%s dist=%5gm speed=%.2fm/s state=%s"

    .line 181
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
