.class final Lcom/tencent/mapsdk/rastercore/e/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mapsdk/rastercore/e/a/c;->r()V
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

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->c(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->c()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p2}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/mapsdk/rastercore/d/f;->c()Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->f(Lcom/tencent/mapsdk/rastercore/e/a/c;)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v1, p1, v2}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;FF)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    move-result-object p1

    new-instance p2, Lcom/tencent/mapsdk/raster/model/Marker;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {p2, v1}, Lcom/tencent/mapsdk/raster/model/Marker;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-interface {p1, p2}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;->onMarkerDrag(Lcom/tencent/mapsdk/raster/model/Marker;)V

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->c(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;Z)Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->n()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->e(Lcom/tencent/mapsdk/rastercore/e/a/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->f()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1, v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->b(Lcom/tencent/mapsdk/rastercore/e/a/c;Z)Z

    :cond_3
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->a(Lcom/tencent/mapsdk/rastercore/e/a/c;)Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/f;->e()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;

    move-result-object p1

    new-instance v0, Lcom/tencent/mapsdk/raster/model/Marker;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {v0, v1}, Lcom/tencent/mapsdk/raster/model/Marker;-><init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    invoke-interface {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerDraggedListener;->onMarkerDragEnd(Lcom/tencent/mapsdk/raster/model/Marker;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$3;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->i(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
