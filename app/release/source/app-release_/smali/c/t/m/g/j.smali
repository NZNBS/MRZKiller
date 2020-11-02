.class public abstract Lc/t/m/g/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lc/t/m/g/i;

.field public b:Ljava/lang/String;

.field protected c:Lc/t/m/g/ad;

.field private d:I

.field private e:I

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>(Lc/t/m/g/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lc/t/m/g/j;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/j;->g:I

    iput-object p1, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget-object v0, p1, Lc/t/m/g/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/t/m/g/j;->b:Ljava/lang/String;

    iget p1, p1, Lc/t/m/g/i;->e:I

    iput p1, p0, Lc/t/m/g/j;->d:I

    return-void
.end method


# virtual methods
.method public a()Lc/t/m/g/ah;
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/j;->f:J

    const-string v0, "app_http_proxy_timeout"

    const/16 v1, 0x4e20

    const/16 v2, 0x1388

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lc/t/m/g/j;->e:I

    iget v0, p0, Lc/t/m/g/j;->d:I

    if-gtz v0, :cond_0

    const-string v0, "app_req_timeout"

    const/16 v1, 0x3e8

    const v2, 0xf4240

    const/16 v4, 0x3a98

    invoke-static {v0, v1, v2, v4}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lc/t/m/g/j;->d:I

    :cond_0
    iget-object v0, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget v0, v0, Lc/t/m/g/i;->g:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget v0, v0, Lc/t/m/g/i;->g:I

    iget v1, p0, Lc/t/m/g/j;->d:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget v0, v0, Lc/t/m/g/i;->g:I

    iput v0, p0, Lc/t/m/g/j;->d:I

    :cond_1
    iget v0, p0, Lc/t/m/g/j;->d:I

    :goto_0
    invoke-virtual {p0, v0}, Lc/t/m/g/j;->a(I)Lc/t/m/g/ah;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/j;->d:I

    int-to-long v1, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lc/t/m/g/j;->f:J

    sub-long/2addr v4, v6

    sub-long/2addr v1, v4

    long-to-int v2, v1

    iget v1, p0, Lc/t/m/g/j;->d:I

    invoke-static {v2, v1}, Lc/t/m/g/ce;->a(II)I

    move-result v1

    iget v2, v0, Lc/t/m/g/ah;->a:I

    const/4 v4, 0x1

    if-nez v2, :cond_4

    iget v2, v0, Lc/t/m/g/ah;->c:I

    const/16 v5, 0x12c

    if-lt v2, v5, :cond_4

    iget v2, v0, Lc/t/m/g/ah;->c:I

    const/16 v5, 0x190

    if-ge v2, v5, :cond_4

    iget-object v2, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget-boolean v2, v2, Lc/t/m/g/i;->d:Z

    if-eqz v2, :cond_4

    const/16 v2, 0xc8

    if-le v1, v2, :cond_4

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lc/t/m/g/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, -0x6

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lc/t/m/g/j;->b:Ljava/lang/String;

    iget v2, p0, Lc/t/m/g/j;->g:I

    add-int/2addr v2, v4

    iput v2, p0, Lc/t/m/g/j;->g:I

    const/4 v5, 0x5

    if-le v2, v5, :cond_3

    const/4 v1, -0x5

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/t/m/g/j;->c:Lc/t/m/g/ad;

    invoke-virtual {v0, v4}, Lc/t/m/g/ad;->a(Z)V

    move v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget-boolean v1, v1, Lc/t/m/g/i;->j:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/t/m/g/j;->c:Lc/t/m/g/ad;

    iput-boolean v4, v1, Lc/t/m/g/ad;->i:Z

    iget-object v1, p0, Lc/t/m/g/j;->c:Lc/t/m/g/ad;

    iput-boolean v4, v1, Lc/t/m/g/ad;->h:Z

    iget-object v1, p0, Lc/t/m/g/j;->c:Lc/t/m/g/ad;

    iget-object v2, p0, Lc/t/m/g/j;->a:Lc/t/m/g/i;

    iget v2, v2, Lc/t/m/g/i;->g:I

    int-to-long v4, v2

    iput-wide v4, v1, Lc/t/m/g/ad;->j:J

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lc/t/m/g/j;->c:Lc/t/m/g/ad;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lc/t/m/g/j;->f:J

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lc/t/m/g/ad;->j:J

    :goto_2
    iget-object v1, p0, Lc/t/m/g/j;->c:Lc/t/m/g/ad;

    invoke-virtual {v1, v3}, Lc/t/m/g/ad;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lc/t/m/g/ah;

    const/4 v2, -0x1

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lc/t/m/g/ah;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method protected abstract a(I)Lc/t/m/g/ah;
.end method
