.class public Lcom/tencent/tencentmap/mapsdk/map/Overlay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mapsdk/rastercore/e/b;


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.89f

.field protected static final SHADOW_Y_SCALE:F = 0.5f


# instance fields
.field protected contentLayer:Lcom/tencent/mapsdk/rastercore/d/a;

.field protected id:Ljava/lang/String;

.field protected isVisible:Z

.field protected mapContext:Lcom/tencent/mapsdk/rastercore/d/e;

.field protected mapView:Lcom/tencent/tencentmap/mapsdk/map/MapView;

.field protected zIndex:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->isVisible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->zIndex:F

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkInBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->mapView:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->draw(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;)V

    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;)V
    .locals 0

    return-void
.end method

.method public equalsRemote(Lcom/tencent/mapsdk/rastercore/e/b;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/tencent/mapsdk/rastercore/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->getId()Ljava/lang/String;

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

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Overlay"

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->id:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->zIndex:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/tencent/tencentmap/mapsdk/map/MapView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->mapView:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getMapContext()Lcom/tencent/mapsdk/rastercore/d/e;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->mapContext:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->e()Lcom/tencent/mapsdk/rastercore/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->contentLayer:Lcom/tencent/mapsdk/rastercore/d/a;

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->isVisible:Z

    return v0
.end method

.method public onEmptyTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;)V
    .locals 0

    return-void
.end method

.method public onLongPress(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/view/MotionEvent;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRemoveOverlay()V
    .locals 0

    return-void
.end method

.method public onTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->contentLayer:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a;->b(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->onRemoveOverlay()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->isVisible:Z

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->mapContext:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->zIndex:F

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->contentLayer:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a;->c()V

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->mapContext:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method
