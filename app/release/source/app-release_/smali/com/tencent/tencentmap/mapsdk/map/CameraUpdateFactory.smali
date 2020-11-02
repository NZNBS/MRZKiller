.class public final Lcom/tencent/tencentmap/mapsdk/map/CameraUpdateFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCameraPosition(Lcom/tencent/mapsdk/raster/model/CameraPosition;)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    invoke-static {p0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/CameraPosition;)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    invoke-static {}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->builder()Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->target(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->build()Lcom/tencent/mapsdk/raster/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/CameraPosition;)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/tencent/mapsdk/raster/model/LatLngBounds;I)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLngBounds;III)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/tencent/mapsdk/raster/model/LatLngBounds;III)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLngBounds;III)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/tencent/mapsdk/raster/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    invoke-static {}, Lcom/tencent/mapsdk/raster/model/CameraPosition;->builder()Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->target(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/raster/model/CameraPosition$Builder;->build()Lcom/tencent/mapsdk/raster/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/CameraPosition;)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static scrollBy(FF)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/c/d;

    invoke-direct {v1}, Lcom/tencent/mapsdk/rastercore/c/d;-><init>()V

    invoke-virtual {v1, p0}, Lcom/tencent/mapsdk/rastercore/c/d;->a(F)V

    invoke-virtual {v1, p1}, Lcom/tencent/mapsdk/rastercore/c/d;->b(F)V

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static zoomBy(F)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(FLandroid/graphics/Point;)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    invoke-static {p0, p1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(FLandroid/graphics/Point;)Lcom/tencent/mapsdk/rastercore/c/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static zoomIn()Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/c/f;

    invoke-direct {v1}, Lcom/tencent/mapsdk/rastercore/c/f;-><init>()V

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static zoomOut()Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/c/g;

    invoke-direct {v1}, Lcom/tencent/mapsdk/rastercore/c/g;-><init>()V

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method

.method public static zoomTo(F)Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/c/h;

    invoke-direct {v1}, Lcom/tencent/mapsdk/rastercore/c/h;-><init>()V

    invoke-virtual {v1, p0}, Lcom/tencent/mapsdk/rastercore/c/h;->a(F)V

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;-><init>(Lcom/tencent/mapsdk/rastercore/c/a;)V

    return-object v0
.end method
