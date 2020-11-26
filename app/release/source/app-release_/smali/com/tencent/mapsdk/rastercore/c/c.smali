.class public final Lcom/tencent/mapsdk/rastercore/c/c;
.super Lcom/tencent/mapsdk/rastercore/c/a;


# instance fields
.field private d:Lcom/tencent/mapsdk/raster/model/CameraPosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mapsdk/raster/model/CameraPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/c/c;->d:Lcom/tencent/mapsdk/raster/model/CameraPosition;

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/c/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/c/c;->d:Lcom/tencent/mapsdk/raster/model/CameraPosition;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->getTarget()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mapsdk/rastercore/c/c;->b:J

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/c/c;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/c;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/c/c;->d:Lcom/tencent/mapsdk/raster/model/CameraPosition;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->getTarget()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b(Lcom/tencent/mapsdk/rastercore/b/c;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/c/c;->d:Lcom/tencent/mapsdk/raster/model/CameraPosition;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->getZoom()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/c/c;->d:Lcom/tencent/mapsdk/raster/model/CameraPosition;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->getZoom()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/c/c;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
