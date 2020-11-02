.class public final Lc/t/m/g/al;
.super Lc/t/m/g/ap;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lc/t/m/g/ap$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/t/m/g/ap;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/al;Z)Z
    .locals 1

    iget-object v0, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iget-object p0, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p0}, Lc/t/m/g/ap$a;->a(ZLjava/lang/Object;)V

    return p1
.end method


# virtual methods
.method public final a([BIZLjava/lang/Object;Lc/t/m/g/ap$a;)Z
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-object p5, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iput-object p4, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-static {p1}, Lc/t/m/g/ce;->a([B)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    :catchall_0
    iget-object p1, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iget-object p2, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-virtual {p1, p5, p2}, Lc/t/m/g/ap$a;->a(ZLjava/lang/Object;)V

    return p5

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "B-Length"

    invoke-interface {v4, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p2, "realtime_speed"

    goto :goto_0

    :cond_1
    const-string p2, "hllog"

    :goto_0
    const-string p3, "HLReportCmd"

    invoke-interface {v4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc/t/m/g/ce;->d()Ljava/lang/String;

    move-result-object v7

    new-instance p2, Lc/t/m/g/af;

    const/16 v6, 0x4e20

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v3, "https://up-hl.3g.qq.com/upreport"

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lc/t/m/g/af;-><init>(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;ZLc/t/m/g/r;)V

    iput-boolean p5, p2, Lc/t/m/g/af;->l:Z

    const-string p1, "event"

    iput-object p1, p2, Lc/t/m/g/af;->m:Ljava/lang/String;

    new-instance p1, Lc/t/m/g/am;

    invoke-direct {p1, p0, p2, v0, v1}, Lc/t/m/g/am;-><init>(Lc/t/m/g/al;Lc/t/m/g/af;J)V

    :try_start_0
    invoke-static {}, Lc/t/m/g/w$a;->a()Lc/t/m/g/w;

    move-result-object p2

    iget-object p2, p2, Lc/t/m/g/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1
.end method
