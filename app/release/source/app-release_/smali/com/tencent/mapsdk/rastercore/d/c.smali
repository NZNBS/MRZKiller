.class public final Lcom/tencent/mapsdk/rastercore/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/tencent/mapsdk/rastercore/b/b;


# instance fields
.field private b:Lcom/tencent/mapsdk/rastercore/d/e;

.field private c:Lcom/tencent/mapsdk/rastercore/d/b;

.field private d:Lcom/tencent/mapsdk/rastercore/b/a;

.field private e:Lcom/tencent/mapsdk/rastercore/b/a;

.field private f:Z

.field private g:Lcom/tencent/mapsdk/rastercore/b/b;

.field private h:D

.field private i:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/mapsdk/rastercore/b/b;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/b/c;

    const-wide v2, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    new-instance v2, Lcom/tencent/mapsdk/rastercore/b/c;

    const-wide v3, 0x41731bf84570a3d7L    # 2.003750834E7

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/b/b;-><init>(Lcom/tencent/mapsdk/rastercore/b/c;Lcom/tencent/mapsdk/rastercore/b/c;)V

    sput-object v0, Lcom/tencent/mapsdk/rastercore/d/c;->a:Lcom/tencent/mapsdk/rastercore/b/b;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->f:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->h:D

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->i:D

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->b:Lcom/tencent/mapsdk/rastercore/d/e;

    return-void
.end method

.method private a(D)D
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    return-wide v0
.end method

.method private a(Z)D
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/c;->c()Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v3

    :goto_0
    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v3

    goto :goto_0
.end method

.method private k()[Lcom/tencent/mapsdk/rastercore/b/c;
    .locals 6

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v5

    invoke-static {v2, v1, v4, v5}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/c;Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v2, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/c;Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/tencent/mapsdk/rastercore/b/c;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2
.end method


# virtual methods
.method public final a(DD)F
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(D)D

    move-result-wide p1

    div-double/2addr p3, p1

    double-to-float p1, p3

    return p1
.end method

.method public final a(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/tencent/mapsdk/rastercore/d/c;->a(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/LatLng;)Landroid/graphics/PointF;
    .locals 9

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v7

    div-double/2addr v3, v7

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v7

    div-double/2addr v5, v7

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iget v0, v1, Landroid/graphics/PointF;->x:F

    float-to-double v7, v0

    add-double/2addr v7, v3

    double-to-float v0, v7

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-object p1
.end method

.method public final a(II)Lcom/tencent/mapsdk/raster/model/LatLng;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/c;Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/rastercore/b/c;)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/a;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/c;->b:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/c;->b:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v2

    iget-object v4, v0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    if-eqz v1, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    goto :goto_1

    :cond_1
    move-wide v12, v8

    :goto_1
    add-double/2addr v4, v12

    cmpg-double v12, v2, v4

    if-gez v12, :cond_2

    new-instance v2, Lcom/tencent/mapsdk/rastercore/b/a;

    iget-object v3, v0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(D)V

    if-eqz v1, :cond_3

    invoke-virtual {v2, v10, v11}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    goto :goto_2

    :cond_2
    move-object/from16 v2, p1

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v3

    iget-object v5, v0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v12

    if-eqz v1, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v8, v5

    :cond_4
    add-double/2addr v12, v8

    cmpl-double v5, v3, v12

    if-lez v5, :cond_5

    new-instance v2, Lcom/tencent/mapsdk/rastercore/b/a;

    iget-object v3, v0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(D)V

    if-eqz v1, :cond_5

    invoke-virtual {v2, v10, v11}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    :cond_5
    return-object v2
.end method

.method public final a()V
    .locals 3

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d/c;->a:Lcom/tencent/mapsdk/rastercore/b/b;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->g:Lcom/tencent/mapsdk/rastercore/b/b;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/b/a;

    const-wide/high16 v1, 0x4033000000000000L    # 19.0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(D)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/b/a;

    sget v1, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(D)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->b:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    return-void
.end method

.method protected final a(I)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->h:D

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/b/c;)V
    .locals 13

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->g:Lcom/tencent/mapsdk/rastercore/b/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/d/c;->k()[Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->g:Lcom/tencent/mapsdk/rastercore/b/b;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/b;->a()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->g:Lcom/tencent/mapsdk/rastercore/b/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v3

    const/4 v5, 0x0

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v3, v6

    if-lez v10, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v3

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v6

    sub-double/2addr v3, v6

    goto :goto_0

    :cond_1
    move-wide v3, v8

    :goto_0
    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v6

    aget-object v10, v0, v5

    invoke-virtual {v10}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v10

    cmpl-double v12, v6, v10

    if-lez v12, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v6

    aget-object v1, v0, v5

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v8

    sub-double v8, v6, v8

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    const/4 v1, 0x1

    aget-object v7, v0, v1

    invoke-virtual {v7}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v10

    cmpg-double v7, v5, v10

    if-gez v7, :cond_3

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    sub-double/2addr v3, v5

    :cond_3
    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v5

    aget-object v7, v0, v1

    invoke-virtual {v7}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v10

    cmpg-double v7, v5, v10

    if-gez v7, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v0

    sub-double v8, v5, v0

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v0

    add-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mapsdk/rastercore/b/c;->a(D)V

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v0

    add-double/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mapsdk/rastercore/b/c;->b(D)V

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/mapsdk/rastercore/d/c;->a:Lcom/tencent/mapsdk/rastercore/b/b;

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->g:Lcom/tencent/mapsdk/rastercore/b/b;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    sget v2, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    int-to-double v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/a;->b(D)V

    iput-boolean v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->f:Z

    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-static {v4}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v4

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v9

    sub-double/2addr v7, v9

    int-to-float v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v9, v9, v10

    int-to-float v10, v3

    div-float/2addr v9, v10

    div-double v10, v5, v7

    double-to-float v10, v10

    const-wide/high16 v11, 0x4033000000000000L    # 19.0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    int-to-double v2, v2

    invoke-static {v11, v12}, Lcom/tencent/mapsdk/rastercore/b/a;->c(D)D

    move-result-wide v7

    mul-double v2, v2, v7

    div-double/2addr v2, v5

    goto :goto_0

    :cond_2
    int-to-double v2, v3

    invoke-static {v11, v12}, Lcom/tencent/mapsdk/rastercore/b/a;->c(D)D

    move-result-wide v5

    mul-double v2, v2, v5

    div-double/2addr v2, v7

    :goto_0
    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Lcom/tencent/mapsdk/rastercore/b/a;->a(I)V

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    float-to-double v5, v2

    invoke-virtual {v3, v5, v6}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/tencent/mapsdk/rastercore/b/a;->b(D)V

    new-instance v2, Lcom/tencent/mapsdk/rastercore/b/b;

    invoke-direct {v2, p1, v4}, Lcom/tencent/mapsdk/rastercore/b/b;-><init>(Lcom/tencent/mapsdk/rastercore/b/c;Lcom/tencent/mapsdk/rastercore/b/c;)V

    iput-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->g:Lcom/tencent/mapsdk/rastercore/b/b;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/c;)V

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->f:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->b:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1, v1, v1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method protected final b(DD)V
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_2

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Z)D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Z)D

    move-result-wide v5

    cmpl-double v7, v2, v0

    if-nez v7, :cond_1

    cmpl-double v7, v5, v0

    if-nez v7, :cond_1

    iput-wide p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->h:D

    iput-wide p3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->i:D

    return-void

    :cond_1
    div-double/2addr p1, v5

    div-double/2addr p3, v2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iget-object p3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p3}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/mapsdk/rastercore/b/a;->b()D

    move-result-wide v0

    mul-double v0, v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    invoke-virtual {p0, p3}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/a;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->b:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1, v4, v4}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final b(I)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->i:D

    return-void
.end method

.method public final b()[Lcom/tencent/mapsdk/rastercore/b/c;
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/tencent/mapsdk/rastercore/b/c;

    new-array v2, v0, [Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v4

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v7, 0x0

    aput-object v5, v2, v7

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v3, v8

    invoke-direct {v5, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v10, 0x1

    aput-object v5, v2, v10

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v10, 0x2

    aput-object v5, v2, v10

    new-instance v5, Landroid/graphics/PointF;

    div-float v8, v4, v8

    invoke-direct {v5, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v10, 0x3

    aput-object v5, v2, v10

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x4

    aput-object v5, v2, v3

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v9, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x5

    aput-object v3, v2, v5

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x7

    aput-object v3, v2, v4

    :goto_0
    if-ge v7, v0, :cond_0

    aget-object v3, v2, v7

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v6}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/c;Landroid/graphics/PointF;Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v3

    aput-object v3, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final c()Lcom/tencent/mapsdk/raster/model/LatLngBounds;
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/d/c;->k()[Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/rastercore/b/c;)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/rastercore/b/c;)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;-><init>(Lcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)V

    return-object v1
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result p1

    :cond_0
    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 p1, 0x13

    :cond_1
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/b/a;->b(D)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_2
    return-void
.end method

.method public final d()Lcom/tencent/mapsdk/raster/model/CameraPosition;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/rastercore/b/c;)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->builder()Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->target(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->build()Lcom/tencent/mapsdk/raster/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->f:Z

    if-eqz v0, :cond_0

    int-to-double v0, p1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result p1

    :cond_0
    sget v0, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    if-gt p1, v0, :cond_1

    sget p1, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    :cond_1
    int-to-double v0, p1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result p1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/b/a;->b(D)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_3
    return-void
.end method

.method public final e()D
    .locals 9

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v0

    const-wide v1, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x7

    if-ge v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    const-wide v7, 0x41731bf84570a3d7L    # 2.003750834E7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v1, v3

    :goto_1
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v3

    mul-double v3, v3, v1

    return-wide v3
.end method

.method public final f()F
    .locals 5

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->c:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/tencent/mapsdk/rastercore/d/c;->a(II)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mapsdk/rastercore/d/c;->a(II)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;Lcom/tencent/mapsdk/raster/model/LatLng;)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float v0, v1

    return v0
.end method

.method protected final g()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->h:D

    return-wide v0
.end method

.method protected final h()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->i:D

    return-wide v0
.end method

.method public final i()Lcom/tencent/mapsdk/rastercore/b/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->d:Lcom/tencent/mapsdk/rastercore/b/a;

    return-object v0
.end method

.method public final j()Lcom/tencent/mapsdk/rastercore/b/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/c;->e:Lcom/tencent/mapsdk/rastercore/b/a;

    return-object v0
.end method
