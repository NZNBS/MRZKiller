.class public final Lc/t/m/g/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lc/t/m/g/au;
.implements Lc/t/m/g/ba;


# static fields
.field private static a:Lc/t/m/g/bv;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/t/m/g/av;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lc/t/m/g/bs;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/t/m/g/bv;

    invoke-direct {v0}, Lc/t/m/g/bv;-><init>()V

    sput-object v0, Lc/t/m/g/bv;->a:Lc/t/m/g/bv;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    new-instance v0, Lc/t/m/g/bx;

    invoke-direct {v0, p0}, Lc/t/m/g/bx;-><init>(Lc/t/m/g/bv;)V

    iput-object v0, p0, Lc/t/m/g/bv;->d:Ljava/lang/Runnable;

    new-instance v0, Lc/t/m/g/by;

    invoke-direct {v0, p0}, Lc/t/m/g/by;-><init>(Lc/t/m/g/bv;)V

    iput-object v0, p0, Lc/t/m/g/bv;->e:Ljava/lang/Runnable;

    new-instance v0, Lc/t/m/g/az;

    invoke-direct {v0}, Lc/t/m/g/az;-><init>()V

    iget-object v1, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lc/t/m/g/av;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/t/m/g/ay;

    invoke-direct {v0}, Lc/t/m/g/ay;-><init>()V

    iget-object v1, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lc/t/m/g/av;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/t/m/g/aw;

    invoke-direct {v0}, Lc/t/m/g/aw;-><init>()V

    iget-object v1, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lc/t/m/g/av;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/t/m/g/bv;->d:Ljava/lang/Runnable;

    invoke-static {}, Lc/t/m/g/l;->f()Z

    move-result v1

    const-wide/16 v2, 0x7530

    if-nez v1, :cond_0

    sget-boolean v1, Lc/t/m/g/l;->e:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/t/m/g/aa;->a(Ljava/lang/Runnable;)Z

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lc/t/m/g/aa;->b(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object v0, p0, Lc/t/m/g/bv;->e:Ljava/lang/Runnable;

    invoke-static {}, Lc/t/m/g/l;->f()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lc/t/m/g/l;->e:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/t/m/g/aa;->a(Ljava/lang/Runnable;)Z

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lc/t/m/g/aa;->b(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lc/t/m/g/bv;)Lc/t/m/g/bs;
    .locals 0

    iget-object p0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    return-object p0
.end method

.method public static c()Lc/t/m/g/bv;
    .locals 1

    sget-object v0, Lc/t/m/g/bv;->a:Lc/t/m/g/bv;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    invoke-interface {v0}, Lc/t/m/g/bs;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/t/m/g/bw;

    invoke-direct {v1, p0, p1}, Lc/t/m/g/bw;-><init>(Lc/t/m/g/bv;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    invoke-interface {v0, p1}, Lc/t/m/g/bs;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lc/t/m/g/bv;->d:Ljava/lang/Runnable;

    const-string v1, "app_ipc_timertask_gap"

    const/4 v2, 0x0

    const v3, 0x36ee80

    const v4, 0xea60

    invoke-static {v1, v2, v3, v4}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lc/t/m/g/l;->f()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lc/t/m/g/l;->e:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/t/m/g/aa;->a(Ljava/lang/Runnable;)Z

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lc/t/m/g/aa;->b(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object v0, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/av;

    invoke-virtual {v1, p1, p2}, Lc/t/m/g/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lc/t/m/g/bv;->e:Ljava/lang/Runnable;

    const-string v1, "app_ipc_timertask_gap"

    const/4 v2, 0x0

    const v3, 0x36ee80

    const v4, 0xea60

    invoke-static {v1, v2, v3, v4}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    int-to-long v1, v1

    invoke-static {}, Lc/t/m/g/l;->f()Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lc/t/m/g/l;->e:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/t/m/g/aa;->a(Ljava/lang/Runnable;)Z

    invoke-static {}, Lc/t/m/g/aa;->a()Lc/t/m/g/aa;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lc/t/m/g/aa;->b(Ljava/lang/Runnable;J)V

    :cond_0
    iget-object v0, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/av;

    invoke-virtual {v1, p1, p2, p3}, Lc/t/m/g/av;->a(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a_()V
    .locals 2

    iget-object v0, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/av;

    invoke-virtual {v1}, Lc/t/m/g/av;->a_()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    invoke-interface {v0}, Lc/t/m/g/bs;->b()V

    return-void
.end method

.method public final d()Lc/t/m/g/bt;
    .locals 2

    iget-object v0, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    const-string v1, "settings"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/bt;

    return-object v0
.end method

.method public final e()Lc/t/m/g/r;
    .locals 2

    iget-object v0, p0, Lc/t/m/g/bv;->b:Ljava/util/Map;

    const-string v1, "accessscheduler"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/r;

    return-object v0
.end method

.method public final f()V
    .locals 1

    invoke-static {}, Lc/t/m/g/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc/t/m/g/bu;->c()Lc/t/m/g/bu;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    :cond_0
    iget-object v0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    invoke-interface {v0, p0}, Lc/t/m/g/bs;->a(Lc/t/m/g/ba;)V

    iget-object v0, p0, Lc/t/m/g/bv;->c:Lc/t/m/g/bs;

    invoke-interface {v0}, Lc/t/m/g/bs;->e()V

    return-void
.end method
