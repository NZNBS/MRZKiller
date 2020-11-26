.class public final Lc/t/m/g/dc;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/dc$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lc/t/m/g/dc$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lc/t/m/g/ct;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    const/16 v0, 0xa

    .line 48
    iput v0, p0, Lc/t/m/g/dc;->a:I

    const/4 v0, 0x4

    .line 49
    iput v0, p0, Lc/t/m/g/dc;->b:I

    .line 50
    new-instance v0, Lc/t/m/g/ct;

    invoke-direct {v0}, Lc/t/m/g/ct;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dc;->d:Lc/t/m/g/ct;

    return-void
.end method

.method private declared-synchronized a(Lc/t/m/g/dc$a;Lc/t/m/g/ci;Z)Z
    .locals 12

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    .line 192
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 195
    :cond_0
    iget v1, p1, Lc/t/m/g/dc$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 196
    monitor-exit p0

    return v0

    .line 199
    :cond_1
    :try_start_1
    iget v1, p1, Lc/t/m/g/dc$a;->d:I

    if-ne v1, v0, :cond_2

    .line 201
    invoke-static {p2}, Lc/t/m/g/ec;->a(Lc/t/m/g/ci;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lc/t/m/g/ec;->b(Lc/t/m/g/ci;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 202
    monitor-exit p0

    return v0

    .line 206
    :cond_2
    :try_start_2
    iget-wide p2, p1, Lc/t/m/g/dc$a;->c:J

    iget-object v1, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/dc$a;

    iget-wide v1, v1, Lc/t/m/g/dc$a;->c:J

    sub-long/2addr p2, v1

    const-wide/32 v1, 0x1d4c0

    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    .line 207
    iget-object p1, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    monitor-exit p0

    return v0

    .line 210
    :cond_3
    :try_start_3
    iget-object p2, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    iget p3, p0, Lc/t/m/g/dc;->b:I

    const/4 v1, 0x0

    if-lt p2, p3, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_9

    .line 213
    iget-object p2, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x0

    .line 218
    :cond_5
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 219
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/t/m/g/dc$a;

    .line 220
    iget-wide v4, v3, Lc/t/m/g/dc$a;->a:D

    iget-wide v6, v3, Lc/t/m/g/dc$a;->b:D

    iget-wide v8, p1, Lc/t/m/g/dc$a;->a:D

    iget-wide v10, p1, Lc/t/m/g/dc$a;->b:D

    invoke-static/range {v4 .. v11}, Lc/t/m/g/b$a;->a(DDDD)D

    move-result-wide v4

    iget-wide v6, v3, Lc/t/m/g/dc$a;->c:J

    iget-wide v8, p1, Lc/t/m/g/dc$a;->c:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_7

    add-int/lit8 p3, p3, 0x1

    :cond_7
    add-int/2addr v2, v0

    .line 224
    iget v3, p0, Lc/t/m/g/dc;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-le v2, v3, :cond_5

    :cond_8
    if-le p3, v0, :cond_9

    .line 232
    monitor-exit p0

    return v1

    .line 235
    :cond_9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 193
    :cond_a
    :goto_2
    monitor-exit p0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 134
    iget-object v0, p0, Lc/t/m/g/dc;->d:Lc/t/m/g/ct;

    invoke-virtual {v0}, Lc/t/m/g/ct;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lc/t/m/g/dw;)V
    .locals 32

    move-object/from16 v1, p0

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v2, "gps_kalman"

    invoke-virtual {v0, v2}, Lc/t/m/g/cg;->d(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 165
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, v1, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_15

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 174
    :cond_1
    iget-object v0, v1, Lc/t/m/g/dc;->d:Lc/t/m/g/ct;

    invoke-virtual/range {p1 .. p1}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lc/t/m/g/dw;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual/range {p1 .. p1}, Lc/t/m/g/dw;->getTime()J

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v6, v10

    if-gez v12, :cond_2

    move-wide v6, v10

    :cond_2
    iget-wide v12, v0, Lc/t/m/g/ct;->d:D

    iget-wide v12, v0, Lc/t/m/g/ct;->e:D

    iget-wide v12, v0, Lc/t/m/g/ct;->c:J

    sub-long v12, v8, v12

    const-wide/16 v14, 0x4e20

    cmp-long v16, v12, v14

    if-ltz v16, :cond_3

    invoke-virtual {v0}, Lc/t/m/g/ct;->a()V

    iget-wide v12, v0, Lc/t/m/g/ct;->c:J

    :cond_3
    iget-wide v12, v0, Lc/t/m/g/ct;->d:D

    sub-double v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double v12, v12, v14

    double-to-float v12, v12

    iput v12, v0, Lc/t/m/g/ct;->a:F

    iget-wide v12, v0, Lc/t/m/g/ct;->e:D

    sub-double v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double v12, v12, v14

    double-to-float v12, v12

    iput v12, v0, Lc/t/m/g/ct;->b:F

    iget v12, v0, Lc/t/m/g/ct;->a:F

    iget v12, v0, Lc/t/m/g/ct;->b:F

    iget-wide v12, v0, Lc/t/m/g/ct;->f:D

    const-wide/16 v14, 0x0

    cmpg-double v16, v12, v14

    if-gez v16, :cond_4

    iput-wide v8, v0, Lc/t/m/g/ct;->c:J

    iput-wide v2, v0, Lc/t/m/g/ct;->d:D

    iput-wide v4, v0, Lc/t/m/g/ct;->e:D

    mul-double v6, v6, v6

    iput-wide v6, v0, Lc/t/m/g/ct;->f:D

    goto/16 :goto_2

    :cond_4
    iget-wide v12, v0, Lc/t/m/g/ct;->c:J

    sub-long v12, v8, v12

    const-wide/16 v16, 0x3e8

    cmp-long v18, v12, v16

    if-gez v18, :cond_5

    move-wide/from16 v12, v16

    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v20, v12, v18

    if-lez v20, :cond_6

    iget-wide v10, v0, Lc/t/m/g/ct;->f:D

    long-to-double v14, v12

    add-double/2addr v10, v14

    iput-wide v10, v0, Lc/t/m/g/ct;->f:D

    iget-wide v10, v0, Lc/t/m/g/ct;->g:D

    add-double/2addr v10, v14

    iput-wide v10, v0, Lc/t/m/g/ct;->g:D

    :cond_6
    iget-wide v10, v0, Lc/t/m/g/ct;->f:D

    iget-wide v14, v0, Lc/t/m/g/ct;->f:D

    move-wide/from16 v22, v8

    mul-double v8, v6, v6

    add-double/2addr v14, v8

    move-wide/from16 v24, v6

    iget v6, v0, Lc/t/m/g/ct;->a:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v6, v6, v7

    move-wide/from16 v26, v8

    float-to-double v7, v6

    add-double/2addr v14, v7

    div-double/2addr v10, v14

    iget-wide v6, v0, Lc/t/m/g/ct;->g:D

    iget-wide v14, v0, Lc/t/m/g/ct;->g:D

    add-double v14, v14, v26

    iget v8, v0, Lc/t/m/g/ct;->b:F

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float v8, v8, v9

    float-to-double v8, v8

    add-double/2addr v14, v8

    div-double/2addr v6, v14

    const-wide v8, 0x3fd999999999999aL    # 0.4

    cmpl-double v14, v10, v8

    if-ltz v14, :cond_d

    cmpl-double v14, v6, v8

    if-ltz v14, :cond_d

    iget-wide v8, v0, Lc/t/m/g/ct;->d:D

    iget-wide v14, v0, Lc/t/m/g/ct;->h:D

    const-wide/16 v20, 0x0

    cmpl-double v28, v14, v20

    if-lez v28, :cond_7

    iget-wide v14, v0, Lc/t/m/g/ct;->d:D

    sub-double v14, v2, v14

    cmpl-double v28, v14, v20

    if-gtz v28, :cond_8

    :cond_7
    iget-wide v14, v0, Lc/t/m/g/ct;->h:D

    cmpg-double v28, v14, v20

    if-gez v28, :cond_9

    iget-wide v14, v0, Lc/t/m/g/ct;->d:D

    sub-double v14, v2, v14

    cmpg-double v28, v14, v20

    if-gez v28, :cond_9

    :cond_8
    iget-wide v14, v0, Lc/t/m/g/ct;->d:D

    move-wide/from16 v28, v6

    iget-wide v6, v0, Lc/t/m/g/ct;->h:D

    move-wide/from16 v30, v4

    div-long v4, v12, v16

    long-to-double v4, v4

    mul-double v6, v6, v4

    add-double/2addr v14, v6

    iput-wide v14, v0, Lc/t/m/g/ct;->d:D

    goto :goto_0

    :cond_9
    move-wide/from16 v30, v4

    move-wide/from16 v28, v6

    :goto_0
    iget-wide v4, v0, Lc/t/m/g/ct;->d:D

    iget-wide v6, v0, Lc/t/m/g/ct;->d:D

    sub-double v6, v2, v6

    mul-double v6, v6, v10

    add-double/2addr v4, v6

    iput-wide v4, v0, Lc/t/m/g/ct;->d:D

    iget-wide v4, v0, Lc/t/m/g/ct;->d:D

    iget-wide v4, v0, Lc/t/m/g/ct;->d:D

    sub-double/2addr v4, v8

    div-long v6, v12, v16

    long-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, v0, Lc/t/m/g/ct;->h:D

    iget-wide v4, v0, Lc/t/m/g/ct;->e:D

    iget-wide v6, v0, Lc/t/m/g/ct;->i:D

    const-wide/16 v8, 0x0

    cmpl-double v14, v6, v8

    if-lez v14, :cond_a

    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    sub-double v6, v30, v6

    cmpl-double v14, v6, v8

    if-gtz v14, :cond_b

    :cond_a
    iget-wide v6, v0, Lc/t/m/g/ct;->i:D

    cmpg-double v14, v6, v8

    if-gez v14, :cond_c

    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    sub-double v6, v30, v6

    cmpg-double v14, v6, v8

    if-gez v14, :cond_c

    :cond_b
    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    iget-wide v8, v0, Lc/t/m/g/ct;->i:D

    div-long v14, v12, v16

    long-to-double v14, v14

    mul-double v8, v8, v14

    add-double/2addr v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->e:D

    :cond_c
    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    iget-wide v8, v0, Lc/t/m/g/ct;->e:D

    sub-double v8, v30, v8

    mul-double v8, v8, v28

    add-double/2addr v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->e:D

    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    sub-double/2addr v6, v4

    div-long v12, v12, v16

    long-to-double v4, v12

    div-double/2addr v6, v4

    iput-wide v6, v0, Lc/t/m/g/ct;->i:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, v10

    iget-wide v8, v0, Lc/t/m/g/ct;->f:D

    mul-double v6, v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->f:D

    sub-double v4, v4, v28

    iget-wide v6, v0, Lc/t/m/g/ct;->g:D

    mul-double v4, v4, v6

    iput-wide v4, v0, Lc/t/m/g/ct;->g:D

    move-wide/from16 v4, v22

    iput-wide v4, v0, Lc/t/m/g/ct;->c:J

    iget-wide v6, v0, Lc/t/m/g/ct;->h:D

    iget-wide v6, v0, Lc/t/m/g/ct;->i:D

    goto :goto_1

    :cond_d
    move-wide/from16 v30, v4

    move-wide/from16 v28, v6

    move-wide/from16 v4, v22

    iget-wide v6, v0, Lc/t/m/g/ct;->h:D

    const-wide/16 v8, 0x0

    cmpl-double v14, v6, v8

    if-lez v14, :cond_e

    iget-wide v6, v0, Lc/t/m/g/ct;->d:D

    sub-double v6, v2, v6

    cmpl-double v14, v6, v8

    if-gtz v14, :cond_f

    :cond_e
    iget-wide v6, v0, Lc/t/m/g/ct;->h:D

    cmpg-double v14, v6, v8

    if-gez v14, :cond_10

    iget-wide v6, v0, Lc/t/m/g/ct;->d:D

    sub-double v6, v2, v6

    cmpg-double v14, v6, v8

    if-gez v14, :cond_10

    :cond_f
    iget-wide v6, v0, Lc/t/m/g/ct;->d:D

    iget-wide v8, v0, Lc/t/m/g/ct;->h:D

    div-long v14, v12, v16

    long-to-double v14, v14

    mul-double v8, v8, v14

    add-double/2addr v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->d:D

    :cond_10
    iget-wide v6, v0, Lc/t/m/g/ct;->i:D

    const-wide/16 v8, 0x0

    cmpl-double v14, v6, v8

    if-lez v14, :cond_11

    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    sub-double v6, v30, v6

    cmpl-double v14, v6, v8

    if-gtz v14, :cond_12

    :cond_11
    iget-wide v6, v0, Lc/t/m/g/ct;->i:D

    cmpg-double v14, v6, v8

    if-gez v14, :cond_13

    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    sub-double v6, v30, v6

    cmpg-double v14, v6, v8

    if-gez v14, :cond_13

    :cond_12
    iget-wide v6, v0, Lc/t/m/g/ct;->e:D

    iget-wide v8, v0, Lc/t/m/g/ct;->i:D

    div-long v14, v12, v16

    long-to-double v14, v14

    mul-double v8, v8, v14

    add-double/2addr v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->e:D

    :cond_13
    iget-wide v6, v0, Lc/t/m/g/ct;->f:D

    long-to-double v8, v12

    sub-double/2addr v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->f:D

    iget-wide v6, v0, Lc/t/m/g/ct;->g:D

    sub-double/2addr v6, v8

    iput-wide v6, v0, Lc/t/m/g/ct;->g:D

    :goto_1
    iget-wide v6, v0, Lc/t/m/g/ct;->f:D

    iget-wide v6, v0, Lc/t/m/g/ct;->g:D

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v8, v24, v6

    if-nez v8, :cond_14

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v10, v6

    if-ltz v8, :cond_14

    cmpl-double v8, v28, v6

    if-ltz v8, :cond_14

    iput-wide v2, v0, Lc/t/m/g/ct;->d:D

    move-wide/from16 v2, v30

    iput-wide v2, v0, Lc/t/m/g/ct;->e:D

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lc/t/m/g/ct;->h:D

    iput-wide v2, v0, Lc/t/m/g/ct;->i:D

    iput-wide v4, v0, Lc/t/m/g/ct;->c:J

    move-wide/from16 v6, v26

    iput-wide v6, v0, Lc/t/m/g/ct;->f:D

    .line 175
    :cond_14
    :goto_2
    iget-object v0, v1, Lc/t/m/g/dc;->d:Lc/t/m/g/ct;

    iget-wide v2, v0, Lc/t/m/g/ct;->d:D

    iget-object v0, v1, Lc/t/m/g/dc;->d:Lc/t/m/g/ct;

    iget-wide v4, v0, Lc/t/m/g/ct;->e:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lc/t/m/g/dw;->a(DD)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 169
    :cond_15
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-static {p1}, Lc/t/m/g/dc$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Lc/t/m/g/dc$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lc/t/m/g/dc;->a:I

    if-le p1, v0, :cond_0

    .line 150
    iget-object p1, p0, Lc/t/m/g/dc;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/tencent/map/geolocation/TencentLocation;Lc/t/m/g/ci;Z)Z
    .locals 0

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-static {p1}, Lc/t/m/g/dc$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Lc/t/m/g/dc$a;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lc/t/m/g/dc;->a(Lc/t/m/g/dc$a;Lc/t/m/g/ci;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
