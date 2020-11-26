.class public final Lcom/tencent/mapsdk/rastercore/c/h;
.super Lcom/tencent/mapsdk/rastercore/c/a;


# instance fields
.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/c/h;->d:F

    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/c/h;->d:F

    float-to-double v0, v0

    iget-boolean v2, p0, Lcom/tencent/mapsdk/rastercore/c/h;->a:Z

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/c/h;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method
