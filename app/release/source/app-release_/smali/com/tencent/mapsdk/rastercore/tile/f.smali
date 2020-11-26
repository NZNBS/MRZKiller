.class public final Lcom/tencent/mapsdk/rastercore/tile/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/rastercore/tile/f$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/tencent/mapsdk/rastercore/e/a/f;

.field private c:Lcom/tencent/mapsdk/rastercore/d/e;

.field private d:Landroid/os/Handler;

.field private e:Lcom/tencent/mapsdk/rastercore/tile/f$a;

.field private f:F


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->a:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->f:F

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/tile/f;)Lcom/tencent/mapsdk/rastercore/d/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/tile/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->b:Lcom/tencent/mapsdk/rastercore/e/a/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;-><init>()V

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    sget-object v3, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TRAFFIC:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    invoke-static {v2, v3}, Lcom/tencent/mapsdk/rastercore/tile/b/c;->a(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;)Lcom/tencent/mapsdk/raster/model/TileProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;->tileProvider(Lcom/tencent/mapsdk/raster/model/TileProvider;)Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;->diskCacheEnabled(Z)Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;->visible(Z)Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;->zIndex(F)Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->g()Lcom/tencent/mapsdk/rastercore/tile/a$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(Lcom/tencent/mapsdk/raster/model/TileOverlayOptions;)Lcom/tencent/mapsdk/rastercore/e/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->b:Lcom/tencent/mapsdk/rastercore/e/a/f;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/f$a;

    const v1, 0xea60

    invoke-direct {v0, p0, v1}, Lcom/tencent/mapsdk/rastercore/tile/f$a;-><init>(Lcom/tencent/mapsdk/rastercore/tile/f;I)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->e:Lcom/tencent/mapsdk/rastercore/tile/f$a;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->b:Lcom/tencent/mapsdk/rastercore/e/a/f;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/e/a/f;->b()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->b:Lcom/tencent/mapsdk/rastercore/e/a/f;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->e:Lcom/tencent/mapsdk/rastercore/tile/f$a;

    invoke-virtual {v2, v0}, Lcom/tencent/mapsdk/rastercore/tile/f$a;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->e:Lcom/tencent/mapsdk/rastercore/tile/f$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->e:Lcom/tencent/mapsdk/rastercore/tile/f$a;

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/f;->a:Z

    return v0
.end method
