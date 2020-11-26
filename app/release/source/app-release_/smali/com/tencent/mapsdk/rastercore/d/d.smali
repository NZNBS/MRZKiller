.class final Lcom/tencent/mapsdk/rastercore/d/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mapsdk/rastercore/d/a$1;


# direct methods
.method constructor <init>(Lcom/tencent/mapsdk/rastercore/d/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/d;->a:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/d;->a:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b(Lcom/tencent/mapsdk/rastercore/d/a$1;)Lcom/tencent/mapsdk/rastercore/d/e;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/d;->a:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a(Lcom/tencent/mapsdk/rastercore/d/a$1;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(Z)V

    :goto_0
    return-void
.end method
