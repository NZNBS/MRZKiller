.class public Lcom/tencent/lbssearch/a/d/f;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/lbssearch/a/d/e;

.field private final c:Lcom/tencent/lbssearch/a/d/m;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/tencent/lbssearch/a/d/e;Lcom/tencent/lbssearch/a/d/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;>;",
            "Lcom/tencent/lbssearch/a/d/e;",
            "Lcom/tencent/lbssearch/a/d/m;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/f;->d:Z

    .line 56
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;

    .line 57
    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/f;->b:Lcom/tencent/lbssearch/a/d/e;

    .line 58
    iput-object p3, p0, Lcom/tencent/lbssearch/a/d/f;->c:Lcom/tencent/lbssearch/a/d/m;

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/d/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;)V"
        }
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/d/j;->b()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;",
            "Lcom/tencent/lbssearch/a/d/q;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/d/j;->a(Lcom/tencent/lbssearch/a/d/q;)Lcom/tencent/lbssearch/a/d/q;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/f;->c:Lcom/tencent/lbssearch/a/d/m;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/a/d/m;->a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/f;->d:Z

    .line 67
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/f;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 80
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 82
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/f;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/lbssearch/a/d/j;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "network-queue-take"

    .line 96
    invoke-virtual {v2, v3}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/tencent/lbssearch/a/d/j;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "network-discard-cancelled"

    .line 101
    invoke-virtual {v2, v3}, Lcom/tencent/lbssearch/a/d/j;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/d/f;->a(Lcom/tencent/lbssearch/a/d/j;)V

    .line 108
    iget-object v3, p0, Lcom/tencent/lbssearch/a/d/f;->b:Lcom/tencent/lbssearch/a/d/e;

    invoke-interface {v3, v2}, Lcom/tencent/lbssearch/a/d/e;->a(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/h;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 109
    invoke-virtual {v2, v4}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 113
    iget-boolean v4, v3, Lcom/tencent/lbssearch/a/d/h;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/tencent/lbssearch/a/d/j;->s()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "not-modified"

    .line 114
    invoke-virtual {v2, v3}, Lcom/tencent/lbssearch/a/d/j;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v2, v3}, Lcom/tencent/lbssearch/a/d/j;->a(Lcom/tencent/lbssearch/a/d/h;)Lcom/tencent/lbssearch/a/d/l;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 120
    invoke-virtual {v2, v4}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Lcom/tencent/lbssearch/a/d/j;->r()V

    .line 124
    iget-object v4, p0, Lcom/tencent/lbssearch/a/d/f;->c:Lcom/tencent/lbssearch/a/d/m;

    invoke-interface {v4, v2, v3}, Lcom/tencent/lbssearch/a/d/m;->a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;)V
    :try_end_1
    .catch Lcom/tencent/lbssearch/a/d/q; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 129
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Lcom/tencent/lbssearch/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v4, Lcom/tencent/lbssearch/a/d/q;

    invoke-direct {v4, v3}, Lcom/tencent/lbssearch/a/d/q;-><init>(Ljava/lang/Throwable;)V

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/lbssearch/a/d/q;->a(J)V

    .line 132
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/f;->c:Lcom/tencent/lbssearch/a/d/m;

    invoke-interface {v0, v2, v4}, Lcom/tencent/lbssearch/a/d/m;->a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/lbssearch/a/d/q;->a(J)V

    .line 127
    invoke-direct {p0, v2, v3}, Lcom/tencent/lbssearch/a/d/f;->a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    goto :goto_0

    :catch_2
    nop

    .line 89
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/d/f;->d:Z

    if-eqz v0, :cond_0

    return-void
.end method
