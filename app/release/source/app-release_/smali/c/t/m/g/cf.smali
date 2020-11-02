.class public Lc/t/m/g/cf;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/cf$b;,
        Lc/t/m/g/cf$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lc/t/m/g/cf;

.field private static c:Landroid/content/Context;


# instance fields
.field private volatile d:Z

.field private e:Landroid/app/PendingIntent;

.field private f:Lc/t/m/g/cf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lc/t/m/g/cf;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/t/m/g/cf;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lc/t/m/g/cf;->b:Lc/t/m/g/cf;

    .line 43
    sput-object v0, Lc/t/m/g/cf;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lc/t/m/g/cf;->d:Z

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lc/t/m/g/cf;->e:Landroid/app/PendingIntent;

    .line 51
    iput-object v1, p0, Lc/t/m/g/cf;->f:Lc/t/m/g/cf$a;

    .line 54
    sget-object v1, Lc/t/m/g/cf;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lc/t/m/g/cf$a;

    invoke-direct {v1, p0, v0}, Lc/t/m/g/cf$a;-><init>(Lc/t/m/g/cf;B)V

    iput-object v1, p0, Lc/t/m/g/cf;->f:Lc/t/m/g/cf$a;

    .line 59
    sget-object v1, Lc/t/m/g/cf;->c:Landroid/content/Context;

    invoke-static {}, Lc/t/m/g/cf;->i()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cf;->e:Landroid/app/PendingIntent;

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke initial(context,...) first when app started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lc/t/m/g/cf;
    .locals 2

    .line 117
    sget-object v0, Lc/t/m/g/cf;->b:Lc/t/m/g/cf;

    if-nez v0, :cond_1

    .line 118
    const-class v0, Lc/t/m/g/cf;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lc/t/m/g/cf;->b:Lc/t/m/g/cf;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lc/t/m/g/cf;

    invoke-direct {v1}, Lc/t/m/g/cf;-><init>()V

    sput-object v1, Lc/t/m/g/cf;->b:Lc/t/m/g/cf;

    .line 122
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Lc/t/m/g/cf;->b:Lc/t/m/g/cf;

    return-object v0
.end method

.method private a(J)V
    .locals 5

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    .line 227
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lc/t/m/g/cf$b;

    invoke-direct {p2, p0}, Lc/t/m/g/cf$b;-><init>(Lc/t/m/g/cf;)V

    const-string v0, "Th_CC"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lc/t/m/g/cf;->h()Landroid/app/AlarmManager;

    move-result-object p1

    const/4 p2, 0x2

    iget-object v2, p0, Lc/t/m/g/cf;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 89
    sput-object p0, Lc/t/m/g/cf;->c:Landroid/content/Context;

    invoke-static {p0, p1}, Lc/t/m/g/ch;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-static {p1, p2}, Lc/t/m/g/cg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance p0, Lc/t/m/g/cf$1;

    invoke-direct {p0}, Lc/t/m/g/cf$1;-><init>()V

    .line 103
    invoke-virtual {p0}, Lc/t/m/g/cf$1;->start()V

    return-void

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-static {p0}, Lc/t/m/g/cg;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lc/t/m/g/cg;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 186
    :try_start_0
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v1, "cc_version"

    invoke-virtual {v0, v1}, Lc/t/m/g/cg;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1388

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xa4cb80

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {}, Lc/t/m/g/cf;->g()J

    move-result-wide v0

    .line 196
    :goto_0
    invoke-direct {p0, v0, v1}, Lc/t/m/g/cf;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc/t/m/g/cf;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lc/t/m/g/cf;->d:Z

    return p0
.end method

.method static synthetic b(Lc/t/m/g/cf;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lc/t/m/g/cf;->a(Z)V

    return-void
.end method

.method static synthetic c(Lc/t/m/g/cf;)V
    .locals 2

    .line 35
    :try_start_0
    sget-object v0, Lc/t/m/g/cf;->c:Landroid/content/Context;

    iget-object v1, p0, Lc/t/m/g/cf;->f:Lc/t/m/g/cf$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-static {}, Lc/t/m/g/cf;->h()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cf;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p0, p0, Lc/t/m/g/cf;->e:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    throw p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lc/t/m/g/cf;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()J
    .locals 2

    .line 35
    invoke-static {}, Lc/t/m/g/cf;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    .line 35
    sget-object v0, Lc/t/m/g/cf;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static g()J
    .locals 5

    .line 203
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v1, "cc_req_interval"

    .line 204
    invoke-virtual {v0, v1}, Lc/t/m/g/cg;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method private static h()Landroid/app/AlarmManager;
    .locals 2

    .line 235
    sget-object v0, Lc/t/m/g/cf;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private static i()Landroid/content/Intent;
    .locals 2

    .line 239
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lc/t/m/g/cf;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    :try_start_0
    sget-object v1, Lc/t/m/g/cf;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 131
    iget-boolean v0, p0, Lc/t/m/g/cf;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lc/t/m/g/cf;->d:Z

    .line 135
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    sget-object v2, Lc/t/m/g/cf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    sget-object v2, Lc/t/m/g/cf;->c:Landroid/content/Context;

    iget-object v3, p0, Lc/t/m/g/cf;->f:Lc/t/m/g/cf$a;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-direct {p0, v0}, Lc/t/m/g/cf;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 150
    iget-boolean v0, p0, Lc/t/m/g/cf;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lc/t/m/g/cf;->d:Z

    .line 155
    :try_start_0
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cg;->c()V

    const-wide/16 v0, 0x0

    .line 156
    invoke-direct {p0, v0, v1}, Lc/t/m/g/cf;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
