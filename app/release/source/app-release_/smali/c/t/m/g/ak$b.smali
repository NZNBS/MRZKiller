.class final Lc/t/m/g/ak$b;
.super Lc/t/m/g/ak$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private synthetic c:Lc/t/m/g/ak;


# direct methods
.method public constructor <init>(Lc/t/m/g/ak;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lc/t/m/g/ak$b;->c:Lc/t/m/g/ak;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/t/m/g/ak$a;-><init>(Lc/t/m/g/ak;B)V

    iput-object p2, p0, Lc/t/m/g/ak$b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/t/m/g/ak$b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-super {p0}, Lc/t/m/g/ak$a;->run()V

    iget-object v0, p0, Lc/t/m/g/ak$b;->c:Lc/t/m/g/ak;

    iget-object v0, v0, Lc/t/m/g/ak;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lc/t/m/g/ak$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/t/m/g/ak$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x32

    const/16 v3, 0xa

    const-string v4, "report_new_record_num"

    invoke-static {v4, v1, v2, v3}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    iget-object v2, p0, Lc/t/m/g/ak$b;->c:Lc/t/m/g/ak;

    invoke-virtual {v2}, Lc/t/m/g/ak;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/t/m/g/as;->a(Ljava/lang/String;)Lc/t/m/g/as;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lc/t/m/g/as;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/ak$b;->c:Lc/t/m/g/ak;

    iget-object v0, v0, Lc/t/m/g/ak;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lc/t/m/g/ak$b;->c:Lc/t/m/g/ak;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lc/t/m/g/ak$b;->b:Z

    invoke-virtual {v0, v1, v2}, Lc/t/m/g/ak;->a(ZZ)V

    :cond_1
    return-void
.end method
