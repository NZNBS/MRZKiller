.class Lxcrash/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static final instance:Lxcrash/FileManager;


# instance fields
.field private anrLogCountMax:I

.field private delayMs:I

.field private javaLogCountMax:I

.field private logDir:Ljava/lang/String;

.field private nativeLogCountMax:I

.field private placeholderCleanSuffix:Ljava/lang/String;

.field private placeholderCountMax:I

.field private placeholderDirtySuffix:Ljava/lang/String;

.field private placeholderPrefix:Ljava/lang/String;

.field private placeholderSizeKb:I

.field private traceLogCountMax:I

.field private unique:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lxcrash/FileManager;

    invoke-direct {v0}, Lxcrash/FileManager;-><init>()V

    sput-object v0, Lxcrash/FileManager;->instance:Lxcrash/FileManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "placeholder"

    .line 42
    iput-object v0, p0, Lxcrash/FileManager;->placeholderPrefix:Ljava/lang/String;

    const-string v0, ".clean.xcrash"

    .line 43
    iput-object v0, p0, Lxcrash/FileManager;->placeholderCleanSuffix:Ljava/lang/String;

    const-string v0, ".dirty.xcrash"

    .line 44
    iput-object v0, p0, Lxcrash/FileManager;->placeholderDirtySuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lxcrash/FileManager;->javaLogCountMax:I

    .line 47
    iput v0, p0, Lxcrash/FileManager;->nativeLogCountMax:I

    .line 48
    iput v0, p0, Lxcrash/FileManager;->anrLogCountMax:I

    const/4 v1, 0x1

    .line 49
    iput v1, p0, Lxcrash/FileManager;->traceLogCountMax:I

    .line 50
    iput v0, p0, Lxcrash/FileManager;->placeholderCountMax:I

    .line 51
    iput v0, p0, Lxcrash/FileManager;->placeholderSizeKb:I

    .line 52
    iput v0, p0, Lxcrash/FileManager;->delayMs:I

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lxcrash/FileManager;->unique:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lxcrash/FileManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lxcrash/FileManager;->doMaintain()V

    return-void
.end method

.method static synthetic access$100(Lxcrash/FileManager;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lxcrash/FileManager;->placeholderPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lxcrash/FileManager;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lxcrash/FileManager;->placeholderCleanSuffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lxcrash/FileManager;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lxcrash/FileManager;->placeholderDirtySuffix:Ljava/lang/String;

    return-object p0
.end method

.method private cleanTheDirtyFile(Ljava/io/File;)Z
    .locals 16

    move-object/from16 v1, p0

    const/16 v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v0, [B

    .line 469
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 471
    iget v5, v1, Lxcrash/FileManager;->placeholderSizeKb:I

    int-to-long v5, v5

    .line 472
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 473
    iget v9, v1, Lxcrash/FileManager;->placeholderSizeKb:I

    mul-int/lit16 v9, v9, 0x400

    int-to-long v9, v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x400

    cmp-long v0, v7, v9

    if-lez v0, :cond_0

    .line 474
    div-long v5, v7, v13

    .line 475
    rem-long v9, v7, v13

    cmp-long v0, v9, v11

    if-eqz v0, :cond_0

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    .line 481
    :cond_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v9, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    cmp-long v15, v2, v5

    if-gez v15, :cond_2

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    cmp-long v15, v2, v5

    if-nez v15, :cond_1

    .line 483
    :try_start_1
    rem-long v2, v7, v13

    cmp-long v15, v2, v11

    if-eqz v15, :cond_1

    .line 485
    rem-long v2, v7, v13

    long-to-int v3, v2

    const/4 v2, 0x0

    invoke-virtual {v9, v4, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v9, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v4, p1

    move-object v3, v9

    goto :goto_2

    .line 490
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 493
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%s_%020d%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lxcrash/FileManager;->logDir:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    :try_start_3
    aput-object v4, v3, v5

    iget-object v4, v1, Lxcrash/FileManager;->placeholderPrefix:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    mul-long v6, v6, v10

    invoke-direct/range {p0 .. p0}, Lxcrash/FileManager;->getNextUnique()I

    move-result v8

    int-to-long v10, v8

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, v1, Lxcrash/FileManager;->placeholderCleanSuffix:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v4, p1

    :try_start_4
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 500
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    nop

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v9

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v4, p1

    const/4 v5, 0x0

    :goto_1
    move-object v3, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    const/4 v5, 0x0

    .line 496
    :goto_3
    :try_start_6
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v2

    const-string v6, "xcrash"

    const-string v7, "FileManager cleanTheDirtyFile failed"

    invoke-interface {v2, v6, v7, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_3

    .line 500
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_4

    .line 508
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    return v2

    :goto_5
    if-eqz v3, :cond_5

    .line 500
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 504
    :catch_8
    :cond_5
    throw v0
.end method

.method private doMaintain()V
    .locals 5

    const-string v0, "xcrash"

    .line 327
    iget-object v1, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    invoke-static {v1}, Lxcrash/Util;->checkAndCreateDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 330
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    :try_start_0
    invoke-direct {p0, v1}, Lxcrash/FileManager;->doMaintainTombstone(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 335
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v3

    const-string v4, "FileManager doMaintainTombstone failed"

    invoke-interface {v3, v0, v4, v2}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    :goto_0
    :try_start_1
    invoke-direct {p0, v1}, Lxcrash/FileManager;->doMaintainPlaceholder(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 341
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v2

    const-string v3, "FileManager doMaintainPlaceholder failed"

    invoke-interface {v2, v0, v3, v1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private doMaintainPlaceholder(Ljava/io/File;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 382
    new-instance v2, Lxcrash/FileManager$7;

    invoke-direct {v2, v0}, Lxcrash/FileManager$7;-><init>(Lxcrash/FileManager;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance v3, Lxcrash/FileManager$8;

    invoke-direct {v3, v0}, Lxcrash/FileManager$8;-><init>(Lxcrash/FileManager;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 403
    :cond_1
    array-length v4, v2

    .line 404
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 405
    :goto_0
    iget v8, v0, Lxcrash/FileManager;->placeholderCountMax:I

    if-ge v4, v8, :cond_6

    const/4 v8, 0x2

    if-lez v5, :cond_3

    add-int/lit8 v9, v5, -0x1

    .line 407
    aget-object v9, v3, v9

    .line 408
    invoke-direct {v0, v9}, Lxcrash/FileManager;->cleanTheDirtyFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    :catch_0
    move/from16 v17, v7

    goto :goto_1

    .line 414
    :cond_3
    :try_start_0
    new-instance v9, Ljava/io/File;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s/%s_%020d%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    aput-object v13, v12, v6

    iget-object v13, v0, Lxcrash/FileManager;->placeholderPrefix:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v13, v13, v15

    invoke-direct/range {p0 .. p0}, Lxcrash/FileManager;->getNextUnique()I

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v7

    int-to-long v6, v15

    add-long/2addr v13, v6

    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v8

    const/4 v6, 0x3

    iget-object v7, v0, Lxcrash/FileManager;->placeholderDirtySuffix:Ljava/lang/String;

    aput-object v7, v12, v6

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    invoke-direct {v0, v9}, Lxcrash/FileManager;->cleanTheDirtyFile(Ljava/io/File;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_1
    nop

    :cond_4
    :goto_1
    add-int/lit8 v7, v17, 0x1

    .line 425
    iget v6, v0, Lxcrash/FileManager;->placeholderCountMax:I

    mul-int/lit8 v6, v6, 0x2

    if-le v7, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    move/from16 v17, v7

    :goto_2
    if-lez v7, :cond_7

    .line 432
    new-instance v2, Lxcrash/FileManager$9;

    invoke-direct {v2, v0}, Lxcrash/FileManager$9;-><init>(Lxcrash/FileManager;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 438
    new-instance v3, Lxcrash/FileManager$10;

    invoke-direct {v3, v0}, Lxcrash/FileManager$10;-><init>(Lxcrash/FileManager;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    :cond_7
    if-eqz v2, :cond_8

    .line 447
    array-length v1, v2

    iget v4, v0, Lxcrash/FileManager;->placeholderCountMax:I

    if-le v1, v4, :cond_8

    const/4 v1, 0x0

    .line 448
    :goto_3
    array-length v4, v2

    iget v5, v0, Lxcrash/FileManager;->placeholderCountMax:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_8

    .line 449
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    .line 455
    array-length v1, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_9

    aget-object v2, v3, v6

    .line 456
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private doMaintainTombstone(Ljava/io/File;)V
    .locals 2

    .line 346
    iget v0, p0, Lxcrash/FileManager;->nativeLogCountMax:I

    const-string v1, ".native.xcrash"

    invoke-direct {p0, p1, v1, v0}, Lxcrash/FileManager;->doMaintainTombstoneType(Ljava/io/File;Ljava/lang/String;I)Z

    .line 347
    iget v0, p0, Lxcrash/FileManager;->javaLogCountMax:I

    const-string v1, ".java.xcrash"

    invoke-direct {p0, p1, v1, v0}, Lxcrash/FileManager;->doMaintainTombstoneType(Ljava/io/File;Ljava/lang/String;I)Z

    .line 348
    iget v0, p0, Lxcrash/FileManager;->anrLogCountMax:I

    const-string v1, ".anr.xcrash"

    invoke-direct {p0, p1, v1, v0}, Lxcrash/FileManager;->doMaintainTombstoneType(Ljava/io/File;Ljava/lang/String;I)Z

    .line 349
    iget v0, p0, Lxcrash/FileManager;->traceLogCountMax:I

    const-string v1, ".trace.xcrash"

    invoke-direct {p0, p1, v1, v0}, Lxcrash/FileManager;->doMaintainTombstoneType(Ljava/io/File;Ljava/lang/String;I)Z

    return-void
.end method

.method private doMaintainTombstoneType(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 3

    .line 353
    new-instance v0, Lxcrash/FileManager$5;

    invoke-direct {v0, p0, p2}, Lxcrash/FileManager$5;-><init>(Lxcrash/FileManager;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 361
    array-length v0, p1

    if-le v0, p3, :cond_2

    if-lez p3, :cond_0

    .line 363
    new-instance v0, Lxcrash/FileManager$6;

    invoke-direct {v0, p0}, Lxcrash/FileManager$6;-><init>(Lxcrash/FileManager;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 370
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, p3

    if-ge v1, v2, :cond_2

    .line 371
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lxcrash/FileManager;->recycleLogFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p2, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method static getInstance()Lxcrash/FileManager;
    .locals 1

    .line 60
    sget-object v0, Lxcrash/FileManager;->instance:Lxcrash/FileManager;

    return-object v0
.end method

.method private getNextUnique()I
    .locals 3

    .line 517
    iget-object v0, p0, Lxcrash/FileManager;->unique:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x3e7

    if-lt v0, v1, :cond_0

    .line 519
    iget-object v1, p0, Lxcrash/FileManager;->unique:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return v0
.end method


# virtual methods
.method appendText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    .line 241
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/4 p1, 0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 246
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 247
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 248
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    :goto_0
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    long-to-int v6, v2

    sub-int/2addr v6, p1

    .line 249
    invoke-virtual {v0, v6}, Ljava/nio/MappedByteBuffer;->get(I)B

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v4, v2

    .line 256
    :cond_2
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v0, "UTF-8"

    .line 257
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 261
    :goto_2
    :try_start_3
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p2

    const-string v1, "xcrash"

    const-string v2, "FileManager appendText failed"

    invoke-interface {p2, v1, v2, p1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 266
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    return p1

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 270
    :catch_4
    :cond_4
    throw p1
.end method

.method createLogFile(Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .line 187
    iget-object v0, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 191
    :cond_0
    invoke-static {v0}, Lxcrash/Util;->checkAndCreateDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 195
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Lxcrash/FileManager$3;

    invoke-direct {v2, p0}, Lxcrash/FileManager$3;-><init>(Lxcrash/FileManager;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const-string v2, "xcrash"

    if-eqz p1, :cond_3

    .line 208
    array-length v3, p1

    :goto_0
    if-lez v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    .line 210
    aget-object v4, p1, v4

    .line 212
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v0

    :catch_0
    move-exception v5

    .line 216
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v6

    const-string v7, "FileManager createLogFile by renameTo failed"

    invoke-interface {v6, v2, v7, v5}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 225
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 228
    :cond_4
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p1

    const-string v0, "FileManager createLogFile by createNewFile failed, file already exists"

    invoke-interface {p1, v2, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    .line 232
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v0

    const-string v3, "FileManager createLogFile by createNewFile failed"

    invoke-interface {v0, v2, v3, p1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method initialize(Ljava/lang/String;IIIIII)V
    .locals 7

    .line 64
    iput-object p1, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    .line 65
    iput p2, p0, Lxcrash/FileManager;->javaLogCountMax:I

    .line 66
    iput p3, p0, Lxcrash/FileManager;->nativeLogCountMax:I

    .line 67
    iput p4, p0, Lxcrash/FileManager;->anrLogCountMax:I

    .line 68
    iput p5, p0, Lxcrash/FileManager;->placeholderCountMax:I

    .line 69
    iput p6, p0, Lxcrash/FileManager;->placeholderSizeKb:I

    .line 70
    iput p7, p0, Lxcrash/FileManager;->delayMs:I

    .line 73
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 88
    :cond_1
    array-length p2, p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge p4, p2, :cond_8

    aget-object v3, p1, p4

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tombstone_"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ".java.xcrash"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    const-string v4, ".native.xcrash"

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_3
    const-string v4, ".anr.xcrash"

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_4
    const-string v4, ".trace.xcrash"

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lxcrash/FileManager;->placeholderPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 102
    iget-object v4, p0, Lxcrash/FileManager;->placeholderCleanSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_6
    iget-object v4, p0, Lxcrash/FileManager;->placeholderDirtySuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 111
    :cond_8
    iget p1, p0, Lxcrash/FileManager;->javaLogCountMax:I

    const/4 p2, -0x1

    if-gt p5, p1, :cond_9

    iget p4, p0, Lxcrash/FileManager;->nativeLogCountMax:I

    if-gt p6, p4, :cond_9

    iget p4, p0, Lxcrash/FileManager;->anrLogCountMax:I

    if-gt p7, p4, :cond_9

    iget p4, p0, Lxcrash/FileManager;->traceLogCountMax:I

    if-gt v0, p4, :cond_9

    iget p4, p0, Lxcrash/FileManager;->placeholderCountMax:I

    if-ne v1, p4, :cond_9

    if-nez v2, :cond_9

    .line 118
    iput p2, p0, Lxcrash/FileManager;->delayMs:I

    goto :goto_4

    :cond_9
    add-int/lit8 p4, p1, 0xa

    if-gt p5, p4, :cond_c

    .line 119
    iget p4, p0, Lxcrash/FileManager;->nativeLogCountMax:I

    add-int/lit8 v3, p4, 0xa

    if-gt p6, v3, :cond_c

    iget v3, p0, Lxcrash/FileManager;->anrLogCountMax:I

    add-int/lit8 v4, v3, 0xa

    if-gt p7, v4, :cond_c

    iget v4, p0, Lxcrash/FileManager;->traceLogCountMax:I

    add-int/lit8 v5, v4, 0xa

    if-gt v0, v5, :cond_c

    iget v5, p0, Lxcrash/FileManager;->placeholderCountMax:I

    add-int/lit8 v6, v5, 0xa

    if-gt v1, v6, :cond_c

    const/16 v6, 0xa

    if-le v2, v6, :cond_a

    goto :goto_2

    :cond_a
    if-gt p5, p1, :cond_b

    if-gt p6, p4, :cond_b

    if-gt p7, v3, :cond_b

    if-gt v0, v4, :cond_b

    if-gt v1, v5, :cond_b

    if-lez v2, :cond_e

    .line 135
    :cond_b
    iput p3, p0, Lxcrash/FileManager;->delayMs:I

    goto :goto_4

    .line 126
    :cond_c
    :goto_2
    invoke-direct {p0}, Lxcrash/FileManager;->doMaintain()V

    .line 127
    iput p2, p0, Lxcrash/FileManager;->delayMs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_d
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 138
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p2

    const-string p3, "xcrash"

    const-string p4, "FileManager init failed"

    invoke-interface {p2, p3, p4, p1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_4
    return-void
.end method

.method maintain()V
    .locals 4

    .line 143
    iget-object v0, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lxcrash/FileManager;->delayMs:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "xcrash_file_mgr"

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lxcrash/FileManager$1;

    invoke-direct {v2, p0}, Lxcrash/FileManager$1;-><init>(Lxcrash/FileManager;)V

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lxcrash/FileManager$2;

    invoke-direct {v1, p0}, Lxcrash/FileManager$2;-><init>(Lxcrash/FileManager;)V

    iget v2, p0, Lxcrash/FileManager;->delayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v1

    const-string v2, "xcrash"

    const-string v3, "FileManager maintain start failed"

    invoke-interface {v1, v2, v3, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method maintainAnr()Z
    .locals 5

    .line 172
    iget-object v0, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    invoke-static {v0}, Lxcrash/Util;->checkAndCreateDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v2, ".anr.xcrash"

    .line 178
    iget v3, p0, Lxcrash/FileManager;->anrLogCountMax:I

    invoke-direct {p0, v0, v2, v3}, Lxcrash/FileManager;->doMaintainTombstoneType(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 180
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v2

    const-string v3, "xcrash"

    const-string v4, "FileManager maintainAnr failed"

    invoke-interface {v2, v3, v4, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method recycleLogFile(Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 279
    :cond_0
    iget-object v1, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget v1, p0, Lxcrash/FileManager;->placeholderCountMax:I

    if-gtz v1, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    new-instance v2, Lxcrash/FileManager$4;

    invoke-direct {v2, p0}, Lxcrash/FileManager$4;-><init>(Lxcrash/FileManager;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 295
    array-length v1, v1

    iget v2, p0, Lxcrash/FileManager;->placeholderCountMax:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lt v1, v2, :cond_2

    .line 297
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    return v0

    .line 304
    :cond_2
    :try_start_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%s_%020d%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lxcrash/FileManager;->logDir:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lxcrash/FileManager;->placeholderPrefix:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {p0}, Lxcrash/FileManager;->getNextUnique()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lxcrash/FileManager;->placeholderDirtySuffix:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_3

    .line 308
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p1

    :catch_1
    return v0

    .line 315
    :cond_3
    :try_start_4
    invoke-direct {p0, v2}, Lxcrash/FileManager;->cleanTheDirtyFile(Ljava/io/File;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return p1

    :catch_2
    move-exception v1

    .line 317
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v2

    const-string v3, "xcrash"

    const-string v4, "FileManager recycleLogFile failed"

    invoke-interface {v2, v3, v4, v1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return p1

    :catch_3
    return v0

    .line 281
    :cond_4
    :goto_0
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    return p1

    :catch_4
    return v0
.end method
