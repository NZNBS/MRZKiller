.class public final Lc/t/m/g/cz;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# instance fields
.field private final a:Lc/t/m/g/ci;

.field private b:Z


# direct methods
.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    iput-object p1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/ci;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 38
    iget-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    .line 44
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 3

    .line 29
    iget-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lc/t/m/g/cz;->b:Z

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 66
    iget-object p1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/ci;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_1
    invoke-static {p1}, Lc/t/m/g/b$a;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/ci;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_2
    iget-object p1, p0, Lc/t/m/g/cz;->a:Lc/t/m/g/ci;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
