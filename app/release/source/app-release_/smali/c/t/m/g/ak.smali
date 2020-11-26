.class public abstract Lc/t/m/g/ak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/ak$a;,
        Lc/t/m/g/ak$c;,
        Lc/t/m/g/ak$d;,
        Lc/t/m/g/ak$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:Landroid/os/Handler;

.field d:Lc/t/m/g/ap;

.field e:Ljava/util/concurrent/atomic/AtomicInteger;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Z

.field volatile h:Z

.field i:Ljava/util/concurrent/atomic/AtomicInteger;

.field j:I

.field k:Lc/t/m/g/ap$a;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/t/m/g/ak;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/t/m/g/ak;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/t/m/g/ak;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/ak;->f:Ljava/util/List;

    iput-boolean v1, p0, Lc/t/m/g/ak;->g:Z

    iput-boolean v1, p0, Lc/t/m/g/ak;->h:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/t/m/g/ak;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lc/t/m/g/ap$a;

    invoke-direct {v0, p0}, Lc/t/m/g/ap$a;-><init>(Lc/t/m/g/ak;)V

    iput-object v0, p0, Lc/t/m/g/ak;->k:Lc/t/m/g/ap$a;

    new-instance v0, Lc/t/m/g/an;

    invoke-direct {v0, p0}, Lc/t/m/g/an;-><init>(Lc/t/m/g/ak;)V

    iput-object v0, p0, Lc/t/m/g/ak;->m:Ljava/lang/Runnable;

    new-instance v0, Lc/t/m/g/ao;

    invoke-direct {v0, p0}, Lc/t/m/g/ao;-><init>(Lc/t/m/g/ak;)V

    iput-object v0, p0, Lc/t/m/g/ak;->n:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lc/t/m/g/ak;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/ak;->l:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc/t/m/g/aq;->a(Landroid/content/Context;)V

    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/t/m/g/ak;->c:Landroid/os/Handler;

    new-instance v0, Lc/t/m/g/al;

    invoke-direct {v0}, Lc/t/m/g/al;-><init>()V

    iput-object v0, p0, Lc/t/m/g/ak;->d:Lc/t/m/g/ap;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lc/t/m/g/ak;->b(ZZ)V

    invoke-virtual {p0}, Lc/t/m/g/ak;->b()I

    move-result v0

    iput v0, p0, Lc/t/m/g/ak;->j:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method final declared-synchronized a(ZZ)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lc/t/m/g/ak;->b(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Lc/t/m/g/ak;->b(ZZ)V

    :goto_0
    iget-boolean v2, p0, Lc/t/m/g/ak;->g:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lc/t/m/g/ak;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v2, p0, Lc/t/m/g/ak;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    iput-boolean v0, p0, Lc/t/m/g/ak;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Lc/t/m/g/ak$d;

    invoke-direct {v2, p0, p1, p2}, Lc/t/m/g/ak$d;-><init>(Lc/t/m/g/ak;ZZ)V

    invoke-virtual {v2, v0}, Lc/t/m/g/ak$d;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    :try_start_3
    iput-boolean v1, p0, Lc/t/m/g/ak;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract b()I
.end method

.method final b(ZZ)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object p1, p0, Lc/t/m/g/ak;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lc/t/m/g/ak;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_0
    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object p1

    iget-object p2, p0, Lc/t/m/g/ak;->m:Ljava/lang/Runnable;

    const/4 v0, 0x1

    const/16 v1, 0x3c

    const/4 v2, 0x5

    const-string v3, "report_real_timer_interval"

    invoke-static {v3, v0, v1, v2}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object p2

    iget-object v0, p0, Lc/t/m/g/ak;->n:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x2710

    goto :goto_0

    :cond_2
    const/16 p1, 0x7530

    const v1, 0x927c0

    const v2, 0xea60

    const-string v3, "report_timer_interval"

    invoke-static {v3, p1, v1, v2}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result p1

    int-to-long v1, p1

    :goto_0
    move-object p1, p2

    move-object p2, v0

    move-wide v0, v1

    :goto_1
    invoke-virtual {p1, p2, v0, v1}, Lc/t/m/g/aa;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method
