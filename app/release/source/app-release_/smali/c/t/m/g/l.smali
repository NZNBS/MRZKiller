.class public final Lc/t/m/g/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "null"

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Z = true

.field public static f:Z = false

.field private static g:Landroid/content/Context; = null

.field private static h:Ljava/lang/String; = null

.field private static i:J = 0x0L

.field private static j:I = 0x0

.field private static k:Z = false

.field private static l:Ljava/lang/String; = ""

.field private static m:Ljava/lang/String; = "3.4.0.7"

.field private static n:Ljava/lang/String; = ""

.field private static o:Z = false

.field private static p:Ljava/lang/String; = ""

.field private static q:Landroid/os/Handler; = null

.field private static volatile r:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(IZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lc/t/m/g/l;->i:J

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc/t/m/g/l;->g:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/t/m/g/l;->l:Ljava/lang/String;

    sput p0, Lc/t/m/g/l;->j:I

    sput-boolean p1, Lc/t/m/g/l;->k:Z

    invoke-static {p3}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result p0

    const-string p1, ""

    if-eqz p0, :cond_0

    move-object p3, p1

    :cond_0
    sput-object p3, Lc/t/m/g/l;->c:Ljava/lang/String;

    invoke-static {p4}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p4, p1

    :cond_1
    sput-object p4, Lc/t/m/g/l;->d:Ljava/lang/String;

    const-string p0, "3.4.0.7"

    sput-object p0, Lc/t/m/g/l;->m:Ljava/lang/String;

    new-instance p0, Landroid/os/Handler;

    sget-object p1, Lc/t/m/g/l;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p1, Lc/t/m/g/l;->a:Ljava/lang/String;

    iget p1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/t/m/g/l;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sput-object p5, Lc/t/m/g/l;->n:Ljava/lang/String;

    sget-object p0, Lc/t/m/g/l;->l:Ljava/lang/String;

    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lc/t/m/g/l;->o:Z

    invoke-static {}, Lc/t/m/g/ce;->d()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/t/m/g/l;->h:Ljava/lang/String;

    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "HalleyTempTaskThread"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lc/t/m/g/l;->q:Landroid/os/Handler;

    invoke-static {}, Lc/t/m/g/o;->a()V

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lc/t/m/g/l;->j:I

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static d()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lc/t/m/g/l;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/l;->k:Z

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/l;->o:Z

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/t/m/g/l;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc/t/m/g/l;->p:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lc/t/m/g/l;->n:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static j()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->q:Landroid/os/Handler;

    return-object v0
.end method
