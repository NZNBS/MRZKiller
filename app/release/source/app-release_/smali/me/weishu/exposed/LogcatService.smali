.class public Lme/weishu/exposed/LogcatService;
.super Landroid/app/Service;
.source "LogcatService.java"


# static fields
.field private static final PATH_KEY:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "LogcatService"


# instance fields
.field private volatile mReading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lme/weishu/exposed/LogcatService;->mReading:Z

    return-void
.end method

.method static synthetic access$002(Lme/weishu/exposed/LogcatService;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lme/weishu/exposed/LogcatService;->mReading:Z

    return p1
.end method

.method private static setWorldReadable(Ljava/io/File;)V
    .locals 3

    .line 106
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.FileUtils"

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x1ed

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "setPermissions"

    .line 106
    invoke-static {v0, p0, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lme/weishu/exposed/LogcatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    new-instance v1, Ljava/io/File;

    const-string v2, "exposed_log"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 89
    invoke-static {v1}, Lme/weishu/exposed/LogcatService;->setWorldReadable(Ljava/io/File;)V

    .line 92
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v2, "error.log"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 96
    invoke-static {p1}, Lme/weishu/exposed/LogcatService;->setWorldReadable(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startReadLogcat(Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lme/weishu/exposed/LogcatService;->mReading:Z

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Lme/weishu/exposed/LogcatService$1;

    const-string v1, "exposed-logcat"

    invoke-direct {v0, p0, v1, p1}, Lme/weishu/exposed/LogcatService$1;-><init>(Lme/weishu/exposed/LogcatService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 73
    new-instance p1, Lme/weishu/exposed/LogcatService$2;

    invoke-direct {p1, p0}, Lme/weishu/exposed/LogcatService$2;-><init>(Lme/weishu/exposed/LogcatService;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "path"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-direct {p0, v0}, Lme/weishu/exposed/LogcatService;->startReadLogcat(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
