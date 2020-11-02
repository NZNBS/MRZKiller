.class public final Lcom/tencent/mapsdk/rastercore/d/b;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/tencent/mapsdk/rastercore/d/e;

.field private b:Lcom/tencent/mapsdk/rastercore/d/c;

.field private c:Z

.field private volatile d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/mapsdk/rastercore/b/a;

.field private g:Lcom/tencent/mapsdk/rastercore/b/c;

.field private h:Landroid/graphics/PointF;

.field private i:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;

.field private final j:Landroid/os/Handler;

.field private k:Lcom/tencent/mapsdk/rastercore/a/c;

.field private l:Lcom/tencent/mapsdk/rastercore/a/b;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 4

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->c:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->d:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->h:Landroid/graphics/PointF;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/d/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/d/b$1;-><init>(Lcom/tencent/mapsdk/rastercore/d/b;)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/b/a;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(D)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    :cond_0
    new-instance p1, Lcom/tencent/mapsdk/raster/model/LatLng;

    const-wide v0, 0x4043f556191148feL    # 39.91669

    const-wide v2, 0x405d196b11c6d1e1L    # 116.39716

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->h:Landroid/graphics/PointF;

    invoke-static {p0, v1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method private a(II)Lcom/tencent/mapsdk/rastercore/b/c;
    .locals 6

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v0

    int-to-double v2, p1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v2

    int-to-double p1, p2

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v4

    mul-double p1, p1, v4

    sub-double/2addr v2, p1

    new-instance p1, Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/d/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->e:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/tencent/mapsdk/rastercore/b/a;Landroid/graphics/PointF;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v4

    iget-object v4, v0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v4

    iget v8, v1, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    sub-double/2addr v8, v2

    iget-object v10, v0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v10}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v10

    mul-double v8, v8, v10

    iget v10, v1, Landroid/graphics/PointF;->x:F

    float-to-double v10, v10

    sub-double v10, v2, v10

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v12

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    add-double/2addr v4, v8

    iget-object v8, v0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v8}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v8

    iget v10, v1, Landroid/graphics/PointF;->y:F

    float-to-double v10, v10

    sub-double/2addr v10, v6

    iget-object v12, v0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v12}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v12

    mul-double v10, v10, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v12, v1

    sub-double v12, v6, v12

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/a;->d()D

    move-result-wide v14

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mapsdk/rastercore/b/c;->b(D)V

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v1, v8, v9}, Lcom/tencent/mapsdk/rastercore/b/c;->a(D)V

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->h:Landroid/graphics/PointF;

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->h:Landroid/graphics/PointF;

    double-to-int v2, v6

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/a;->b(D)V

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/c;)V

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/d/b;)Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->i:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;

    return-object p0
.end method

.method private b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 9

    sget-object v7, Lcom/tencent/mapsdk/rastercore/a/a$a;->c:Lcom/tencent/mapsdk/rastercore/a/a$a;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mapsdk/rastercore/d/b;->a(DLandroid/graphics/PointF;ZJLcom/tencent/mapsdk/rastercore/a/a$a;Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mapsdk/rastercore/d/b;)Lcom/tencent/mapsdk/rastercore/d/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    return-object p0
.end method

.method private e()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->h:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final a(DLandroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->b()D

    move-result-wide v0

    mul-double v0, v0, p1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    new-instance p2, Lcom/tencent/mapsdk/rastercore/b/a;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v2

    invoke-direct {p2, v2, v0, v1}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(ID)V

    invoke-virtual {p1, p2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/a;Landroid/graphics/PointF;)V

    return-void
.end method

.method public final a(DLandroid/graphics/PointF;ZJLcom/tencent/mapsdk/rastercore/a/a$a;Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 10

    move-object v0, p0

    if-eqz p4, :cond_1

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->k:Lcom/tencent/mapsdk/rastercore/a/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/a/c;->b()V

    :cond_0
    new-instance v1, Lcom/tencent/mapsdk/rastercore/a/c;

    iget-object v3, v0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    move-object v2, v1

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p5

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/tencent/mapsdk/rastercore/a/c;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;DLandroid/graphics/PointF;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->k:Lcom/tencent/mapsdk/rastercore/a/c;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/rastercore/a/c;->a(Lcom/tencent/mapsdk/rastercore/a/a$a;)V

    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->k:Lcom/tencent/mapsdk/rastercore/a/c;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/a/c;->a()V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    new-instance v2, Lcom/tencent/mapsdk/rastercore/b/a;

    move-wide v3, p1

    invoke-direct {v2, p1, p2}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(D)V

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v1

    move-object v2, p3

    invoke-direct {p0, v1, p3}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/a;Landroid/graphics/PointF;)V

    if-eqz p8, :cond_2

    invoke-interface/range {p8 .. p8}, Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;->onFinish()V

    :cond_2
    return-void
.end method

.method public final a(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final a(DLandroid/graphics/PointF;ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 10

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    add-double v3, v0, p1

    const-wide/16 v7, 0x1f4

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final a(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 10

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    add-double v3, v0, p1

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->e()Landroid/graphics/PointF;

    move-result-object v5

    const-wide/16 v7, 0x1f4

    move-object v2, p0

    move v6, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final a(IIJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mapsdk/rastercore/d/b;->a(II)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/c;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final a(Landroid/graphics/PointF;ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 10

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v3, p2, v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x1f4

    const/4 v9, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/b/c;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/c;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/b/c;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->l:Lcom/tencent/mapsdk/rastercore/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/a/b;->b()V

    :cond_0
    new-instance v0, Lcom/tencent/mapsdk/rastercore/a/b;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    move-object v1, v0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mapsdk/rastercore/a/b;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/rastercore/b/c;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->l:Lcom/tencent/mapsdk/rastercore/a/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/a/b;->a()V

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/c/a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->e:Ljava/util/List;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/b$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mapsdk/rastercore/d/b$2;-><init>(Lcom/tencent/mapsdk/rastercore/d/b;Lcom/tencent/mapsdk/rastercore/c/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/c/a;->a(Lcom/tencent/mapsdk/rastercore/d/e;)V

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->i:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->c:Z

    return-void
.end method

.method public final a(ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 12

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v5, v0, v2

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->e()Landroid/graphics/PointF;

    move-result-object v7

    const-wide/16 v9, 0x1f4

    move-object v4, p0

    move v8, p1

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final b()Lcom/tencent/mapsdk/rastercore/b/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->g:Lcom/tencent/mapsdk/rastercore/b/c;

    return-object v0
.end method

.method public final b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 8

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->e()Landroid/graphics/PointF;

    move-result-object v3

    const-wide/16 v5, 0x1f4

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final b(Lcom/tencent/mapsdk/rastercore/b/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/c;)V

    return-void
.end method

.method public final b(ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 12

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v5, v0, v2

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->e()Landroid/graphics/PointF;

    move-result-object v7

    const-wide/16 v9, 0x1f4

    move-object v4, p0

    move v8, p1

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DLandroid/graphics/PointF;ZJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method

.method public final c()D
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v0

    return-wide v0
.end method

.method public final clearAnimation()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->l:Lcom/tencent/mapsdk/rastercore/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/a/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->k:Lcom/tencent/mapsdk/rastercore/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/a/c;->b()V

    :cond_1
    return-void
.end method

.method public final d()Lcom/tencent/mapsdk/rastercore/b/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->f:Lcom/tencent/mapsdk/rastercore/b/a;

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->j:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->g()Lcom/tencent/mapsdk/rastercore/tile/a$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/e;->e()Lcom/tencent/mapsdk/rastercore/d/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->q()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const-string v4, "\u9274\u6743\u5931\u8d25\uff0c\u8bf7\u5230\u817e\u8baf"

    const-string v5, "\u5730\u56fe\u5b98\u7f51\u7533\u8bf7\u5bc6\u94a5"

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v7

    const/16 v8, 0x9

    invoke-virtual {v1, v4, v2, v8, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v6, v8

    int-to-float v8, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v7, v9

    int-to-float v9, v9

    invoke-virtual {p1, v4, v8, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v4, 0x8

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    int-to-float v3, v6

    add-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    invoke-virtual {p1, v5, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b(Z)V

    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->c:Z

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/tencent/mapsdk/rastercore/d/b;->c:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->j:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/c;->g()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    const/4 v0, 0x0

    cmpl-double v1, p1, p3

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/c;->h()D

    move-result-wide p1

    cmpl-double v1, p1, p3

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/c;->g()D

    move-result-wide p2

    iget-object p4, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p4}, Lcom/tencent/mapsdk/rastercore/d/c;->h()D

    move-result-wide v1

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/tencent/mapsdk/rastercore/d/c;->b(DD)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/c;->a(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/c;->b(I)V

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->h:Landroid/graphics/PointF;

    sget p1, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    const-wide/high16 p3, 0x4070000000000000L    # 256.0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, p3

    int-to-double p3, p2

    cmpg-double v3, v1, p3

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    sput p1, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/c;->j()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result p1

    sget p2, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->b:Lcom/tencent/mapsdk/rastercore/d/c;

    sget p2, Lcom/tencent/mapsdk/rastercore/b/a;->a:I

    invoke-virtual {p1, p2}, Lcom/tencent/mapsdk/rastercore/d/c;->d(I)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public final scrollBy(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mapsdk/rastercore/d/b;->a(II)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/c;)V

    return-void
.end method
