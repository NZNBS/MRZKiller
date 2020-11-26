.class public final Lcom/tencent/mapsdk/rastercore/tile/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/rastercore/tile/a$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/tencent/mapsdk/rastercore/tile/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

.field private final e:I

.field private f:Lcom/tencent/mapsdk/raster/model/TileProvider;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Z

.field private volatile j:Z

.field private k:Lcom/tencent/mapsdk/rastercore/e/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mapsdk/rastercore/tile/a$a;-><init>(B)V

    sput-object v0, Lcom/tencent/mapsdk/rastercore/tile/a;->l:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/raster/model/TileProvider;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->j:Z

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->f:Lcom/tencent/mapsdk/raster/model/TileProvider;

    iput p2, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->a:I

    iput p3, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->b:I

    iput p4, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->c:I

    iput-object p7, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->d:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    iput p5, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/e/a/f;IIII)V
    .locals 8

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/f;->f()Lcom/tencent/mapsdk/raster/model/TileProvider;

    move-result-object v1

    sget-object v6, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->CUSTOMER:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/f;->g()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mapsdk/rastercore/tile/a;-><init>(Lcom/tencent/mapsdk/raster/model/TileProvider;IIIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->k:Lcom/tencent/mapsdk/rastercore/e/a/f;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/f;->h()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->i:Z

    return-void
.end method

.method public static k()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/tencent/mapsdk/rastercore/tile/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/mapsdk/rastercore/tile/a;->l:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->k:Lcom/tencent/mapsdk/rastercore/e/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/e/a/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    nop

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    :cond_2
    return v1
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/e/a/f;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->k:Lcom/tencent/mapsdk/rastercore/e/a/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(ZLjava/lang/String;)[B
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->f:Lcom/tencent/mapsdk/raster/model/TileProvider;

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->a:I

    iget v3, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->b:I

    iget v4, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->c:I

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->d:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/tencent/mapsdk/raster/model/TileProvider;->getTile(IIILcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;[Ljava/lang/Object;)Lcom/tencent/mapsdk/raster/model/Tile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/Tile;->getData()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "get tile raises exception:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->c:I

    return v0
.end method

.method public final e()Lcom/tencent/mapsdk/raster/model/TileProvider;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->f:Lcom/tencent/mapsdk/raster/model/TileProvider;

    return-object v0
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->i:Z

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->j:Z

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->j:Z

    return v0
.end method

.method public final j()F
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->k:Lcom/tencent/mapsdk/rastercore/e/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/e/a/f;->a()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->e:I

    return v0
.end method

.method public final m()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->d:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->d:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/a;->f:Lcom/tencent/mapsdk/raster/model/TileProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
