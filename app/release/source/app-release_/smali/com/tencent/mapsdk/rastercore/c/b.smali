.class public final Lcom/tencent/mapsdk/rastercore/c/b;
.super Lcom/tencent/mapsdk/rastercore/c/a;


# instance fields
.field private d:I

.field private e:I

.field private f:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->d:I

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->f:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 12

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->e:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->getHeight()I

    move-result v1

    :cond_0
    iget v2, p0, Lcom/tencent/mapsdk/rastercore/c/b;->g:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->e:I

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->d:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->getWidth()I

    move-result v1

    :cond_1
    iget v2, p0, Lcom/tencent/mapsdk/rastercore/c/b;->g:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->d:I

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/c/b;->e:I

    if-eqz v2, :cond_5

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->f:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getNortheast()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/c/b;->f:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->getSouthwest()Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v2

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v1

    invoke-static {v2}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v7

    sub-double/2addr v5, v7

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->e:I

    int-to-float v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v7, v7, v8

    iget v8, p0, Lcom/tencent/mapsdk/rastercore/c/b;->d:I

    int-to-float v9, v8

    div-float/2addr v7, v9

    div-double v9, v3, v5

    double-to-float v9, v9

    const-wide v10, 0x41031bf8456d5cfbL    # 156543.0339

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    int-to-double v7, v1

    mul-double v7, v7, v10

    div-double/2addr v7, v3

    goto :goto_0

    :cond_3
    int-to-double v7, v8

    mul-double v7, v7, v10

    div-double/2addr v7, v5

    :goto_0
    double-to-float v1, v7

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object p1

    new-instance v7, Lcom/tencent/mapsdk/rastercore/b/a;

    const/4 v8, 0x0

    float-to-double v9, v1

    invoke-direct {v7, v8, v9, v10}, Lcom/tencent/mapsdk/rastercore/b/a;-><init>(ID)V

    invoke-virtual {p1, v7}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/rastercore/b/a;)Lcom/tencent/mapsdk/rastercore/b/a;

    move-result-object p1

    new-instance v1, Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v9

    add-double/2addr v7, v5

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v5

    div-double/2addr v3, v9

    add-double/2addr v5, v3

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    iget-boolean v2, p0, Lcom/tencent/mapsdk/rastercore/c/b;->a:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/tencent/mapsdk/rastercore/c/b;->b:J

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/c/b;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/c;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/b;->b(Lcom/tencent/mapsdk/rastercore/b/c;)V

    :goto_1
    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/b/a;->c()D

    move-result-wide v1

    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->a:Z

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/c/b;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->e:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/c/b;->g:I

    return-void
.end method
