.class public final Lc/t/m/g/db;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/db$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lc/t/m/g/db$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lc/t/m/g/ci;

.field c:J

.field d:J

.field e:J

.field f:J

.field volatile g:Z

.field h:Z


# direct methods
.method constructor <init>(Lc/t/m/g/ci;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc/t/m/g/db;->b:Lc/t/m/g/ci;

    .line 45
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 323
    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {p1, v0}, Lc/t/m/g/cu;->a(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 327
    invoke-static {p1, p0}, Lc/t/m/g/cu;->a(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lc/t/m/g/di;I)V
    .locals 3

    :try_start_0
    const-string v0, "GBK"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/b$a;->b([B)[B

    move-result-object v0

    .line 97
    invoke-static {v0, p3}, Lc/t/m/g/db;->a([BI)Ljava/lang/String;

    move-result-object p3

    .line 98
    new-instance v1, Lc/t/m/g/db$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p3, p2}, Lc/t/m/g/db$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    .line 101
    iput-object p1, v1, Lc/t/m/g/db$a;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, v1}, Lc/t/m/g/db;->a(Lc/t/m/g/db$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method final a(Lc/t/m/g/db$a;)Z
    .locals 3

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 136
    invoke-static {p1}, Lc/t/m/g/db$a;->a(Lc/t/m/g/db$a;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 140
    iget-object v1, p0, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 143
    iget-object v1, p0, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 146
    invoke-static {p1}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {p1}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    invoke-static {p1}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result p1

    const/4 v1, 0x4

    :cond_3
    :goto_1
    return v0
.end method

.method final b(Lc/t/m/g/db$a;)V
    .locals 3

    .line 279
    invoke-static {p1}, Lc/t/m/g/db$a;->d(Lc/t/m/g/db$a;)I

    .line 282
    iget-object v0, p0, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/db$a;

    .line 283
    invoke-static {v1}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result v1

    invoke-static {p1}, Lc/t/m/g/db$a;->b(Lc/t/m/g/db$a;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 289
    :goto_0
    invoke-static {p1}, Lc/t/m/g/db$a;->e(Lc/t/m/g/db$a;)I

    move-result v1

    if-lez v1, :cond_2

    if-nez v0, :cond_2

    .line 290
    invoke-static {p1}, Lc/t/m/g/db$a;->e(Lc/t/m/g/db$a;)I

    .line 291
    iget-object v0, p0, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
