.class final Lc/t/m/g/ak$c;
.super Lc/t/m/g/ak$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private a:Lc/t/m/g/ak$d;

.field private synthetic b:Lc/t/m/g/ak;


# direct methods
.method public constructor <init>(Lc/t/m/g/ak;Lc/t/m/g/ak$d;)V
    .locals 1

    iput-object p1, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/t/m/g/ak$a;-><init>(Lc/t/m/g/ak;B)V

    iput-object p2, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-super {p0}, Lc/t/m/g/ak$a;->run()V

    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/t/m/g/ak;->g:Z

    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v0, v0, Lc/t/m/g/ak$d;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    iget-object v0, v0, Lc/t/m/g/ak;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget v2, v2, Lc/t/m/g/ak$d;->f:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v0, v0, Lc/t/m/g/ak$d;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-object v0, v0, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-object v4, v4, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/t/m/g/as$a;

    iget-wide v4, v4, Lc/t/m/g/as$a;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    invoke-virtual {v0}, Lc/t/m/g/ak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/as;->a(Ljava/lang/String;)Lc/t/m/g/as;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc/t/m/g/as;->a(Ljava/util/List;)V

    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    iget-boolean v0, v0, Lc/t/m/g/ak;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    iput-boolean v1, v0, Lc/t/m/g/ak;->h:Z

    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    iget-object v1, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v1, v1, Lc/t/m/g/ak$d;->c:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lc/t/m/g/ak;->a(ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v0, v0, Lc/t/m/g/ak$d;->a:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    iget-object v1, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v1, v1, Lc/t/m/g/ak$d;->b:Z

    iget-object v2, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v2, v2, Lc/t/m/g/ak$d;->c:Z

    invoke-virtual {v0, v1, v2}, Lc/t/m/g/ak;->a(ZZ)V

    return-void

    :cond_2
    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v0, v0, Lc/t/m/g/ak$d;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-boolean v0, v0, Lc/t/m/g/ak$d;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-object v0, v0, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lc/t/m/g/ak$c;->b:Lc/t/m/g/ak;

    invoke-virtual {v2}, Lc/t/m/g/ak;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/t/m/g/as;->a(Ljava/lang/String;)Lc/t/m/g/as;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/ak$c;->a:Lc/t/m/g/ak$d;

    iget-object v3, v3, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/t/m/g/as$a;

    iget-object v3, v3, Lc/t/m/g/as$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/t/m/g/as;->b(Ljava/lang/String;)J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
