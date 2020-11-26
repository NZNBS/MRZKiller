.class final Lc/t/m/g/da;
.super Landroid/telephony/PhoneStateListener;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/da$a;
    }
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lc/t/m/g/ci;

.field private final c:Landroid/telephony/TelephonyManager;

.field private d:Lc/t/m/g/dg;

.field private e:Landroid/telephony/ServiceState;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dg;

    .line 32
    iput-object v0, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 41
    iput-object p1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    .line 42
    invoke-virtual {p1}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/da;->c:Landroid/telephony/TelephonyManager;

    .line 43
    new-instance p1, Lc/t/m/g/da$1;

    invoke-direct {p1, p0}, Lc/t/m/g/da$1;-><init>(Lc/t/m/g/da;)V

    iput-object p1, p0, Lc/t/m/g/da;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 108
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc/t/m/g/da;)V
    .locals 1

    const/16 v0, 0x401

    .line 25
    invoke-direct {p0, v0}, Lc/t/m/g/da;->a(I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/t/m/g/dg;",
            ">;)V"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/dg;

    .line 189
    invoke-virtual {v2}, Lc/t/m/g/dg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lc/t/m/g/dg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 194
    :cond_1
    iput-object v0, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 196
    iput-object v1, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dg;

    .line 197
    iget-boolean p1, p0, Lc/t/m/g/da;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dg;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    iget-object v0, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dg;

    invoke-virtual {p1, v0}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lc/t/m/g/da;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lc/t/m/g/da;->c:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic c(Lc/t/m/g/da;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lc/t/m/g/da;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lc/t/m/g/da;->a:Z

    .line 87
    invoke-direct {p0, v0}, Lc/t/m/g/da;->a(I)V

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    iput-object v1, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    .line 93
    :cond_1
    iget-object v0, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 95
    iput-object v1, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    .line 97
    :cond_2
    iput-object v1, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 98
    iget-object v0, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 99
    iput-object v1, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    .line 101
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Handler;Z)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lc/t/m/g/da;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lc/t/m/g/da;->i:Landroid/os/Handler;

    .line 58
    iget-object p1, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    if-nez p1, :cond_1

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/t/m/g/da;->j:Ljava/util/List;

    .line 61
    :cond_1
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "new_cell_provider"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance p1, Lc/t/m/g/da$a;

    iget-object v1, p0, Lc/t/m/g/da;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lc/t/m/g/da$a;-><init>(Lc/t/m/g/da;Landroid/os/Looper;B)V

    iput-object p1, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    new-instance p1, Lc/t/m/g/da$a;

    iget-object v1, p0, Lc/t/m/g/da;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lc/t/m/g/da$a;-><init>(Lc/t/m/g/da;Landroid/os/Looper;B)V

    iput-object p1, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    .line 73
    :goto_0
    iget-object p1, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    iget-object v1, p0, Lc/t/m/g/da;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p2, :cond_2

    .line 76
    iget-object p1, p0, Lc/t/m/g/da;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 137
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-static {v2}, Lc/t/m/g/dg;->a(Landroid/telephony/CellInfo;)Lc/t/m/g/dg;

    move-result-object v2

    .line 140
    iget v3, v2, Lc/t/m/g/dg;->b:I

    if-ltz v3, :cond_2

    iget v3, v2, Lc/t/m/g/dg;->c:I

    if-ltz v3, :cond_2

    iget v3, v2, Lc/t/m/g/dg;->b:I

    const/16 v4, 0x217

    if-eq v3, v4, :cond_2

    iget v3, v2, Lc/t/m/g/dg;->c:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_0

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 151
    invoke-direct {p0, v0}, Lc/t/m/g/da;->a(Ljava/util/List;)V

    return-void

    .line 154
    :cond_4
    iget-object p1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    invoke-static {p1}, Lc/t/m/g/dx;->a(Lc/t/m/g/ci;)Landroid/telephony/CellLocation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lc/t/m/g/dg;->a(Lc/t/m/g/ci;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dg;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0, v0}, Lc/t/m/g/da;->a(Ljava/util/List;)V

    return-void

    .line 175
    :cond_5
    iget-object p1, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dg;

    if-eqz p1, :cond_6

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v0, p0, Lc/t/m/g/da;->d:Lc/t/m/g/dg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0, p1}, Lc/t/m/g/da;->a(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    .line 116
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 124
    :cond_1
    iput-object p1, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    .line 125
    iget-boolean p1, p0, Lc/t/m/g/da;->a:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/t/m/g/da;->e:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    iget-object v2, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    invoke-virtual {v2}, Lc/t/m/g/ci;->b()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    iget-object v3, v3, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-static {v3}, Lc/t/m/g/dx;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v3, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, p1

    :cond_6
    :goto_2
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x32c7

    iput v0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2ee3

    iput v0, p1, Landroid/os/Message;->arg1:I

    iput v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lc/t/m/g/da;->b:Lc/t/m/g/ci;

    invoke-virtual {v0, p1}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method
