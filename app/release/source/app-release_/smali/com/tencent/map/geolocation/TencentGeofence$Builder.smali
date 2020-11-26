.class public Lcom/tencent/map/geolocation/TencentGeofence$Builder;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/geolocation/TencentGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:F

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/map/geolocation/TencentGeofence;
    .locals 11

    .line 229
    new-instance v10, Lcom/tencent/map/geolocation/TencentGeofence;

    iget-wide v1, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->a:D

    iget-wide v3, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->b:D

    iget v5, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->c:F

    iget-wide v6, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->d:J

    iget-object v8, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->e:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/tencent/map/geolocation/TencentGeofence;-><init>(DDFJLjava/lang/String;B)V

    return-object v10
.end method

.method public setCircularRegion(DDF)Lcom/tencent/map/geolocation/TencentGeofence$Builder;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-lez v0, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_1

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_0

    .line 189
    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->a:D

    .line 190
    iput-wide p3, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->b:D

    .line 191
    iput p5, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->c:F

    return-object p0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "invalid longitude: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "invalid latitude: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "invalid radius: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpirationDuration(J)Lcom/tencent/map/geolocation/TencentGeofence$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 206
    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->d:J

    return-object p0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTag(Ljava/lang/String;)Lcom/tencent/map/geolocation/TencentGeofence$Builder;
    .locals 1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentGeofence$Builder;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 218
    throw p1
.end method
