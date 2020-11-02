.class public final Lcom/tencent/mapsdk/rastercore/c/d;
.super Lcom/tencent/mapsdk/rastercore/c/a;


# instance fields
.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->d:F

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 6

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v0

    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->a:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->d:F

    neg-float p1, p1

    float-to-int v1, p1

    iget p1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->e:F

    neg-float p1, p1

    float-to-int v2, p1

    iget-wide v3, p0, Lcom/tencent/mapsdk/rastercore/c/d;->b:J

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/c/d;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mapsdk/rastercore/d/b;->a(IIJLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->d:F

    neg-float p1, p1

    float-to-int p1, p1

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->e:F

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mapsdk/rastercore/d/b;->scrollBy(II)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/c/d;->e:F

    return-void
.end method
