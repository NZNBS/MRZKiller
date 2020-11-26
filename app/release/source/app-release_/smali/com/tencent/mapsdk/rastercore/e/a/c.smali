.class public final Lcom/tencent/mapsdk/rastercore/e/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;


# instance fields
.field private A:Landroid/view/animation/Animation;

.field private B:I

.field private C:Ljava/lang/Object;

.field private c:Lcom/tencent/mapsdk/rastercore/d/e;

.field private d:Landroid/content/Context;

.field private e:Lcom/tencent/mapsdk/rastercore/d/f;

.field private f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/GestureDetector;

.field private l:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:F

.field private r:F

.field private s:Z

.field private t:F

.field private u:F

.field private v:Ljava/lang/String;

.field private w:Lcom/tencent/mapsdk/raster/model/LatLng;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/MarkerOptions;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->i:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->j:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->l:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->m:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->n:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->o:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->p:Z

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->q:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->r:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->s:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->u:F

    const/16 v1, 0x19

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->B:I

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->h()Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->e:Lcom/tencent/mapsdk/rastercore/d/f;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->isGps()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->n:Z

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getPosition()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->n:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getPosition()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getPosition()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mapsdk/rastercore/e/a/e;->a(DD)[D

    move-result-object p1

    new-instance v1, Lcom/tencent/mapsdk/raster/model/LatLng;

    aget-wide v2, p1, v2

    aget-wide v4, p1, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getPosition()Lcom/tencent/mapsdk/raster/model/LatLng;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getPosition()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->w:Lcom/tencent/mapsdk/raster/model/LatLng;

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getIcon()Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;)V

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getMarkerView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getAnchorU()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->q:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getAnchorV()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->r:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->u:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->isVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->s:Z

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->v:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->x:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->isDraggable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->m:Z

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->y:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getInfoWindowHideAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->j:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getInfoWindowShowAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->i:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getShowingAnination()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->z:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getHidingAnination()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->A:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/MarkerOptions;->getTag()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->C:Ljava/lang/Object;

    iget p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->B:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->B:I

    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->d:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/e/a/c$1;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->k:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->q()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/e/a/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->e:Lcom/tencent/mapsdk/rastercore/d/f;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/e/a/c;FF)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapsdk/rastercore/d/c;->a(II)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    return-void
.end method

.method private static a(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/e/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/e/a/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/e/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->o:Z

    return p0
.end method

.method static synthetic d(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/tencentmap/mapsdk/map/MapView;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->p:Z

    return p0
.end method

.method static synthetic f(Lcom/tencent/mapsdk/rastercore/e/a/c;)I
    .locals 0

    iget p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->B:I

    return p0
.end method

.method static synthetic g(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->z:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/mapsdk/rastercore/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->r()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->k:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->A:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic l(Lcom/tencent/mapsdk/rastercore/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->q()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/mapsdk/rastercore/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->v()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    return-object p0
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->l:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mapsdk/rastercore/e/a/c;->b:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptorFactory;->defaultMarker()Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapsdk/rastercore/e/a/c;->b:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    :cond_0
    sget-object v0, Lcom/tencent/mapsdk/rastercore/e/a/c;->b:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->l:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->l:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->u:F

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(F)V

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(F)V

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->s()Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->z:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->z:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/e/a/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/e/a/c$2;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->r()V

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/e/a/c$3;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/e/a/c$3;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private s()Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;
    .locals 9

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->t()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v8, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->w:Lcom/tencent/mapsdk/raster/model/LatLng;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    neg-int v5, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    neg-int v6, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;-><init>(IILcom/tencent/mapsdk/raster/model/LatLng;III)V

    return-object v8
.end method

.method private t()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->q:F

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->r:F

    mul-float v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private u()Landroid/graphics/PointF;
    .locals 10

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x43070000    # 135.0f

    invoke-static {v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(FFF)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-direct {v1, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    const/high16 v5, 0x43610000    # 225.0f

    invoke-static {v1, v3, v5}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    const v3, 0x439d8000    # 315.0f

    invoke-static {v1, v5, v3}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    invoke-direct {v1, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->t()Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    mul-float v2, v3, v3

    mul-float v5, v1, v1

    add-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    div-float v5, v3, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    cmpl-float v9, v3, v4

    if-lez v9, :cond_3

    cmpg-float v9, v1, v4

    if-ltz v9, :cond_4

    :cond_3
    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    :cond_4
    add-double/2addr v5, v7

    :cond_5
    iget v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    mul-double v3, v3, v7

    add-double/2addr v5, v3

    float-to-double v1, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float v1, v1

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private v()V
    .locals 9

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->u()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v8, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->w:Lcom/tencent/mapsdk/raster/model/LatLng;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v0

    const/16 v7, 0x51

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;-><init>(IILcom/tencent/mapsdk/raster/model/LatLng;III)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0, v8}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    instance-of v1, v0, Lcom/tencent/mapsdk/rastercore/e/a/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/mapsdk/rastercore/e/a/b;

    iget-object v0, v0, Lcom/tencent/mapsdk/rastercore/e/a/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    check-cast v0, Lcom/tencent/mapsdk/rastercore/e/a/b;

    iget-object v0, v0, Lcom/tencent/mapsdk/rastercore/e/a/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    return-object v0
.end method

.method public final a(F)V
    .locals 8

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    const/4 v4, 0x1

    iget v5, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->q:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->r:F

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->t()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->v()V

    return-void
.end method

.method public final a(FF)V
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->q:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->r:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->q:F

    iput p2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->r:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->s()Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(F)V

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->v()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->A:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/c$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/c$4;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->A:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->q()V

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->v()V

    return-void
.end method

.method public final a(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->i:Landroid/view/animation/Animation;

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->l:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->s()Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/LatLng;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->w:Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->setPoint(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->layout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->setPoint(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->layout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->C:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->v:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->w()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->g()V

    :cond_1
    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->s:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->e()Lcom/tencent/mapsdk/rastercore/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public final b(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->u:F

    invoke-direct {v0, v1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->u:F

    return-void
.end method

.method public final b(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->j:Landroid/view/animation/Animation;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->x:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->w()V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->m:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->A:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/mapsdk/rastercore/e/a/c$5;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/e/a/c$5;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->A:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->m:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/mapsdk/rastercore/e/a/c;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final f()V
    .locals 14

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->e:Lcom/tencent/mapsdk/rastercore/d/f;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/f;->g()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/mapsdk/raster/model/Marker;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/raster/model/Marker;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->e:Lcom/tencent/mapsdk/rastercore/d/f;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/f;->g()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$InfoWindowAdapter;->getInfoWindow(Lcom/tencent/mapsdk/raster/model/Marker;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/b;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/e/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/b;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/e/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->t()Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->u()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->w:Lcom/tencent/mapsdk/raster/model/LatLng;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    const/16 v9, 0x51

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;-><init>(IILcom/tencent/mapsdk/raster/model/LatLng;III)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->i:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/e/a/c$6;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/e/a/c$6;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final g()V
    .locals 13

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->j:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :goto_0
    new-instance v1, Lcom/tencent/mapsdk/rastercore/e/a/c$7;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/e/a/c$7;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->t:F

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->s:Z

    return v0
.end method

.method public final l()Lcom/tencent/mapsdk/raster/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->w:Lcom/tencent/mapsdk/raster/model/LatLng;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/tencent/mapsdk/rastercore/e/a/c;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mapsdk/rastercore/e/a/c;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/mapsdk/rastercore/e/a/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->y:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final n()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->f:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->v()V

    return-void
.end method

.method public final o()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->u:F

    return v0
.end method

.method public final p()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c;->C:Ljava/lang/Object;

    return-object v0
.end method
