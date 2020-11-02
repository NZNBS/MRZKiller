.class final Lc/t/m/g/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lc/t/m/g/bm;


# direct methods
.method constructor <init>(Lc/t/m/g/bm;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lc/t/m/g/be;

    invoke-direct {v3}, Lc/t/m/g/be;-><init>()V

    iget-object v4, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {v4}, Lc/t/m/g/bm;->c(Lc/t/m/g/bm;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/t/m/g/bi;

    invoke-virtual {v5, v3}, Lc/t/m/g/bi;->a(Lc/t/m/g/be;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lc/t/m/g/be;->a()[B

    move-result-object v6

    invoke-static {v6}, Lc/t/m/g/ce;->a([B)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v4, "https://yun-hl.3g.qq.com/halleycloud"

    invoke-static {}, Lc/t/m/g/ce;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/bv;->e()Lc/t/m/g/r;

    move-result-object v10

    new-instance v11, Lc/t/m/g/af;

    const/4 v5, 0x0

    const/16 v7, 0x3a98

    const/4 v9, 0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lc/t/m/g/af;-><init>(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;ZLc/t/m/g/r;)V

    const-string v3, "platform"

    iput-object v3, v11, Lc/t/m/g/af;->m:Ljava/lang/String;

    invoke-virtual {v11}, Lc/t/m/g/af;->a()Lc/t/m/g/ah;

    move-result-object v3

    iget v4, v3, Lc/t/m/g/ah;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v5, v3, Lc/t/m/g/ah;->a:I

    if-nez v5, :cond_1

    iget v5, v3, Lc/t/m/g/ah;->c:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    iget-object v5, v3, Lc/t/m/g/ah;->d:[B

    invoke-static {v5}, Lc/t/m/g/ce;->a([B)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_1

    :try_start_2
    new-instance v5, Ljava/lang/String;

    iget-object v3, v3, Lc/t/m/g/ah;->d:[B

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc/t/m/g/o;->e()V

    iget-object v5, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {v5}, Lc/t/m/g/bm;->c(Lc/t/m/g/bm;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/t/m/g/bi;

    invoke-virtual {v6, v3}, Lc/t/m/g/bi;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iput-wide v5, v11, Lc/t/m/g/af;->j:J

    invoke-virtual {v11, v2}, Lc/t/m/g/af;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move v2, v4

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;Ljava/lang/String;)Lc/t/m/g/bm$a;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lc/t/m/g/bm$a;->a:J

    iput v2, v0, Lc/t/m/g/bm$a;->b:I

    iget-object v0, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {v0}, Lc/t/m/g/bm;->b(Lc/t/m/g/bm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {v1}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;Ljava/lang/String;)Lc/t/m/g/bm$a;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lc/t/m/g/bm$a;->a:J

    iput v2, v1, Lc/t/m/g/bm$a;->b:I

    iget-object v1, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {v1}, Lc/t/m/g/bm;->b(Lc/t/m/g/bm;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/br;->a:Lc/t/m/g/bm;

    invoke-static {v2}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v0
.end method
