.class final Lcom/tencent/mapsdk/rastercore/e/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mapsdk/rastercore/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/mapsdk/rastercore/e/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->c()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/f;->c()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;Z)Z

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(Lcom/tencent/mapsdk/rastercore/e/a/c;Z)Z

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->g()V

    :cond_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->f(Lcom/tencent/mapsdk/rastercore/e/a/c;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v1, p1, v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;FF)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    move-result-object p1

    new-instance v0, Lcom/tencent/mapsdk/raster/model/Marker;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {v0, v1}, Lcom/tencent/mapsdk/raster/model/Marker;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;->onMarkerDragStart(Lcom/tencent/mapsdk/raster/model/Marker;)V

    :cond_1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->c(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->d(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->requestDisallowInterceptTouchEvent(Z)V

    return p2
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->n()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->d()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->f()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->d()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;

    move-result-object p1

    new-instance v0, Lcom/tencent/mapsdk/raster/model/Marker;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$1;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {v0, v1}, Lcom/tencent/mapsdk/raster/model/Marker;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;->onMarkerClick(Lcom/tencent/mapsdk/raster/model/Marker;)Z

    move-result p1

    return p1
.end method
