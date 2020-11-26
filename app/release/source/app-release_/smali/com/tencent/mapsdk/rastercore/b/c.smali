.class public final Lcom/tencent/mapsdk/rastercore/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/b/c;->a:D

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/b/c;->b:D

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mapsdk/rastercore/b/c;->b(D)V

    invoke-virtual {p0, p3, p4}, Lcom/tencent/mapsdk/rastercore/b/c;->a(D)V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/b/c;->a:D

    return-wide v0
.end method

.method public final a(D)V
    .locals 2

    const-wide v0, 0x41731bf84570a3d7L    # 2.003750834E7

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide v0, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/mapsdk/rastercore/b/c;->a:D

    return-void
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/b/c;->b:D

    return-wide v0
.end method

.method public final b(D)V
    .locals 2

    const-wide v0, 0x41731bf84570a3d7L    # 2.003750834E7

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide v0, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/mapsdk/rastercore/b/c;->b:D

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/b/c;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    instance-of v1, p1, Lcom/tencent/mapsdk/rastercore/b/c;

    if-nez v1, :cond_2

    return v3

    :cond_2
    check-cast p1, Lcom/tencent/mapsdk/rastercore/b/c;

    iget-wide v1, p1, Lcom/tencent/mapsdk/rastercore/b/c;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v4, p0, Lcom/tencent/mapsdk/rastercore/b/c;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    iget-wide v1, p1, Lcom/tencent/mapsdk/rastercore/b/c;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v4, p0, Lcom/tencent/mapsdk/rastercore/b/c;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v3
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/b/c;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mapsdk/rastercore/b/c;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/lit8 v3, v3, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    ushr-long v4, v0, v4

    xor-long/2addr v0, v4

    long-to-int v1, v0

    add-int/2addr v3, v1

    return v3
.end method
