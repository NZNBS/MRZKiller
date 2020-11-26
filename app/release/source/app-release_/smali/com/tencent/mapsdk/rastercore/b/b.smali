.class public final Lcom/tencent/mapsdk/rastercore/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/rastercore/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mapsdk/rastercore/b/c;

.field private b:Lcom/tencent/mapsdk/rastercore/b/c;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/b/c;Lcom/tencent/mapsdk/rastercore/b/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mapsdk/rastercore/b/b$a;

    invoke-direct {v0}, Lcom/tencent/mapsdk/rastercore/b/b$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/b/b$a;->a(Lcom/tencent/mapsdk/rastercore/b/c;)Lcom/tencent/mapsdk/rastercore/b/b$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/mapsdk/rastercore/b/b$a;->a(Lcom/tencent/mapsdk/rastercore/b/c;)Lcom/tencent/mapsdk/rastercore/b/b$a;

    move-result-object p1

    new-instance p2, Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/b/b$a;->a(Lcom/tencent/mapsdk/rastercore/b/b$a;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/b/b$a;->b(Lcom/tencent/mapsdk/rastercore/b/b$a;)D

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    iput-object p2, p0, Lcom/tencent/mapsdk/rastercore/b/b;->a:Lcom/tencent/mapsdk/rastercore/b/c;

    new-instance p2, Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/b/b$a;->c(Lcom/tencent/mapsdk/rastercore/b/b$a;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/b/b$a;->d(Lcom/tencent/mapsdk/rastercore/b/b$a;)D

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    iput-object p2, p0, Lcom/tencent/mapsdk/rastercore/b/b;->b:Lcom/tencent/mapsdk/rastercore/b/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/mapsdk/rastercore/b/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/b/b;->a:Lcom/tencent/mapsdk/rastercore/b/c;

    return-object v0
.end method

.method public final b()Lcom/tencent/mapsdk/rastercore/b/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/b/b;->b:Lcom/tencent/mapsdk/rastercore/b/c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/mapsdk/rastercore/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tencent/mapsdk/rastercore/b/b;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/b/b;->a:Lcom/tencent/mapsdk/rastercore/b/c;

    iget-object v3, p1, Lcom/tencent/mapsdk/rastercore/b/b;->a:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v1, v3}, Lcom/tencent/mapsdk/rastercore/b/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/b/b;->b:Lcom/tencent/mapsdk/rastercore/b/c;

    iget-object p1, p1, Lcom/tencent/mapsdk/rastercore/b/b;->b:Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v1, p1}, Lcom/tencent/mapsdk/rastercore/b/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/b/b;->a:Lcom/tencent/mapsdk/rastercore/b/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/b/b;->b:Lcom/tencent/mapsdk/rastercore/b/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/b/b;->a:Lcom/tencent/mapsdk/rastercore/b/c;

    const-string v2, "southwest"

    invoke-static {v2, v1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/b/b;->b:Lcom/tencent/mapsdk/rastercore/b/c;

    const-string v2, "northeast"

    invoke-static {v2, v1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
