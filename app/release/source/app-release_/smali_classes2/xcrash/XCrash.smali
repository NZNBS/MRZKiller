.class public final Lxcrash/XCrash;
.super Ljava/lang/Object;
.source "XCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxcrash/XCrash$InitParameters;
    }
.end annotation


# static fields
.field private static appId:Ljava/lang/String; = null

.field private static appVersion:Ljava/lang/String; = null

.field private static initialized:Z = false

.field private static logDir:Ljava/lang/String;

.field private static logger:Lxcrash/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lxcrash/DefaultLogger;

    invoke-direct {v0}, Lxcrash/DefaultLogger;-><init>()V

    sput-object v0, Lxcrash/XCrash;->logger:Lxcrash/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAppId()Ljava/lang/String;
    .locals 1

    .line 856
    sget-object v0, Lxcrash/XCrash;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 860
    sget-object v0, Lxcrash/XCrash;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method static getLogDir()Ljava/lang/String;
    .locals 1

    .line 864
    sget-object v0, Lxcrash/XCrash;->logDir:Ljava/lang/String;

    return-object v0
.end method

.method static getLogger()Lxcrash/ILogger;
    .locals 1

    .line 868
    sget-object v0, Lxcrash/XCrash;->logger:Lxcrash/ILogger;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I
    .locals 32

    const-class v1, Lxcrash/XCrash;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-boolean v0, Lxcrash/XCrash;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 71
    monitor-exit v1

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 73
    :try_start_1
    sput-boolean v0, Lxcrash/XCrash;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    const/4 v0, -0x1

    .line 76
    monitor-exit v1

    return v0

    .line 80
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v3, p0

    :goto_0
    if-nez p1, :cond_3

    .line 87
    new-instance v4, Lxcrash/XCrash$InitParameters;

    invoke-direct {v4}, Lxcrash/XCrash$InitParameters;-><init>()V

    move-object v15, v4

    goto :goto_1

    :cond_3
    move-object/from16 v15, p1

    .line 91
    :goto_1
    iget-object v4, v15, Lxcrash/XCrash$InitParameters;->logger:Lxcrash/ILogger;

    if-eqz v4, :cond_4

    .line 92
    iget-object v4, v15, Lxcrash/XCrash$InitParameters;->logger:Lxcrash/ILogger;

    sput-object v4, Lxcrash/XCrash;->logger:Lxcrash/ILogger;

    .line 96
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 97
    sput-object v4, Lxcrash/XCrash;->appId:Ljava/lang/String;

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "unknown"

    .line 99
    sput-object v5, Lxcrash/XCrash;->appId:Ljava/lang/String;

    .line 103
    :cond_5
    iget-object v5, v15, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 104
    invoke-static {v3}, Lxcrash/Util;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    .line 106
    :cond_6
    iget-object v5, v15, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    sput-object v5, Lxcrash/XCrash;->appVersion:Ljava/lang/String;

    .line 109
    iget-object v5, v15, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/tombstones"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    .line 112
    :cond_7
    iget-object v5, v15, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    sput-object v5, Lxcrash/XCrash;->logDir:Ljava/lang/String;

    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const/4 v5, 0x0

    .line 117
    iget-boolean v7, v15, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    if-nez v7, :cond_9

    iget-boolean v7, v15, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move-object v7, v5

    goto :goto_4

    .line 118
    :cond_9
    :goto_3
    invoke-static {v3, v6}, Lxcrash/Util;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-boolean v7, v15, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    if-eqz v7, :cond_8

    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 123
    :cond_a
    iput-boolean v2, v15, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    goto :goto_2

    .line 129
    :goto_4
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v16

    iget-object v4, v15, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    iget v5, v15, Lxcrash/XCrash$InitParameters;->javaLogCountMax:I

    iget v8, v15, Lxcrash/XCrash$InitParameters;->nativeLogCountMax:I

    iget v9, v15, Lxcrash/XCrash$InitParameters;->anrLogCountMax:I

    iget v10, v15, Lxcrash/XCrash$InitParameters;->placeholderCountMax:I

    iget v11, v15, Lxcrash/XCrash$InitParameters;->placeholderSizeKb:I

    iget v12, v15, Lxcrash/XCrash$InitParameters;->logFileMaintainDelayMs:I

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v16 .. v23}, Lxcrash/FileManager;->initialize(Ljava/lang/String;IIIIII)V

    .line 138
    iget-boolean v4, v15, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    if-nez v4, :cond_b

    iget-boolean v4, v15, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    if-nez v4, :cond_b

    iget-boolean v4, v15, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    if-eqz v4, :cond_c

    .line 139
    :cond_b
    instance-of v4, v3, Landroid/app/Application;

    if-eqz v4, :cond_c

    .line 140
    invoke-static {}, Lxcrash/ActivityMonitor;->getInstance()Lxcrash/ActivityMonitor;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Landroid/app/Application;

    invoke-virtual {v4, v5}, Lxcrash/ActivityMonitor;->initialize(Landroid/app/Application;)V

    .line 145
    :cond_c
    iget-boolean v4, v15, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    if-eqz v4, :cond_d

    .line 146
    invoke-static {}, Lxcrash/JavaCrashHandler;->getInstance()Lxcrash/JavaCrashHandler;

    move-result-object v16

    sget-object v19, Lxcrash/XCrash;->appId:Ljava/lang/String;

    iget-object v4, v15, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    iget-object v5, v15, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    iget-boolean v8, v15, Lxcrash/XCrash$InitParameters;->javaRethrow:Z

    iget v9, v15, Lxcrash/XCrash$InitParameters;->javaLogcatSystemLines:I

    iget v10, v15, Lxcrash/XCrash$InitParameters;->javaLogcatEventsLines:I

    iget v11, v15, Lxcrash/XCrash$InitParameters;->javaLogcatMainLines:I

    iget-boolean v12, v15, Lxcrash/XCrash$InitParameters;->javaDumpFds:Z

    iget-boolean v13, v15, Lxcrash/XCrash$InitParameters;->javaDumpNetworkInfo:Z

    iget-boolean v14, v15, Lxcrash/XCrash$InitParameters;->javaDumpAllThreads:Z

    iget v0, v15, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsCountMax:I

    iget-object v2, v15, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsAllowList:[Ljava/lang/String;

    move-object/from16 p0, v3

    iget-object v3, v15, Lxcrash/XCrash$InitParameters;->javaCallback:Lxcrash/ICrashCallback;

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    invoke-virtual/range {v16 .. v31}, Lxcrash/JavaCrashHandler;->initialize(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/ICrashCallback;)V

    goto :goto_5

    :cond_d
    move-object/from16 p0, v3

    .line 165
    :goto_5
    iget-boolean v0, v15, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    const/16 v2, 0x15

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_e

    .line 166
    invoke-static {}, Lxcrash/AnrHandler;->getInstance()Lxcrash/AnrHandler;

    move-result-object v4

    sget-object v8, Lxcrash/XCrash;->appId:Ljava/lang/String;

    iget-object v9, v15, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    iget-object v10, v15, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    iget-boolean v11, v15, Lxcrash/XCrash$InitParameters;->anrCheckProcessState:Z

    iget v12, v15, Lxcrash/XCrash$InitParameters;->anrLogcatSystemLines:I

    iget v13, v15, Lxcrash/XCrash$InitParameters;->anrLogcatEventsLines:I

    iget v14, v15, Lxcrash/XCrash$InitParameters;->anrLogcatMainLines:I

    iget-boolean v0, v15, Lxcrash/XCrash$InitParameters;->anrDumpFds:Z

    iget-boolean v3, v15, Lxcrash/XCrash$InitParameters;->anrDumpNetworkInfo:Z

    iget-object v5, v15, Lxcrash/XCrash$InitParameters;->anrCallback:Lxcrash/ICrashCallback;

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    move-object v2, v15

    move v15, v0

    move/from16 v16, v3

    invoke-virtual/range {v4 .. v17}, Lxcrash/AnrHandler;->initialize(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZLxcrash/ICrashCallback;)V

    goto :goto_6

    :cond_e
    move-object v2, v15

    .line 184
    :goto_6
    iget-boolean v0, v2, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    if-nez v0, :cond_10

    iget-boolean v0, v2, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 185
    :cond_10
    :goto_7
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object v4

    iget-object v6, v2, Lxcrash/XCrash$InitParameters;->libLoader:Lxcrash/ILibLoader;

    sget-object v7, Lxcrash/XCrash;->appId:Ljava/lang/String;

    iget-object v8, v2, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    iget-object v9, v2, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    iget-boolean v10, v2, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    iget-boolean v11, v2, Lxcrash/XCrash$InitParameters;->nativeRethrow:Z

    iget v12, v2, Lxcrash/XCrash$InitParameters;->nativeLogcatSystemLines:I

    iget v13, v2, Lxcrash/XCrash$InitParameters;->nativeLogcatEventsLines:I

    iget v14, v2, Lxcrash/XCrash$InitParameters;->nativeLogcatMainLines:I

    iget-boolean v15, v2, Lxcrash/XCrash$InitParameters;->nativeDumpElfHash:Z

    iget-boolean v0, v2, Lxcrash/XCrash$InitParameters;->nativeDumpMap:Z

    iget-boolean v3, v2, Lxcrash/XCrash$InitParameters;->nativeDumpFds:Z

    iget-boolean v5, v2, Lxcrash/XCrash$InitParameters;->nativeDumpNetworkInfo:Z

    move/from16 v17, v3

    iget-boolean v3, v2, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreads:Z

    move/from16 v19, v3

    iget v3, v2, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsCountMax:I

    move/from16 v20, v3

    iget-object v3, v2, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsAllowList:[Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v2, Lxcrash/XCrash$InitParameters;->nativeCallback:Lxcrash/ICrashCallback;

    move/from16 v16, v5

    iget-boolean v5, v2, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    if-eqz v5, :cond_11

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v22, v3

    const/16 v3, 0x15

    if-lt v5, v3, :cond_12

    const/16 v23, 0x1

    goto :goto_8

    :cond_11
    move-object/from16 v22, v3

    :cond_12
    const/16 v23, 0x0

    :goto_8
    iget-boolean v3, v2, Lxcrash/XCrash$InitParameters;->anrRethrow:Z

    iget-boolean v5, v2, Lxcrash/XCrash$InitParameters;->anrCheckProcessState:Z

    move/from16 v24, v3

    iget v3, v2, Lxcrash/XCrash$InitParameters;->anrLogcatSystemLines:I

    move/from16 v26, v3

    iget v3, v2, Lxcrash/XCrash$InitParameters;->anrLogcatEventsLines:I

    move/from16 v27, v3

    iget v3, v2, Lxcrash/XCrash$InitParameters;->anrLogcatMainLines:I

    move/from16 v28, v3

    iget-boolean v3, v2, Lxcrash/XCrash$InitParameters;->anrDumpFds:Z

    move/from16 v29, v3

    iget-boolean v3, v2, Lxcrash/XCrash$InitParameters;->anrDumpNetworkInfo:Z

    iget-object v2, v2, Lxcrash/XCrash$InitParameters;->anrCallback:Lxcrash/ICrashCallback;

    move/from16 v25, v5

    move/from16 v18, v16

    move-object/from16 v5, p0

    move/from16 v16, v0

    move/from16 v30, v3

    move-object/from16 v31, v2

    invoke-virtual/range {v4 .. v31}, Lxcrash/NativeHandler;->initialize(Landroid/content/Context;Lxcrash/ILibLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIZZZZZI[Ljava/lang/String;Lxcrash/ICrashCallback;ZZZIIIZZLxcrash/ICrashCallback;)I

    move-result v2

    .line 216
    :goto_9
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lxcrash/FileManager;->maintain()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static testJavaCrash(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 882
    new-instance p0, Lxcrash/XCrash$1;

    invoke-direct {p0}, Lxcrash/XCrash$1;-><init>()V

    const-string v0, "xcrash_test_java_thread"

    .line 888
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 891
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "test java exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static testNativeCrash(Z)V
    .locals 1

    .line 904
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxcrash/NativeHandler;->testNativeCrash(Z)V

    return-void
.end method
