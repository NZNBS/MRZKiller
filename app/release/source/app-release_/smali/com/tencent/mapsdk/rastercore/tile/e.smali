.class public final Lcom/tencent/mapsdk/rastercore/tile/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/rastercore/tile/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mapsdk/rastercore/tile/e$a;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/tencent/mapsdk/rastercore/tile/a;

.field private d:Z

.field private e:Lcom/tencent/mapsdk/rastercore/tile/a/c;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/tile/e$a;Lcom/tencent/mapsdk/rastercore/tile/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->d:Z

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->e:Lcom/tencent/mapsdk/rastercore/tile/a/c;

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->a:Lcom/tencent/mapsdk/rastercore/tile/e$a;

    iput-object p2, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    return-void
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->a:Lcom/tencent/mapsdk/rastercore/tile/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/tencent/mapsdk/rastercore/tile/e$a;->b(Lcom/tencent/mapsdk/rastercore/tile/e;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/e;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/e;->e()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/e;->e()V

    throw v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->a:Lcom/tencent/mapsdk/rastercore/tile/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/tencent/mapsdk/rastercore/tile/e$a;->a(Lcom/tencent/mapsdk/rastercore/tile/e;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->a:Lcom/tencent/mapsdk/rastercore/tile/e$a;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_a

    :try_start_0
    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    iget-boolean v5, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->d:Z

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->e:Lcom/tencent/mapsdk/rastercore/tile/a/c;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v1

    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/tencent/mapsdk/rastercore/tile/a;->a(ZLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    array-length v6, v4

    if-ne v6, v5, :cond_2

    aget-byte v6, v4, v0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->d:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a()Lcom/tencent/mapsdk/rastercore/tile/a/a;

    move-result-object v4

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4, v6, v1, v5}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a(Lcom/tencent/mapsdk/rastercore/tile/a;[BZ)Z

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->e:Lcom/tencent/mapsdk/rastercore/tile/a/c;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->e:I

    add-int/2addr v4, v5

    sput v4, Lcom/tencent/mapsdk/rastercore/d/e;->e:I

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->a:I

    add-int/2addr v4, v5

    sput v4, Lcom/tencent/mapsdk/rastercore/d/e;->a:I

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->e:Lcom/tencent/mapsdk/rastercore/tile/a/c;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    array-length v6, v4

    invoke-static {v4, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-boolean v6, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->d:Z

    if-eqz v6, :cond_3

    sget v6, Lcom/tencent/mapsdk/rastercore/d/e;->f:I

    add-int/2addr v6, v5

    sput v6, Lcom/tencent/mapsdk/rastercore/d/e;->f:I

    sget v6, Lcom/tencent/mapsdk/rastercore/d/e;->c:I

    add-int/2addr v6, v5

    sput v6, Lcom/tencent/mapsdk/rastercore/d/e;->c:I

    :cond_3
    array-length v6, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v7, 0x200000

    const-string v8, "z="

    const-string v9, ",y="

    const-string v10, ";tileInfo:x="

    if-ge v6, v7, :cond_4

    :try_start_2
    new-instance v6, Lcom/tencent/mapsdk/rastercore/tile/a/c;

    iget-object v7, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lcom/tencent/mapsdk/rastercore/tile/a/c;-><init>([BI)V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a()Lcom/tencent/mapsdk/rastercore/tile/a/a;

    move-result-object v7

    iget-object v11, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v7, v6, v11}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a(Lcom/tencent/mapsdk/rastercore/tile/a/c;Lcom/tencent/mapsdk/rastercore/tile/a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :try_start_3
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap;->getErrorListener()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap;->getErrorListener()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "TileNetFetcher downLoad function occured exception when call CacheManager Put,the downloaded data length-"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->b()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->c()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->d()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "exceptionInfo:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;->collectErrorInfo(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap;->getErrorListener()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap;->getErrorListener()Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "TileNetFetcher downLoad function,the downloaded data length-"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->b()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->c()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/rastercore/tile/a;->d()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnErrorListener;->collectErrorInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decoder bitmap error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    if-nez v2, :cond_7

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",\u91cd\u8bd5\u6b21\u6570\uff1a2"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    if-ne v2, v5, :cond_8

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",\u91cd\u8bd5\u6b21\u65703"

    goto :goto_3

    :cond_8
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    const-wide/16 v4, 0x2bc

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",\u91cd\u8bd5\u6b21\u65704"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occured:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/a;->e()Lcom/tencent/mapsdk/raster/model/TileProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/tencent/mapsdk/rastercore/tile/b/b;

    if-ne v0, v1, :cond_b

    if-nez v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/tile/a;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u91cd\u8bd54\u6b21\uff0c\u4ecd\u7136\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    return-object v3
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/tile/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->e:Lcom/tencent/mapsdk/rastercore/tile/a/c;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->d:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->c:Lcom/tencent/mapsdk/rastercore/tile/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/tile/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/tile/e;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
