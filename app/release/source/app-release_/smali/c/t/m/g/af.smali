.class public final Lc/t/m/g/af;
.super Lc/t/m/g/ad;


# instance fields
.field public l:Z

.field public m:Ljava/lang/String;

.field private n:Lc/t/m/g/ai;

.field private o:Lc/t/m/g/ah;

.field private p:I

.field private q:Lc/t/m/g/ae;

.field private r:Z

.field private s:Lc/t/m/g/r;

.field private t:Lc/t/m/g/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;ZLc/t/m/g/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Ljava/lang/String;",
            "Z",
            "Lc/t/m/g/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/t/m/g/ad;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/af;->l:Z

    iput-object p1, p0, Lc/t/m/g/af;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/t/m/g/af;->b:Z

    iput-object p2, p0, Lc/t/m/g/af;->c:Ljava/util/Map;

    iput-object p3, p0, Lc/t/m/g/af;->d:[B

    iput p4, p0, Lc/t/m/g/af;->e:I

    iput-object p5, p0, Lc/t/m/g/af;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lc/t/m/g/af;->r:Z

    iput-object p7, p0, Lc/t/m/g/af;->s:Lc/t/m/g/r;

    return-void
.end method


# virtual methods
.method public final a()Lc/t/m/g/ah;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lc/t/m/g/ah;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lc/t/m/g/ah;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, v0, Lc/t/m/g/af;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lc/t/m/g/ae;

    iget-object v5, v0, Lc/t/m/g/af;->a:Ljava/lang/String;

    iget-object v6, v0, Lc/t/m/g/af;->s:Lc/t/m/g/r;

    invoke-direct {v4, v3, v5, v6}, Lc/t/m/g/ae;-><init>(Ljava/net/URL;Ljava/lang/String;Lc/t/m/g/r;)V

    iput-object v4, v0, Lc/t/m/g/af;->q:Lc/t/m/g/ae;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v0, Lc/t/m/g/af;->q:Lc/t/m/g/ae;

    iget-boolean v6, v0, Lc/t/m/g/af;->r:Z

    invoke-virtual {v5, v6, v4}, Lc/t/m/g/ae;->a(ZZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget v8, v0, Lc/t/m/g/af;->e:I

    move v15, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_b

    add-int/lit8 v14, v8, 0x1

    iput v14, v0, Lc/t/m/g/af;->p:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/t/m/g/m;

    iput-object v9, v0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    iget-object v10, v0, Lc/t/m/g/af;->q:Lc/t/m/g/ae;

    invoke-virtual {v10, v9}, Lc/t/m/g/ae;->a(Lc/t/m/g/m;)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lc/t/m/g/ai;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    iget-boolean v12, v0, Lc/t/m/g/af;->b:Z

    iget-object v9, v0, Lc/t/m/g/af;->c:Ljava/util/Map;

    iget-object v1, v0, Lc/t/m/g/af;->d:[B

    iget-object v2, v0, Lc/t/m/g/af;->f:Ljava/lang/String;

    move-object/from16 v16, v9

    move-object v9, v13

    move-object/from16 v17, v3

    move-object v3, v13

    move-object/from16 v13, v16

    move/from16 v18, v14

    move-object v14, v1

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lc/t/m/g/ai;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;[BILjava/lang/String;)V

    iput-object v3, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    const/4 v1, 0x1

    if-eqz v8, :cond_0

    iput-boolean v1, v3, Lc/t/m/g/ai;->q:Z

    :cond_0
    invoke-static {}, Lc/t/m/g/o;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v8, :cond_1

    iget-object v2, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    iput-boolean v1, v2, Lc/t/m/g/ai;->n:Z

    :cond_1
    if-ne v8, v1, :cond_2

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/t/m/g/m;

    iget-object v2, v3, Lc/t/m/g/m;->a:Ljava/lang/String;

    iget-object v3, v0, Lc/t/m/g/af;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/m;

    iget-object v2, v2, Lc/t/m/g/m;->a:Ljava/lang/String;

    iget-object v3, v0, Lc/t/m/g/af;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    iput-boolean v1, v2, Lc/t/m/g/ai;->o:Z

    :cond_2
    iget-object v2, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    iget v3, v0, Lc/t/m/g/af;->p:I

    iput v3, v2, Lc/t/m/g/ai;->p:I

    iget-object v2, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    invoke-virtual {v2}, Lc/t/m/g/ai;->a()Lc/t/m/g/ah;

    move-result-object v2

    iput-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget-object v2, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    iget-boolean v2, v2, Lc/t/m/g/ai;->h:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->c:I

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    invoke-static {v2}, Lc/t/m/g/ae;->c(Lc/t/m/g/m;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lc/t/m/g/o;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lc/t/m/g/m;->b()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    invoke-static {v2}, Lc/t/m/g/ae;->b(Lc/t/m/g/m;)V

    :cond_5
    :goto_2
    iget v2, v0, Lc/t/m/g/af;->e:I

    int-to-long v2, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    sub-long/2addr v2, v9

    long-to-int v15, v2

    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->a:I

    const/16 v3, 0xc8

    if-nez v2, :cond_6

    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->c:I

    if-lt v2, v3, :cond_6

    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->c:I

    const/16 v9, 0x190

    if-lt v2, v9, :cond_8

    :cond_6
    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->a:I

    const/16 v9, -0x14

    if-eq v2, v9, :cond_8

    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->a:I

    const/16 v9, -0x12c

    if-eq v2, v9, :cond_8

    iget-object v2, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v2, v2, Lc/t/m/g/ah;->a:I

    const/16 v9, -0x132

    if-eq v2, v9, :cond_8

    add-int/lit8 v2, v5, -0x1

    if-eq v8, v2, :cond_8

    if-gt v15, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_a

    iget-object v8, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    iget v8, v8, Lc/t/m/g/ah;->a:I

    const/4 v9, -0x4

    if-ne v8, v9, :cond_a

    const/16 v8, 0x2710

    const/16 v9, 0xbb8

    const-string v10, "direct_nonet_retry_gap"

    const/4 v11, 0x0

    invoke-static {v10, v11, v8, v9}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v8

    iget-object v9, v0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    iget-wide v9, v9, Lc/t/m/g/ai;->m:J

    int-to-long v12, v8

    cmp-long v14, v9, v12

    if-ltz v14, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    sub-long/2addr v12, v9

    long-to-int v9, v12

    invoke-static {v9, v3, v8, v3}, Lc/t/m/g/ce;->a(IIII)I

    move-result v3

    int-to-long v8, v3

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :goto_5
    if-nez v2, :cond_b

    invoke-virtual {v0, v1}, Lc/t/m/g/af;->a(Z)V

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v1, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    return-object v1

    :catch_0
    iget-object v1, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    const/16 v2, -0x12c

    iput v2, v1, Lc/t/m/g/ah;->a:I

    iget-object v1, v0, Lc/t/m/g/af;->o:Lc/t/m/g/ah;

    return-object v1
.end method

.method public final a(Z)V
    .locals 4

    iget-object v0, p0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lc/t/m/g/af;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    iput-boolean v1, v0, Lc/t/m/g/ai;->h:Z

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lc/t/m/g/af;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc/t/m/g/af;->k:Ljava/lang/String;

    const-string v3, "B83"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lc/t/m/g/af;->a:Ljava/lang/String;

    invoke-static {v2}, Lc/t/m/g/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "B44"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lc/t/m/g/m;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    invoke-virtual {v2}, Lc/t/m/g/m;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "B10"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    iget v2, v2, Lc/t/m/g/m;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/t/m/g/af;->t:Lc/t/m/g/m;

    iget v3, v3, Lc/t/m/g/m;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "B45"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc/t/m/g/af;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "B53"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lc/t/m/g/af;->q:Lc/t/m/g/ae;

    iget-object v2, v2, Lc/t/m/g/ae;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lc/t/m/g/af;->q:Lc/t/m/g/ae;

    iget-object v2, v2, Lc/t/m/g/ae;->a:Ljava/lang/String;

    const-string v3, "B26"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v2, p0, Lc/t/m/g/af;->i:Z

    if-eqz v2, :cond_5

    const-string v2, "B97"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lc/t/m/g/ai;->a(ZLjava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lc/t/m/g/af;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B22"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/t/m/g/af;->m:Ljava/lang/String;

    invoke-static {v1}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lc/t/m/g/af;->m:Ljava/lang/String;

    const-string v2, "B15"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lc/t/m/g/af;->n:Lc/t/m/g/ai;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lc/t/m/g/ai;->a(ZLjava/util/Map;Ljava/util/Map;)V

    :cond_8
    return-void
.end method
