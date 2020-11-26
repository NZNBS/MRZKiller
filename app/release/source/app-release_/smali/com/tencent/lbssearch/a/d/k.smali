.class public Lcom/tencent/lbssearch/a/d/k;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/d/k$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/lbssearch/a/d/e;

.field private final e:Lcom/tencent/lbssearch/a/d/m;

.field private f:[Lcom/tencent/lbssearch/a/d/f;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/a/d/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/d/e;)V
    .locals 1

    const/4 v0, 0x4

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/tencent/lbssearch/a/d/k;-><init>(Lcom/tencent/lbssearch/a/d/e;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/d/e;I)V
    .locals 3

    .line 108
    new-instance v0, Lcom/tencent/lbssearch/a/d/d;

    new-instance v1, Landroid/os/Handler;

    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/d/d;-><init>(Landroid/os/Handler;)V

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/lbssearch/a/d/k;-><init>(Lcom/tencent/lbssearch/a/d/e;ILcom/tencent/lbssearch/a/d/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/d/e;ILcom/tencent/lbssearch/a/d/m;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->b:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->g:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/k;->d:Lcom/tencent/lbssearch/a/d/e;

    .line 97
    new-array p1, p2, [Lcom/tencent/lbssearch/a/d/f;

    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/k;->f:[Lcom/tencent/lbssearch/a/d/f;

    .line 98
    iput-object p3, p0, Lcom/tencent/lbssearch/a/d/k;->e:Lcom/tencent/lbssearch/a/d/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/d/j<",
            "TT;>;"
        }
    .end annotation

    .line 199
    invoke-virtual {p1, p0}, Lcom/tencent/lbssearch/a/d/j;->a(Lcom/tencent/lbssearch/a/d/k;)Lcom/tencent/lbssearch/a/d/j;

    .line 200
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->b:Ljava/util/Set;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/k;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/k;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/d/j;->a(I)Lcom/tencent/lbssearch/a/d/j;

    const-string v0, "add-to-queue"

    .line 206
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 202
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/k;->b()V

    const/4 v0, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/k;->f:[Lcom/tencent/lbssearch/a/d/f;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    new-instance v1, Lcom/tencent/lbssearch/a/d/f;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/k;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/tencent/lbssearch/a/d/k;->d:Lcom/tencent/lbssearch/a/d/e;

    iget-object v4, p0, Lcom/tencent/lbssearch/a/d/k;->e:Lcom/tencent/lbssearch/a/d/m;

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/lbssearch/a/d/f;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/tencent/lbssearch/a/d/e;Lcom/tencent/lbssearch/a/d/m;)V

    .line 131
    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/k;->f:[Lcom/tencent/lbssearch/a/d/f;

    aput-object v1, v2, v0

    .line 132
    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/d/f;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/k;->f:[Lcom/tencent/lbssearch/a/d/f;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 141
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 142
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/d/f;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Lcom/tencent/lbssearch/a/d/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->b:Ljava/util/Set;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/k;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/k;->g:Ljava/util/List;

    monitor-enter v1

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/lbssearch/a/d/k$a;

    .line 227
    invoke-interface {v2, p1}, Lcom/tencent/lbssearch/a/d/k$a;->a(Lcom/tencent/lbssearch/a/d/j;)V

    goto :goto_0

    .line 229
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 224
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
