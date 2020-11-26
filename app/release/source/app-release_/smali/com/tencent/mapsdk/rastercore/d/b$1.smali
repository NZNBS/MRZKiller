.class final Lcom/tencent/mapsdk/rastercore/d/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mapsdk/rastercore/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/mapsdk/rastercore/d/b;


# direct methods
.method constructor <init>(Lcom/tencent/mapsdk/rastercore/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b$1;->a:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b$1;->a:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->c(Lcom/tencent/mapsdk/rastercore/d/b;)Lcom/tencent/mapsdk/rastercore/d/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->o()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b$1;->a:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/d/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b$1;->a:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/d/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b$1;->a:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->b(Lcom/tencent/mapsdk/rastercore/d/b;)Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/b$1;->a:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->b(Lcom/tencent/mapsdk/rastercore/d/b;)Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;->onMapLoaded()V

    :cond_3
    :goto_1
    return-void
.end method
