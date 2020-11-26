.class public final Lc/t/m/g/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lc/t/m/g/ba;
.implements Lc/t/m/g/bs;


# static fields
.field private static a:Lc/t/m/g/bu;


# instance fields
.field private b:Lc/t/m/g/bs;

.field private c:Lc/t/m/g/ba;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/t/m/g/bu;

    invoke-direct {v0}, Lc/t/m/g/bu;-><init>()V

    sput-object v0, Lc/t/m/g/bu;->a:Lc/t/m/g/bu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/bu;->d:Z

    return-void
.end method

.method public static c()Lc/t/m/g/bu;
    .locals 1

    sget-object v0, Lc/t/m/g/bu;->a:Lc/t/m/g/bu;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->b:Lc/t/m/g/bs;

    invoke-interface {v0}, Lc/t/m/g/bs;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->b:Lc/t/m/g/bs;

    invoke-interface {v0, p1}, Lc/t/m/g/bs;->a(I)V

    return-void
.end method

.method public final a(Lc/t/m/g/ba;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/bu;->c:Lc/t/m/g/ba;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->b:Lc/t/m/g/bs;

    invoke-interface {v0, p1}, Lc/t/m/g/bs;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->c:Lc/t/m/g/ba;

    invoke-interface {v0, p1, p2}, Lc/t/m/g/ba;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->c:Lc/t/m/g/ba;

    invoke-interface {v0, p1, p2, p3}, Lc/t/m/g/ba;->a(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public final a_()V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->c:Lc/t/m/g/ba;

    invoke-interface {v0}, Lc/t/m/g/ba;->a_()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lc/t/m/g/bu;->b:Lc/t/m/g/bs;

    invoke-interface {v0}, Lc/t/m/g/bs;->b()V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc/t/m/g/bu;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lc/t/m/g/bm;->c()Lc/t/m/g/bm;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bu;->b:Lc/t/m/g/bs;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lc/t/m/g/bs;->a(Lc/t/m/g/ba;)V

    iget-object v0, p0, Lc/t/m/g/bu;->b:Lc/t/m/g/bs;

    invoke-interface {v0}, Lc/t/m/g/bs;->e()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/bu;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
