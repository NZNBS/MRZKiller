.class public Lcom/mrz/activity/Loader;
.super Landroid/app/Service;
.source "s"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 283
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x176bbe33e27L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "ragpe|s\u0018"

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic ALLATORIxDEMO()V
    .locals 0

    .line 131
    invoke-static {p0, p0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Landroid/content/Context;Landroid/app/Service;)V

    return-void
.end method

.method public static synthetic lambda$ViddivbbgJSBd3J53Ik-j_cUhIo(Lcom/mrz/activity/Loader;)V
    .locals 0

    invoke-direct {p0}, Lcom/mrz/activity/Loader;->ALLATORIxDEMO()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 104
    new-instance v1, Lcom/mrz/activity/-$$Lambda$Loader$ViddivbbgJSBd3J53Ik-j_cUhIo;

    invoke-direct {v1, p0}, Lcom/mrz/activity/-$$Lambda$Loader$ViddivbbgJSBd3J53Ik-j_cUhIo;-><init>(Lcom/mrz/activity/Loader;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 497
    invoke-static {}, Lcom/mrz/stuff/a;->C()V

    .line 439
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 4

    .line 416
    invoke-virtual {p0}, Lcom/mrz/activity/Loader;->stopSelf()V

    const-wide/16 v0, 0x64

    .line 70
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Z$R9M"

    .line 398
    invoke-static {v0}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "uXXS\\E\u0019rkeve\u0019\r\u0019"

    invoke-static {v3}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
