.class public final Lcom/tencent/mapsdk/rastercore/tile/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;",
            "Lcom/tencent/mapsdk/raster/model/TileProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/tencent/mapsdk/rastercore/tile/b/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)Lcom/tencent/mapsdk/raster/model/TileProvider;
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/e;->f()Lcom/tencent/mapsdk/rastercore/d/a$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sget-object v2, Lcom/tencent/mapsdk/rastercore/tile/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapsdk/raster/model/TileProvider;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    sget-object v2, Lcom/tencent/mapsdk/rastercore/tile/b/c$1;->a:[I

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_5

    if-eq v2, v0, :cond_4

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/b/f;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/tile/b/f;-><init>(I)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/b/d;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/tile/b/d;-><init>(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/b/b;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/tile/b/b;-><init>(I)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/b/e;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/tile/b/e;-><init>(I)V

    :goto_1
    sget-object p0, Lcom/tencent/mapsdk/rastercore/tile/b/c;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
