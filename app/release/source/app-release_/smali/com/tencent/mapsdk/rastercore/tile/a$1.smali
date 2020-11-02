.class public Lcom/tencent/mapsdk/rastercore/tile/a$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mapsdk/rastercore/tile/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/tencent/mapsdk/rastercore/tile/b;

.field private e:Lcom/tencent/mapsdk/rastercore/d/e;

.field private f:Lcom/tencent/mapsdk/rastercore/d/b;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/rastercore/e/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-direct {v0, p1}, Lcom/tencent/mapsdk/rastercore/tile/b;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->d:Lcom/tencent/mapsdk/rastercore/tile/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    iput p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->h:I

    iput p3, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->i:I

    iput p4, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->j:I

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v5, v2}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_8
    :goto_4
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;",
            "Lcom/tencent/mapsdk/rastercore/e/a/f;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->b()D

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v6}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/mapsdk/rastercore/d/a$1;->e()Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, -0x1

    :cond_0
    sub-int/2addr v6, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v5, v6

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v5, v0

    if-eqz v7, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    double-to-float v1, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v5, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Landroid/graphics/Canvas;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    nop

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return v3
.end method

.method private static b(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;",
            "Lcom/tencent/mapsdk/rastercore/e/a/f;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->b(Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->d()I

    move-result v6

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/rastercore/b/c;IIII)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)I
    .locals 1

    sget-object v0, Lcom/tencent/mapsdk/rastercore/tile/d;->a:[I

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->j:I

    return p1

    :cond_1
    iget p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->h:I

    return p1

    :cond_2
    iget p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->i:I

    return p1
.end method

.method a(IIIILandroid/graphics/PointF;IIII)Landroid/graphics/PointF;
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p8

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    const/4 v5, 0x0

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    int-to-double v6, v0

    move/from16 v8, p9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    cmpl-double v14, v6, v12

    if-gez v14, :cond_2

    int-to-double v6, v1

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_0

    goto :goto_0

    :cond_0
    sub-int v0, v0, p3

    mul-int v0, v0, v3

    int-to-float v0, v0

    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v6

    iput v0, v4, Landroid/graphics/PointF;->x:F

    sub-int v0, v1, p4

    mul-int v0, v0, v3

    int-to-float v0, v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/PointF;->y:F

    iget v0, v4, Landroid/graphics/PointF;->x:F

    int-to-float v1, v3

    add-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, v4, Landroid/graphics/PointF;->x:F

    move/from16 v3, p6

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    iget v0, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v1, p7

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v4

    :cond_2
    :goto_0
    return-object v5
.end method

.method public a(Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;)Lcom/tencent/mapsdk/rastercore/e/a/f;
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/f;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mapsdk/rastercore/e/a/f;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-object v0
.end method

.method public a(Lcom/tencent/mapsdk/rastercore/b/c;IIII)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mapsdk/rastercore/b/c;",
            "IIII)",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p5

    iget-object v0, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->e()Z

    move-result v0

    add-int v0, p2, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/tencent/mapsdk/rastercore/b/a;->c(D)D

    move-result-wide v0

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->c()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mapSource:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v2

    const-wide v4, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    sub-double/2addr v2, v4

    int-to-double v6, v11

    mul-double v6, v6, v0

    div-double/2addr v2, v6

    double-to-int v13, v2

    mul-int v2, v13, v11

    int-to-double v2, v2

    mul-double v2, v2, v0

    add-double/2addr v2, v4

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v4

    const-wide v8, 0x41731bf84570a3d7L    # 2.003750834E7

    sub-double v4, v8, v4

    div-double/2addr v4, v6

    double-to-int v14, v4

    mul-int v4, v14, v11

    int-to-double v4, v4

    mul-double v4, v4, v0

    sub-double/2addr v8, v4

    new-instance v4, Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-direct {v4, v2, v3, v8, v9}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->a()Landroid/graphics/PointF;

    move-result-object v2

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v7

    sub-double/2addr v5, v7

    div-double/2addr v5, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v7, v3

    add-double/2addr v5, v7

    double-to-float v3, v5

    iput v3, v15, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v4, v0

    sub-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, v15, Landroid/graphics/PointF;->y:F

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v10, v12}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)I

    move-result v6

    iget-object v8, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    move-object v1, v0

    move v3, v13

    move v4, v14

    move/from16 v5, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/util/List;)V

    invoke-virtual {v0, v15}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Landroid/graphics/PointF;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x1

    const/16 v17, 0x1

    :goto_0
    const/4 v0, 0x0

    sub-int v18, v13, v17

    move/from16 v8, v18

    const/16 v19, 0x0

    :goto_1
    add-int v7, v13, v17

    if-gt v8, v7, :cond_4

    add-int v20, v14, v17

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    move v3, v13

    move v4, v14

    move-object v5, v15

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v21, v8

    move/from16 v8, p5

    move-object v11, v9

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(IIIILandroid/graphics/PointF;IIII)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v19, :cond_0

    const/16 v19, 0x1

    :cond_0
    new-instance v9, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v10, v12}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)I

    move-result v6

    iget-object v8, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    move-object v1, v9

    move/from16 v3, v21

    move/from16 v4, v20

    move/from16 v5, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Landroid/graphics/PointF;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sub-int v20, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    move v3, v13

    move v4, v14

    move-object v5, v15

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(IIIILandroid/graphics/PointF;IIII)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v19, :cond_2

    const/16 v19, 0x1

    :cond_2
    new-instance v9, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v10, v12}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)I

    move-result v6

    iget-object v8, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    move-object v1, v9

    move/from16 v3, v21

    move/from16 v4, v20

    move/from16 v5, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Landroid/graphics/PointF;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v21, 0x1

    move-object v9, v11

    move/from16 v11, p5

    goto :goto_1

    :cond_4
    move-object v11, v9

    add-int v0, v14, v17

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    :goto_2
    sub-int v0, v14, v17

    if-le v9, v0, :cond_9

    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move/from16 v6, p3

    move/from16 v20, v7

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v21, v9

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(IIIILandroid/graphics/PointF;IIII)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez v19, :cond_5

    const/16 v19, 0x1

    :cond_5
    new-instance v9, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v10, v12}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)I

    move-result v6

    iget-object v8, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    move-object v1, v9

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Landroid/graphics/PointF;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v21

    move v3, v13

    move v4, v14

    move-object v5, v15

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(IIIILandroid/graphics/PointF;IIII)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :cond_7
    new-instance v9, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    iget-object v2, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v10, v12}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)I

    move-result v6

    iget-object v8, v10, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    move-object v1, v9

    move/from16 v3, v18

    move/from16 v4, v21

    move/from16 v5, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/util/List;)V

    invoke-virtual {v9, v0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a(Landroid/graphics/PointF;)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v9, v21, -0x1

    move/from16 v7, v20

    goto :goto_2

    :cond_9
    if-eqz v19, :cond_a

    add-int/lit8 v17, v17, 0x1

    move-object v9, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    return-object v11
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->d:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/b;->a()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->h:I

    return-void
.end method

.method public a(ZZ)V
    .locals 6

    if-nez p1, :cond_4

    sget-object p1, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->l()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->SATELLITE:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    sget-object p1, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->BING:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->c()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a(Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p1

    const/16 v0, 0x200

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p1

    const/16 v0, 0x100

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->f:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a()I

    move-result v0

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    goto :goto_3

    :cond_7
    move-object v4, v2

    const/4 v0, -0x1

    :goto_3
    sub-int/2addr v0, p1

    if-nez v0, :cond_8

    if-eqz p2, :cond_b

    :cond_8
    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_9

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a()I

    move-result p2

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    goto :goto_4

    :cond_9
    move-object v5, v2

    const/4 p2, -0x1

    :goto_4
    if-ne p1, p2, :cond_a

    if-eq p2, v3, :cond_a

    iput-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    :cond_a
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    iput-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    :cond_b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->d(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    :cond_c
    invoke-direct {p0, p1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->d(I)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    invoke-static {p1, v0, p2}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->d:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-virtual {p1, p2}, Lcom/tencent/mapsdk/rastercore/tile/b;->a(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Landroid/graphics/Canvas;Ljava/util/ArrayList;)Z

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Landroid/graphics/Canvas;Ljava/util/ArrayList;)Z

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->l:Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->l:Landroid/graphics/PaintFlagsDrawFilter;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->l:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Landroid/graphics/Canvas;Ljava/util/ArrayList;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public a(Lcom/tencent/mapsdk/rastercore/e/a/f;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b(Ljava/util/List;Lcom/tencent/mapsdk/rastercore/e/a/f;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->i:I

    return-void
.end method

.method public b()Z
    .locals 9

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->e:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/c;->b()[Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/tencent/mapsdk/rastercore/c;->a(DD)Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a$1;->j:I

    return-void
.end method
