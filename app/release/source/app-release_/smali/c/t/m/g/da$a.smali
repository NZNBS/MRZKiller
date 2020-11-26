.class final Lc/t/m/g/da$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/da;


# direct methods
.method private constructor <init>(Lc/t/m/g/da;Landroid/os/Looper;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lc/t/m/g/da;Landroid/os/Looper;B)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2}, Lc/t/m/g/da$a;-><init>(Lc/t/m/g/da;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 259
    iget-object p1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    iget-boolean p1, p1, Lc/t/m/g/da;->a:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 263
    iget-object v0, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-static {v0}, Lc/t/m/g/da;->b(Lc/t/m/g/da;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-static {v0}, Lc/t/m/g/da;->b(Lc/t/m/g/da;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :catchall_0
    iget-object v0, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-virtual {v0, p1}, Lc/t/m/g/da;->onCellInfoChanged(Ljava/util/List;)V

    .line 272
    :cond_1
    iget-object p1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-static {p1}, Lc/t/m/g/da;->c(Lc/t/m/g/da;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-wide/16 v0, 0x7530

    .line 273
    invoke-virtual {p0, p1, v0, v1}, Lc/t/m/g/da$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
