.class final Lc/t/m/g/dd;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# static fields
.field private static f:Landroid/os/Handler;

.field private static final m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private final b:Lc/t/m/g/ci;

.field private final c:Landroid/net/wifi/WifiManager;

.field private d:J

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private i:Z

.field private j:Z

.field private k:J

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 276
    new-instance v0, Lc/t/m/g/dd$2;

    invoke-direct {v0}, Lc/t/m/g/dd$2;-><init>()V

    sput-object v0, Lc/t/m/g/dd;->m:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x7530

    .line 59
    iput-wide v0, p0, Lc/t/m/g/dd;->k:J

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dd;->l:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    .line 65
    invoke-virtual {p1}, Lc/t/m/g/ci;->c()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/dd;->c:Landroid/net/wifi/WifiManager;

    .line 66
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lc/t/m/g/dd;->i:Z

    .line 68
    new-instance p1, Lc/t/m/g/dd$1;

    invoke-direct {p1, p0}, Lc/t/m/g/dd$1;-><init>(Lc/t/m/g/dd;)V

    iput-object p1, p0, Lc/t/m/g/dd;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    sget-boolean v0, Lc/t/m/g/ec;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 287
    sput-boolean v0, Lc/t/m/g/ec;->a:Z

    .line 288
    invoke-direct {p0}, Lc/t/m/g/dd;->e()V

    goto :goto_1

    .line 284
    :cond_1
    :goto_0
    invoke-direct {p0}, Lc/t/m/g/dd;->e()V

    .line 291
    :cond_2
    :goto_1
    new-instance v0, Lc/t/m/g/dk;

    iget-wide v1, p0, Lc/t/m/g/dd;->d:J

    iget-object v3, p0, Lc/t/m/g/dd;->c:Landroid/net/wifi/WifiManager;

    .line 292
    invoke-static {v3}, Lc/t/m/g/ec;->a(Landroid/net/wifi/WifiManager;)I

    invoke-direct {v0, p1, v1, v2}, Lc/t/m/g/dk;-><init>(Ljava/util/List;J)V

    .line 293
    iget-object p1, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    invoke-virtual {p1, v0}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/dd;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lc/t/m/g/dd;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lc/t/m/g/dd;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lc/t/m/g/dd;->k:J

    return-wide v0
.end method

.method private c()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    invoke-static {v0}, Lc/t/m/g/ec;->b(Lc/t/m/g/ci;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/t/m/g/dd;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lc/t/m/g/dd;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lc/t/m/g/ec;->b(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 6

    .line 236
    iget-object v0, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    .line 239
    :cond_0
    iget-object v0, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 241
    iget-object v2, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dd;->d:J

    .line 244
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lc/t/m/g/dd;->a(Ljava/util/List;)V

    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 248
    iget-object v1, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 250
    iget-object v0, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 251
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 252
    iget-object v2, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dd;->d:J

    .line 255
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lc/t/m/g/dd;->a(Ljava/util/List;)V

    return-void

    .line 258
    :cond_4
    iget-object v1, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 259
    iget-object v3, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 261
    :cond_5
    iget-object v1, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 262
    iget-object v0, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 263
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 264
    iget-object v2, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 266
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dd;->d:J

    .line 267
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lc/t/m/g/dd;->a(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method private e()V
    .locals 4

    .line 297
    iget-object v0, p0, Lc/t/m/g/dd;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lc/t/m/g/ec;->a(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-wide/16 v2, 0x0

    .line 302
    invoke-virtual {p0, v2, v3}, Lc/t/m/g/dd;->b(J)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    invoke-static {v0}, Lc/t/m/g/ec;->b(Lc/t/m/g/ci;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    :cond_1
    sget-object v0, Lc/t/m/g/dd;->f:Landroid/os/Handler;

    const/16 v2, 0x22b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 319
    :cond_3
    :goto_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x5

    .line 324
    :catch_0
    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x32c7

    .line 325
    iput v2, v0, Landroid/os/Message;->what:I

    const/16 v2, 0x2ee1

    .line 326
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 327
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 328
    iget-object v1, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    invoke-virtual {v1, v0}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 95
    iget-object v0, p0, Lc/t/m/g/dd;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v1, p0, Lc/t/m/g/dd;->a:Z

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lc/t/m/g/dd;->a:Z

    .line 100
    sget-object v1, Lc/t/m/g/dd;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget-object v1, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :catch_0
    :try_start_2
    iput-object v2, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    .line 110
    iget-object v1, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 113
    :cond_1
    iget-object v1, p0, Lc/t/m/g/dd;->e:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 115
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lc/t/m/g/dd;->k:J

    return-void
.end method

.method public final a(Landroid/os/Handler;Z)V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lc/t/m/g/dd;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lc/t/m/g/dd;->a:Z

    .line 83
    iput-boolean p2, p0, Lc/t/m/g/dd;->j:Z

    .line 84
    sput-object p1, Lc/t/m/g/dd;->f:Landroid/os/Handler;

    .line 85
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 88
    :goto_0
    iget-boolean p1, p0, Lc/t/m/g/dd;->j:Z

    if-nez p1, :cond_1

    const-wide/16 p1, 0x0

    .line 89
    invoke-virtual {p0, p1, p2}, Lc/t/m/g/dd;->b(J)V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 128
    invoke-direct {p0}, Lc/t/m/g/dd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)V
    .locals 2

    .line 216
    sget-object v0, Lc/t/m/g/dd;->f:Landroid/os/Handler;

    .line 217
    iget-object v1, p0, Lc/t/m/g/dd;->h:Ljava/lang/Runnable;

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object p1, p0, Lc/t/m/g/dd;->l:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    :try_start_1
    iget-boolean v0, p0, Lc/t/m/g/dd;->j:Z

    if-eqz v0, :cond_3

    .line 139
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v1, "up_daemon_delay"

    invoke-virtual {v0, v1}, Lc/t/m/g/cg;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 144
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc/t/m/g/dd;->d:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dd;->d:J

    goto :goto_0

    .line 148
    :cond_2
    monitor-exit p1

    return-void

    .line 151
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-direct {p0}, Lc/t/m/g/dd;->e()V

    :cond_4
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 160
    :cond_5
    iget-object p2, p0, Lc/t/m/g/dd;->c:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Lc/t/m/g/ec;->c(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 161
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 163
    iget-boolean v0, p0, Lc/t/m/g/dd;->i:Z

    if-eqz v0, :cond_a

    .line 164
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v1, "up_wifis"

    invoke-virtual {v0, v1}, Lc/t/m/g/cg;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 166
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    const-wide/16 v3, 0x5

    rem-long/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v2, v1

    const/4 v1, 0x1

    :try_start_2
    iget-object v5, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    invoke-virtual {v5}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object v5

    invoke-virtual {v5}, Lc/t/m/g/cj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    rem-long/2addr v5, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v3, v5

    add-int/2addr v3, v1

    goto :goto_1

    :catch_0
    const/4 v3, 0x1

    :goto_1
    :try_start_3
    iget-object v4, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    iget-object v4, v4, Lc/t/m/g/ci;->a:Landroid/content/Context;

    const-string v5, "LocationSDK"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-ne v2, v3, :cond_8

    const-string v2, "flag_wf"

    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_9

    :try_start_4
    sget-object v2, Lc/t/m/g/dd;->f:Landroid/os/Handler;

    const/16 v3, 0x22a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v5, "WIFIS"

    invoke-static {p2}, Lc/t/m/g/ec;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v3, Lc/t/m/g/dd;->f:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "flag_wf"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "flag_wf"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flag_wf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    goto :goto_2

    .line 167
    :cond_9
    :goto_3
    iput-boolean v0, p0, Lc/t/m/g/dd;->i:Z

    .line 170
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    .line 172
    invoke-static {v0}, Lc/t/m/g/de;->a(Ljava/util/List;)V

    .line 174
    iget-object p2, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 175
    iget-object p2, p0, Lc/t/m/g/dd;->g:Ljava/util/List;

    sget-object v0, Lc/t/m/g/dd;->m:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    invoke-direct {p0}, Lc/t/m/g/dd;->d()V

    goto :goto_4

    .line 180
    :cond_b
    iget-boolean p2, p0, Lc/t/m/g/dd;->i:Z

    if-eqz p2, :cond_c

    .line 182
    iget-object p2, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/ci;

    sget-object v0, Lc/t/m/g/dk;->a:Lc/t/m/g/dk;

    invoke-virtual {p2, v0}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    .line 186
    :cond_c
    :goto_4
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    :try_start_6
    monitor-exit p1

    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return-void
.end method
