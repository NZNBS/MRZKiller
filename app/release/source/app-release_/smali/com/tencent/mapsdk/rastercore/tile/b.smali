.class public final Lcom/tencent/mapsdk/rastercore/tile/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mapsdk/rastercore/tile/e$a;


# static fields
.field private static final a:Ljava/util/concurrent/TimeUnit;

.field private static final b:I


# instance fields
.field private c:Lcom/tencent/mapsdk/rastercore/d/e;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/rastercore/tile/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/rastercore/tile/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/tencent/mapsdk/rastercore/tile/b;->a:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tencent/mapsdk/rastercore/tile/b;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->e:Ljava/util/Map;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v8, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v15, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/tile/b$1;

    invoke-direct {v1, v0}, Lcom/tencent/mapsdk/rastercore/tile/b$1;-><init>(Lcom/tencent/mapsdk/rastercore/tile/b;)V

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->j:Ljava/util/concurrent/ThreadFactory;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    sget v1, Lcom/tencent/mapsdk/rastercore/tile/b;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    const/4 v10, 0x3

    const/4 v11, 0x3

    goto :goto_0

    :cond_0
    const/4 v10, 0x4

    const/4 v11, 0x4

    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v12, 0x1e

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->j:Ljava/util/concurrent/ThreadFactory;

    move-object v9, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Lcom/tencent/mapsdk/rastercore/tile/b;->a:Ljava/util/concurrent/TimeUnit;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, v0, Lcom/tencent/mapsdk/rastercore/tile/b;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->g:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/tile/b;Lcom/tencent/mapsdk/rastercore/tile/a;ZLcom/tencent/mapsdk/rastercore/tile/a/c;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/e;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mapsdk/rastercore/tile/e;-><init>(Lcom/tencent/mapsdk/rastercore/tile/e$a;Lcom/tencent/mapsdk/rastercore/tile/a;)V

    invoke-virtual {v0, p2}, Lcom/tencent/mapsdk/rastercore/tile/e;->a(Z)V

    invoke-virtual {v0, p3}, Lcom/tencent/mapsdk/rastercore/tile/e;->a(Lcom/tencent/mapsdk/rastercore/tile/a/c;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Submit get error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/mapsdk/rastercore/tile/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/mapsdk/rastercore/tile/b;)Lcom/tencent/mapsdk/rastercore/d/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->f:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->g:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->h:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->h:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->i:Ljava/util/concurrent/ExecutorService;

    :cond_3
    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/tile/e;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/e;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/tile/a;->i()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mapsdk/rastercore/tile/a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/e;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->c:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->postInvalidate()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/mapsdk/rastercore/tile/MapTile;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/b$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mapsdk/rastercore/tile/b$2;-><init>(Lcom/tencent/mapsdk/rastercore/tile/b;Ljava/util/ArrayList;)V

    :try_start_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTiles get error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b(Lcom/tencent/mapsdk/rastercore/tile/e;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/tile/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/tile/b;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    return-void
.end method
