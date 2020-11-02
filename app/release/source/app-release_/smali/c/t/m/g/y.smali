.class final Lc/t/m/g/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[Z

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/y;->a:[Z

    iput-object p2, p0, Lc/t/m/g/y;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/t/m/g/y;->a:[Z

    invoke-static {}, Lc/t/m/g/x;->c()Z

    move-result v2

    aput-boolean v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object v1, p0, Lc/t/m/g/y;->a:[Z

    invoke-static {}, Lc/t/m/g/x;->b()Z

    move-result v2

    aput-boolean v2, v1, v0

    :goto_0
    iget-object v0, p0, Lc/t/m/g/y;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
