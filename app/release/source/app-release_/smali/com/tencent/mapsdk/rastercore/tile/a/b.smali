.class public Lcom/tencent/mapsdk/rastercore/tile/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mapsdk/rastercore/e/b;


# instance fields
.field private a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

.field private b:Lcom/tencent/mapsdk/raster/model/LatLng;

.field private c:F

.field private d:F

.field private e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

.field private f:F

.field private g:F

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/tencent/mapsdk/rastercore/d/e;

.field private o:Lcom/tencent/mapsdk/rastercore/d/a;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->i:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->e()Lcom/tencent/mapsdk/rastercore/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->o:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getAnchorU()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getAnchorV()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getBearing()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->f:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getWidth()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getHeight()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getImage()Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getLocation()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getBounds()Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getTransparency()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->i:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->isVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h:Z

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;->getZIndex()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g:F

    return-void
.end method

.method public static a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/mapsdk/rastercore/tile/a/b$1;->a:[I

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "customized/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Traffic"

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Sate/V"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "BingGrid/"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->t()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Grid/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 14

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double v2, v2, v6

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    new-instance v4, Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    new-instance v5, Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v6}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v6

    iget v8, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    float-to-double v10, v8

    mul-double v10, v10, v2

    sub-double/2addr v6, v10

    iget-object v8, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v8}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v10

    iget v8, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    float-to-double v12, v8

    mul-double v12, v12, v0

    sub-double/2addr v10, v12

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v7, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v7

    iget v10, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    float-to-double v10, v10

    mul-double v10, v10, v2

    add-double/2addr v7, v10

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v2

    iget v10, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    mul-double v9, v9, v0

    add-double/2addr v2, v9

    invoke-direct {v6, v7, v8, v2, v3}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;-><init>(Lcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)V

    iput-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    return-void
.end method

.method private h()V
    .locals 13

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v1

    new-instance v2, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v3

    iget v5, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    float-to-double v5, v6

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v5

    iget v7, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    float-to-double v7, v7

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v11

    sub-double/2addr v9, v11

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double v2, v2, v6

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double v2, v2, v8

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v1, v8

    mul-double v1, v1, v6

    mul-double v1, v1, v4

    double-to-float v0, v1

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/mapsdk/raster/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    cmpl-float v0, v0, p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g()V

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    iput p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    iput p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    :goto_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/tencent/mapsdk/raster/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    :goto_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    :goto_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    return v0
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->f:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public b(FF)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    iput p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    return v0
.end method

.method public c(F)V
    .locals 1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->i:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public checkInBounds()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/c;->c()Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v0, v3}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->contains(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v3, v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->intersects(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public d()Lcom/tencent/mapsdk/raster/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    return-object v0
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->remove()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    :cond_0
    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GroundOverlayDelegateImp destroy"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->b:Lcom/tencent/mapsdk/raster/model/LatLng;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g()V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->a:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->e:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Landroid/graphics/PointF;

    move-result-object v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->j:F

    mul-float v3, v3, v4

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->k:F

    mul-float v4, v4, v5

    iget v5, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-direct {v5, v6, v7, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->i:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->f:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->m:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_1
    return-void
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->f:F

    return v0
.end method

.method public equalsRemote(Lcom/tencent/mapsdk/rastercore/e/b;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/tencent/mapsdk/rastercore/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->i:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GroundOverlay"

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h:Z

    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->o:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/a/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->h:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->g:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->o:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a;->c()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a/b;->n:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method
