.class public final Lcom/tencent/mapsdk/rastercore/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private A:J

.field private B:Landroid/graphics/Point;

.field private a:Lcom/tencent/mapsdk/rastercore/d/e;

.field private b:Lcom/tencent/mapsdk/rastercore/d/b;

.field private c:Lcom/tencent/mapsdk/rastercore/d/a;

.field private d:Landroid/view/GestureDetector;

.field private e:Landroid/view/MotionEvent;

.field private f:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapClickListener;

.field private g:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLongClickListener;

.field private h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

.field private i:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnInfoWindowClickListener;

.field private j:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;

.field private k:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

.field private l:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/widget/Scroller;

.field private t:I

.field private u:I

.field private v:J

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->m:F

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->o:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->r:Z

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->t:I

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->u:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->A:J

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->e()Lcom/tencent/mapsdk/rastercore/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->c:Lcom/tencent/mapsdk/rastercore/d/a;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->d:Landroid/view/GestureDetector;

    new-instance p1, Landroid/widget/Scroller;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->t:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->u:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/d/f;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    return p1
.end method

.method private static c(Landroid/view/MotionEvent;)F
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "event0.x:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",event0.y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";  event1.x:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",event1.y:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    mul-float v1, v1, v1

    mul-float v3, v3, v3

    add-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->t:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->u:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->t:I

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->u:I

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/d/f;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0, v3, v3}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->j:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnInfoWindowClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->i:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnInfoWindowClickListener;

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->f:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapClickListener;

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->g:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLongClickListener;

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->l:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->k:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/c;->d()Lcom/tencent/mapsdk/raster/model/CameraPosition;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;->onCameraChangeFinish(Lcom/tencent/mapsdk/raster/model/CameraPosition;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->r:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;->onCameraChange(Lcom/tencent/mapsdk/raster/model/CameraPosition;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->r:Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    const-string v4, ",event0.y:"

    const-string v5, "event0.x:"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_e

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x0

    const/high16 v12, 0x41200000    # 10.0f

    if-eq v2, v6, :cond_6

    const/4 v13, 0x2

    if-eq v2, v13, :cond_3

    const/4 v8, 0x5

    if-eq v2, v8, :cond_2

    const/4 v8, 0x6

    if-eq v2, v8, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v13, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ";  event1.x:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",event1.y:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->m:F

    mul-float v2, v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    new-instance v2, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v8}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v8

    div-int/2addr v8, v13

    int-to-float v8, v8

    iget-object v12, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v12}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v12

    div-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {v2, v8, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v14, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v14}, Lcom/tencent/mapsdk/rastercore/d/b;->c()D

    move-result-wide v12

    sub-double/2addr v4, v9

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v4, v4, v8

    add-double v15, v12, v4

    const/16 v18, 0x1

    const-wide/16 v19, 0xc8

    sget-object v21, Lcom/tencent/mapsdk/rastercore/a/a$a;->b:Lcom/tencent/mapsdk/rastercore/a/a$a;

    new-instance v4, Lcom/tencent/mapsdk/rastercore/d/f$1;

    invoke-direct {v4, v0}, Lcom/tencent/mapsdk/rastercore/d/f$1;-><init>(Lcom/tencent/mapsdk/rastercore/d/f;)V

    move-object/from16 v17, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v14 .. v22}, Lcom/tencent/mapsdk/rastercore/d/b;->a(DLandroid/graphics/PointF;ZJLcom/tencent/mapsdk/rastercore/a/a$a;Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_1
    iput-object v11, v0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    goto/16 :goto_4

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->v:J

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->x:F

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->z:F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->w:F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->y:F

    invoke-static/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/d/f;->c(Landroid/view/MotionEvent;)F

    move-result v2

    :goto_0
    iput v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->o:F

    goto/16 :goto_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_f

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->i()Z

    move-result v2

    if-nez v2, :cond_4

    return v7

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/tencent/mapsdk/rastercore/d/f;->c(Landroid/view/MotionEvent;)F

    move-result v2

    cmpg-float v4, v2, v12

    if-ltz v4, :cond_f

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->o:F

    cmpg-float v5, v4, v12

    if-gez v5, :cond_5

    goto :goto_0

    :cond_5
    iget v5, v0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    iput v5, v0, Lcom/tencent/mapsdk/rastercore/d/f;->m:F

    div-float v4, v2, v4

    iput v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v4, v8

    if-ltz v10, :cond_f

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    iget-object v8, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v8}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v8

    div-int/2addr v8, v13

    int-to-float v8, v8

    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    iget v8, v0, Lcom/tencent/mapsdk/rastercore/d/f;->n:F

    float-to-double v8, v8

    invoke-virtual {v5, v8, v9, v4}, Lcom/tencent/mapsdk/rastercore/d/b;->a(DLandroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Lcom/tencent/mapsdk/rastercore/d/f;->a(Z)V

    iput v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->o:F

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2, v7, v7}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    iput-boolean v6, v0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->A:J

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->k()V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v13, v0, Lcom/tencent/mapsdk/rastercore/d/f;->v:J

    sub-long/2addr v4, v13

    const-wide/16 v13, 0xc8

    cmp-long v2, v4, v13

    if-gez v2, :cond_d

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->x:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v12

    if-gez v2, :cond_8

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->z:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v12

    if-ltz v2, :cond_9

    :cond_8
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->w:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v12

    if-gez v2, :cond_d

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->y:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v12

    if-gez v2, :cond_d

    :cond_9
    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a()I

    move-result v4

    if-lt v4, v3, :cond_a

    iget-object v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b()F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    goto :goto_2

    :cond_b
    invoke-virtual {v2, v9, v10}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    :goto_2
    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2, v6, v11}, Lcom/tencent/mapsdk/rastercore/d/b;->b(ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_c
    const/4 v2, 0x1

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    :goto_3
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->v:J

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->w:F

    iput v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->y:F

    iput-boolean v7, v0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    iput v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->o:F

    move v7, v2

    goto :goto_4

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->stopAnimation()V

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->g()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->j()V

    :cond_f
    :goto_4
    if-eqz v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/mapsdk/rastercore/d/f;->A:J

    :cond_10
    if-nez v7, :cond_11

    iget-boolean v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->d:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_13

    iget-boolean v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->h:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapCameraChangeListener;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    if-nez v2, :cond_12

    iget-boolean v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->r:Z

    if-eqz v2, :cond_13

    :cond_12
    invoke-virtual {v0, v6}, Lcom/tencent/mapsdk/rastercore/d/f;->a(Z)V

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->d:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_14
    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/d/f;->c:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {v2, v1}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Landroid/view/MotionEvent;)Z

    return v6
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    :cond_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_2
    return-void
.end method

.method public final c()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->l:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;

    return-object v0
.end method

.method public final e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->k:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    return-object v0
.end method

.method public final f()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnInfoWindowClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->i:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnInfoWindowClickListener;

    return-object v0
.end method

.method public final g()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->j:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;

    return-object v0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    goto :goto_1

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/a;->a(D)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->d()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/c;->i()Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/a;->a()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p1, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Landroid/graphics/PointF;ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_3
    return v1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->h()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->s:Landroid/widget/Scroller;

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->t:I

    iget v3, p0, Lcom/tencent/mapsdk/rastercore/d/f;->u:I

    neg-float p2, p3

    float-to-double p2, p2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double p2, p2, v4

    double-to-int p2, p2

    neg-float p3, p4

    float-to-double p3, p3

    mul-double p3, p3, v4

    double-to-int v5, p3

    const v6, -0x7fffffff

    const v7, 0x7fffffff

    const v8, -0x7fffffff

    const v9, 0x7fffffff

    move v4, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p2, p1, p1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return v0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0xa

    const/16 p3, -0xa

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p2, p1, v0}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1, p3, v0}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1, v0, p3}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(II)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->c:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->g:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLongClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLongClickListener;->onMapLongClick(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->h()Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    return p4

    :cond_0
    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->q:Z

    if-eqz p1, :cond_1

    return p4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->A:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1e

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    return p4

    :cond_2
    iput-boolean p4, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->e:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    if-nez v0, :cond_3

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->B:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p3}, Lcom/tencent/mapsdk/rastercore/d/f;->a(Z)V

    :goto_0
    return p4
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/f;->p:Z

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v3, p1}, Lcom/tencent/mapsdk/rastercore/d/c;->a(II)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->c:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Lcom/tencent/mapsdk/raster/model/GeoPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->f:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapClickListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapClickListener;->onMapClick(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->setFocusable(Z)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->requestFocus()Z

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object p1

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/f;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
