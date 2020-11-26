.class public final Lcom/tencent/mapsdk/rastercore/c/f;
.super Lcom/tencent/mapsdk/rastercore/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/c/f;->a:Z

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/c/f;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mapsdk/rastercore/d/b;->a(ZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    return-void
.end method
