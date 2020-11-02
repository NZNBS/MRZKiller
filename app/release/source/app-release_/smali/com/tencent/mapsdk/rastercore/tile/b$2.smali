.class final Lcom/tencent/mapsdk/rastercore/tile/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mapsdk/rastercore/tile/b;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/tencent/mapsdk/rastercore/tile/b;


# direct methods
.method constructor <init>(Lcom/tencent/mapsdk/rastercore/tile/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    iput-object p2, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/tile/b;->a(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/tile/b;->b(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/tile/b;->b(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v1}, Lcom/tencent/mapsdk/rastercore/tile/b;->b(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v2}, Lcom/tencent/mapsdk/rastercore/tile/b;->c(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapsdk/rastercore/tile/MapTile;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/tile/MapTile;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/mapsdk/rastercore/tile/a;

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a()Lcom/tencent/mapsdk/rastercore/tile/a/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a(Lcom/tencent/mapsdk/rastercore/tile/a;)Lcom/tencent/mapsdk/rastercore/tile/a/c;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap;->getErrorListener()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap;->getErrorListener()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TileEngineManager getTiles Runnable call CacheManager Get occured Exception,tileInfo:x="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",z="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "Exception Info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;->collectErrorInfo(Ljava/lang/String;)V

    :cond_1
    move-object v5, v4

    :goto_2
    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->d()I

    move-result v6

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v8

    if-ne v6, v8, :cond_3

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->m()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v4

    sget-object v5, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    if-ne v4, v5, :cond_2

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->a:I

    add-int/2addr v4, v7

    sput v4, Lcom/tencent/mapsdk/rastercore/d/e;->a:I

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->m()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v3

    sget-object v4, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->BING:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    if-ne v3, v4, :cond_0

    sget v3, Lcom/tencent/mapsdk/rastercore/d/e;->b:I

    add-int/2addr v3, v7

    sput v3, Lcom/tencent/mapsdk/rastercore/d/e;->b:I

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->d()I

    move-result v6

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v8

    if-eq v6, v8, :cond_4

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->m()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v6

    sget-object v8, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    if-ne v6, v8, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Have got cache,but version is not ok,tileBitmap.getVersion\uff1a"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->d()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",tileData.getVersion:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v4, v3, v7, v5}, Lcom/tencent/mapsdk/rastercore/tile/b;->a(Lcom/tencent/mapsdk/rastercore/tile/b;Lcom/tencent/mapsdk/rastercore/tile/a;ZLcom/tencent/mapsdk/rastercore/tile/a/c;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v5, v3, v0, v4}, Lcom/tencent/mapsdk/rastercore/tile/b;->a(Lcom/tencent/mapsdk/rastercore/tile/b;Lcom/tencent/mapsdk/rastercore/tile/a;ZLcom/tencent/mapsdk/rastercore/tile/a/c;)V

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->m()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v4

    sget-object v5, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v4}, Lcom/tencent/mapsdk/rastercore/tile/b;->d(Lcom/tencent/mapsdk/rastercore/tile/b;)Lcom/tencent/mapsdk/rastercore/d/e;

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->c:I

    add-int/2addr v4, v7

    sput v4, Lcom/tencent/mapsdk/rastercore/d/e;->c:I

    :cond_5
    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->m()Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    move-result-object v3

    sget-object v4, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->BING:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v3}, Lcom/tencent/mapsdk/rastercore/tile/b;->d(Lcom/tencent/mapsdk/rastercore/tile/b;)Lcom/tencent/mapsdk/rastercore/d/e;

    sget v3, Lcom/tencent/mapsdk/rastercore/d/e;->d:I

    add-int/2addr v3, v7

    sput v3, Lcom/tencent/mapsdk/rastercore/d/e;->d:I

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b$2;->b:Lcom/tencent/mapsdk/rastercore/tile/b;

    invoke-static {v2}, Lcom/tencent/mapsdk/rastercore/tile/b;->d(Lcom/tencent/mapsdk/rastercore/tile/b;)Lcom/tencent/mapsdk/rastercore/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/b;->postInvalidate()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
