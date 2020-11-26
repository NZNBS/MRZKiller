.class final Lc/t/m/g/db$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Lc/t/m/g/db;


# direct methods
.method constructor <init>(Lc/t/m/g/db;Landroid/os/Handler;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lc/t/m/g/db$1;->b:Lc/t/m/g/db;

    iput-object p2, p0, Lc/t/m/g/db$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 171
    iget-object v1, v0, Lc/t/m/g/db$1;->b:Lc/t/m/g/db;

    iget-object v1, v1, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 172
    iget-object v1, v0, Lc/t/m/g/db$1;->b:Lc/t/m/g/db;

    iget-object v2, v0, Lc/t/m/g/db$1;->a:Landroid/os/Handler;

    iget-object v3, v1, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, v1, Lc/t/m/g/db;->g:Z

    if-eqz v5, :cond_4

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/t/m/g/db$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v4, Lc/t/m/g/db$a;->d:Lc/t/m/g/db$a;

    if-ne v4, v7, :cond_0

    return-void

    :cond_0
    iget-object v4, v7, Lc/t/m/g/db$a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v4, v1, Lc/t/m/g/db;->b:Lc/t/m/g/ci;

    invoke-static {v7}, Lc/t/m/g/db$a;->c(Lc/t/m/g/db$a;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7}, Lc/t/m/g/db$a;->a(Lc/t/m/g/db$a;)[B

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lc/t/m/g/ci;->a(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "result"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v8

    iget-wide v13, v1, Lc/t/m/g/db;->c:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v1, Lc/t/m/g/db;->c:J

    iget-wide v13, v1, Lc/t/m/g/db;->d:J

    invoke-static {v7}, Lc/t/m/g/db$a;->a(Lc/t/m/g/db$a;)[B

    move-result-object v15

    array-length v15, v15

    int-to-long v5, v15

    add-long/2addr v13, v5

    iput-wide v13, v1, Lc/t/m/g/db;->d:J

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lc/t/m/g/b$a;->b([B)[B

    move-result-object v5

    iget-wide v13, v1, Lc/t/m/g/db;->e:J

    if-eqz v5, :cond_1

    array-length v5, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    int-to-long v5, v5

    add-long/2addr v13, v5

    iput-wide v13, v1, Lc/t/m/g/db;->e:J

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    long-to-int v6, v11

    iput v6, v5, Landroid/os/Message;->arg1:I

    iput-wide v8, v7, Lc/t/m/g/db$a;->c:J

    iget-boolean v6, v1, Lc/t/m/g/db;->h:Z

    const/4 v8, 0x1

    if-nez v6, :cond_2

    invoke-static {v7}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result v6

    if-ne v8, v6, :cond_2

    invoke-static {v10, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v6, 0x1387

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    invoke-static {v7}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, v1, Lc/t/m/g/db;->b:Lc/t/m/g/ci;

    invoke-virtual {v5}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object v5

    iget-wide v5, v5, Lc/t/m/g/cj;->p:J

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-nez v10, :cond_3

    iget-object v5, v1, Lc/t/m/g/db;->b:Lc/t/m/g/ci;

    invoke-virtual {v5}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object v5

    iput-wide v11, v5, Lc/t/m/g/cj;->p:J

    iget-object v5, v1, Lc/t/m/g/db;->b:Lc/t/m/g/ci;

    invoke-virtual {v5}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object v5

    const-string v6, "req_key"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lc/t/m/g/cj;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_3
    move-object v4, v7

    goto/16 :goto_0

    :catch_1
    move-object v4, v7

    :catch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v1, v4}, Lc/t/m/g/db;->b(Lc/t/m/g/db$a;)V

    const/16 v5, 0x1386

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_3
    nop

    goto/16 :goto_0

    :cond_4
    return-void
.end method
