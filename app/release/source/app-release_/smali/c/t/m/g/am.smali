.class final Lc/t/m/g/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lc/t/m/g/af;

.field private synthetic b:J

.field private synthetic c:Lc/t/m/g/al;


# direct methods
.method constructor <init>(Lc/t/m/g/al;Lc/t/m/g/af;J)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/am;->c:Lc/t/m/g/al;

    iput-object p2, p0, Lc/t/m/g/am;->a:Lc/t/m/g/af;

    iput-wide p3, p0, Lc/t/m/g/am;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/t/m/g/am;->a:Lc/t/m/g/af;

    invoke-virtual {v1}, Lc/t/m/g/af;->a()Lc/t/m/g/ah;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/am;->a:Lc/t/m/g/af;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lc/t/m/g/am;->b:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lc/t/m/g/af;->j:J

    iget-object v2, p0, Lc/t/m/g/am;->a:Lc/t/m/g/af;

    invoke-virtual {v2, v0}, Lc/t/m/g/af;->a(Z)V

    iget v2, v1, Lc/t/m/g/ah;->a:I

    if-nez v2, :cond_0

    iget v1, v1, Lc/t/m/g/ah;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    iget-object v1, p0, Lc/t/m/g/am;->c:Lc/t/m/g/al;

    invoke-static {v1, v0}, Lc/t/m/g/al;->a(Lc/t/m/g/al;Z)Z

    return-void
.end method
