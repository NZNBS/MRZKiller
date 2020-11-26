.class public Lcom/tencent/mapsdk/raster/model/LatLngBounds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;
    }
.end annotation


# instance fields
.field private mVersionCode:I

.field private northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

.field private southwest:Lcom/tencent/mapsdk/raster/model/LatLng;


# direct methods
.method constructor <init>(ILcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    move-result-object p2

    new-instance p3, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-static {p2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->access$000(Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;)D

    move-result-wide v0

    invoke-static {p2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->access$100(Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;)D

    move-result-wide v2

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    iput-object p3, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    new-instance p3, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-static {p2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->access$200(Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;)D

    move-result-wide v0

    invoke-static {p2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->access$300(Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;)D

    move-result-wide v2

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    iput-object p3, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;-><init>(ILcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)V

    return-void
.end method

.method static synthetic access$400(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->longitudeDistanceHeadingWest(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->longitudeDistanceHeadingEast(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static builder()Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;
    .locals 1

    new-instance v0, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method private containsLatitude(D)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private containsLongitude(D)Z
    .locals 7

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v0

    cmpg-double v2, v0, p1

    if-gtz v6, :cond_1

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return v5

    :cond_0
    return v4

    :cond_1
    if-lez v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v5
.end method

.method private intersect(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v1

    iget-object v3, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v3

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v5

    add-double/2addr v3, v5

    iget-object v5, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    iget-object v5, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v5

    iget-object v7, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v7

    add-double/2addr v5, v7

    iget-object v7, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    iget-object v7, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    iget-object v7, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v7

    iget-object v9, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v9}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    iget-object v9, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v9}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v9

    add-double/2addr v7, v9

    iget-object p1, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p1, v1, v7

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private static longitudeDistanceHeadingEast(DD)D
    .locals 0

    sub-double/2addr p2, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    add-double/2addr p2, p0

    rem-double/2addr p2, p0

    return-wide p2
.end method

.method private static longitudeDistanceHeadingWest(DD)D
    .locals 0

    sub-double/2addr p0, p2

    const-wide p2, 0x4076800000000000L    # 360.0

    add-double/2addr p0, p2

    rem-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public contains(Lcom/tencent/mapsdk/raster/model/LatLng;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->containsLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->containsLongitude(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {p0, v1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->contains(Lcom/tencent/mapsdk/raster/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->contains(Lcom/tencent/mapsdk/raster/model/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v3, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v1, v3}, Lcom/tencent/mapsdk/raster/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object p1, p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v1, p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    return-object v0
.end method

.method public getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->mVersionCode:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public including(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds;
    .locals 14

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v6}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->containsLongitude(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v6, v7, v8, v9}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->longitudeDistanceHeadingWest(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v8, v9}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->longitudeDistanceHeadingEast(DD)D

    move-result-wide v12

    cmpg-double p1, v10, v12

    if-gez p1, :cond_0

    move-wide v6, v8

    goto :goto_0

    :cond_0
    move-wide v4, v8

    :cond_1
    :goto_0
    new-instance p1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    new-instance v8, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-direct {v8, v0, v1, v6, v7}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    invoke-direct {p1, v8, v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;-><init>(Lcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)V

    return-object p1
.end method

.method public intersects(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->intersect(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p1, p0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->intersect(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->southwest:Lcom/tencent/mapsdk/raster/model/LatLng;

    const-string v2, "southwest"

    invoke-static {v2, v1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->northeast:Lcom/tencent/mapsdk/raster/model/LatLng;

    const-string v2, "northeast"

    invoke-static {v2, v1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
