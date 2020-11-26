.class final Lc/t/m/g/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lc/t/m/g/bm;


# direct methods
.method constructor <init>(Lc/t/m/g/bm;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/bp;->a:Lc/t/m/g/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lc/t/m/g/o;->e()V

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/bp;->a:Lc/t/m/g/bm;

    invoke-static {v1, v0}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;Ljava/lang/String;)Lc/t/m/g/bm$a;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v3, v0, Lc/t/m/g/bm$a;->b:I

    invoke-static {v3}, Lc/t/m/g/bm;->b(I)I

    move-result v3

    iget-wide v4, v0, Lc/t/m/g/bm$a;->a:J

    sub-long/2addr v1, v4

    int-to-long v3, v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/bp;->a:Lc/t/m/g/bm;

    invoke-static {v0}, Lc/t/m/g/bm;->b(Lc/t/m/g/bm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/bp;->a:Lc/t/m/g/bm;

    invoke-static {v1}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lc/t/m/g/bp;->a:Lc/t/m/g/bm;

    invoke-static {v0}, Lc/t/m/g/bm;->b(Lc/t/m/g/bm;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/bp;->a:Lc/t/m/g/bm;

    invoke-static {v1}, Lc/t/m/g/bm;->a(Lc/t/m/g/bm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
