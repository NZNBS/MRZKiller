.class public final Lcom/tencent/mapsdk/raster/model/PolylineOptions;
.super Ljava/lang/Object;


# instance fields
.field private arrowGap:F

.field private arrowTexture:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

.field private color:I

.field private edgeColor:I

.field private edgeWidth:F

.field private isDottedLine:Z

.field private isGeodesic:Z

.field private isVisible:Z

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private width:F

.field private zIndex:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isDottedLine:Z

    iput-boolean v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isGeodesic:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isVisible:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->color:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->width:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->zIndex:F

    iput v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->edgeWidth:F

    const v0, -0xf0001

    iput v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->edgeColor:I

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->arrowGap:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs add([Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->points:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;)",
            "Lcom/tencent/mapsdk/raster/model/PolylineOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final arrowGap(F)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->arrowGap:F

    :cond_0
    return-object p0
.end method

.method public final arrowTexture(Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->arrowTexture:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    :cond_0
    return-object p0
.end method

.method public final color(I)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->color:I

    return-object p0
.end method

.method public final edgeColor(I)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->edgeColor:I

    return-object p0
.end method

.method public final edgeWidth(F)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->edgeWidth:F

    :cond_0
    return-object p0
.end method

.method public final geodesic(Z)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isGeodesic:Z

    return-object p0
.end method

.method public final getArrowGap()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->arrowGap:F

    return v0
.end method

.method public final getArrowTexture()Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->arrowTexture:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getColor()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->color:I

    return v0
.end method

.method public final getEdgeColor()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->edgeColor:I

    return v0
.end method

.method public final getEdgeWidth()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->edgeWidth:F

    return v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->points:Ljava/util/List;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->width:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->zIndex:F

    return v0
.end method

.method public final isDottedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isDottedLine:Z

    return v0
.end method

.method public final isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isGeodesic:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isVisible:Z

    return v0
.end method

.method public final setDottedLine(Z)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isDottedLine:Z

    return-object p0
.end method

.method public final visible(Z)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isVisible:Z

    return-object p0
.end method

.method public final width(F)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->width:F

    return-object p0
.end method

.method public final zIndex(F)Lcom/tencent/mapsdk/raster/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->zIndex:F

    return-object p0
.end method
