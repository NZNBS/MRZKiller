.class public Lxcrash/XCrash$InitParameters;
.super Ljava/lang/Object;
.source "XCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxcrash/XCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParameters"
.end annotation


# instance fields
.field anrCallback:Lxcrash/ICrashCallback;

.field anrCheckProcessState:Z

.field anrDumpFds:Z

.field anrDumpNetworkInfo:Z

.field anrLogCountMax:I

.field anrLogcatEventsLines:I

.field anrLogcatMainLines:I

.field anrLogcatSystemLines:I

.field anrRethrow:Z

.field appVersion:Ljava/lang/String;

.field enableAnrHandler:Z

.field enableJavaCrashHandler:Z

.field enableNativeCrashHandler:Z

.field javaCallback:Lxcrash/ICrashCallback;

.field javaDumpAllThreads:Z

.field javaDumpAllThreadsAllowList:[Ljava/lang/String;

.field javaDumpAllThreadsCountMax:I

.field javaDumpFds:Z

.field javaDumpNetworkInfo:Z

.field javaLogCountMax:I

.field javaLogcatEventsLines:I

.field javaLogcatMainLines:I

.field javaLogcatSystemLines:I

.field javaRethrow:Z

.field libLoader:Lxcrash/ILibLoader;

.field logDir:Ljava/lang/String;

.field logFileMaintainDelayMs:I

.field logger:Lxcrash/ILogger;

.field nativeCallback:Lxcrash/ICrashCallback;

.field nativeDumpAllThreads:Z

.field nativeDumpAllThreadsAllowList:[Ljava/lang/String;

.field nativeDumpAllThreadsCountMax:I

.field nativeDumpElfHash:Z

.field nativeDumpFds:Z

.field nativeDumpMap:Z

.field nativeDumpNetworkInfo:Z

.field nativeLogCountMax:I

.field nativeLogcatEventsLines:I

.field nativeLogcatMainLines:I

.field nativeLogcatSystemLines:I

.field nativeRethrow:Z

.field placeholderCountMax:I

.field placeholderSizeKb:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    const/16 v1, 0x1388

    .line 229
    iput v1, p0, Lxcrash/XCrash$InitParameters;->logFileMaintainDelayMs:I

    .line 230
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->logger:Lxcrash/ILogger;

    .line 231
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->libLoader:Lxcrash/ILibLoader;

    const/4 v1, 0x0

    .line 294
    iput v1, p0, Lxcrash/XCrash$InitParameters;->placeholderCountMax:I

    const/16 v2, 0x80

    .line 295
    iput v2, p0, Lxcrash/XCrash$InitParameters;->placeholderSizeKb:I

    const/4 v2, 0x1

    .line 324
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    .line 325
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaRethrow:Z

    const/16 v3, 0xa

    .line 326
    iput v3, p0, Lxcrash/XCrash$InitParameters;->javaLogCountMax:I

    const/16 v4, 0x32

    .line 327
    iput v4, p0, Lxcrash/XCrash$InitParameters;->javaLogcatSystemLines:I

    .line 328
    iput v4, p0, Lxcrash/XCrash$InitParameters;->javaLogcatEventsLines:I

    const/16 v5, 0xc8

    .line 329
    iput v5, p0, Lxcrash/XCrash$InitParameters;->javaLogcatMainLines:I

    .line 330
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaDumpFds:Z

    .line 331
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaDumpNetworkInfo:Z

    .line 332
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreads:Z

    .line 333
    iput v1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsCountMax:I

    .line 334
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsAllowList:[Ljava/lang/String;

    .line 335
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->javaCallback:Lxcrash/ICrashCallback;

    .line 500
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    .line 501
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeRethrow:Z

    .line 502
    iput v3, p0, Lxcrash/XCrash$InitParameters;->nativeLogCountMax:I

    .line 503
    iput v4, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatSystemLines:I

    .line 504
    iput v4, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatEventsLines:I

    .line 505
    iput v5, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatMainLines:I

    .line 506
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpElfHash:Z

    .line 507
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpMap:Z

    .line 508
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpFds:Z

    .line 509
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpNetworkInfo:Z

    .line 510
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreads:Z

    .line 511
    iput v1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsCountMax:I

    .line 512
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsAllowList:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->nativeCallback:Lxcrash/ICrashCallback;

    .line 706
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    .line 707
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrRethrow:Z

    .line 708
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrCheckProcessState:Z

    .line 709
    iput v3, p0, Lxcrash/XCrash$InitParameters;->anrLogCountMax:I

    .line 710
    iput v4, p0, Lxcrash/XCrash$InitParameters;->anrLogcatSystemLines:I

    .line 711
    iput v4, p0, Lxcrash/XCrash$InitParameters;->anrLogcatEventsLines:I

    .line 712
    iput v5, p0, Lxcrash/XCrash$InitParameters;->anrLogcatMainLines:I

    .line 713
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrDumpFds:Z

    .line 714
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->anrDumpNetworkInfo:Z

    .line 715
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->anrCallback:Lxcrash/ICrashCallback;

    return-void
.end method


# virtual methods
.method public disableAnrCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    return-object p0
.end method

.method public disableJavaCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    return-object p0
.end method

.method public disableNativeCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    return-object p0
.end method

.method public enableAnrCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableAnrHandler:Z

    return-object p0
.end method

.method public enableJavaCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableJavaCrashHandler:Z

    return-object p0
.end method

.method public enableNativeCrashHandler()Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->enableNativeCrashHandler:Z

    return-object p0
.end method

.method public setAnrCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 850
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->anrCallback:Lxcrash/ICrashCallback;

    return-object p0
.end method

.method public setAnrCheckProcessState(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 766
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrCheckProcessState:Z

    return-object p0
.end method

.method public setAnrDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 826
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrDumpFds:Z

    return-object p0
.end method

.method public setAnrDumpNetwork(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 838
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrDumpNetworkInfo:Z

    return-object p0
.end method

.method public setAnrLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 778
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogCountMax:I

    return-object p0
.end method

.method public setAnrLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 802
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogcatEventsLines:I

    return-object p0
.end method

.method public setAnrLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 814
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogcatMainLines:I

    return-object p0
.end method

.method public setAnrLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 790
    iput p1, p0, Lxcrash/XCrash$InitParameters;->anrLogcatSystemLines:I

    return-object p0
.end method

.method public setAnrRethrow(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 752
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->anrRethrow:Z

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 242
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setJavaCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 495
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->javaCallback:Lxcrash/ICrashCallback;

    return-object p0
.end method

.method public setJavaDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 453
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreads:Z

    return-object p0
.end method

.method public setJavaDumpAllThreadsAllowList([Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 483
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsAllowList:[Ljava/lang/String;

    return-object p0
.end method

.method public setJavaDumpAllThreadsCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 468
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpAllThreadsCountMax:I

    return-object p0
.end method

.method public setJavaDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 428
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpFds:Z

    return-object p0
.end method

.method public setJavaDumpNetworkInfo(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 440
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaDumpNetworkInfo:Z

    return-object p0
.end method

.method public setJavaLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 380
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogCountMax:I

    return-object p0
.end method

.method public setJavaLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 404
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogcatEventsLines:I

    return-object p0
.end method

.method public setJavaLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 416
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogcatMainLines:I

    return-object p0
.end method

.method public setJavaLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 392
    iput p1, p0, Lxcrash/XCrash$InitParameters;->javaLogcatSystemLines:I

    return-object p0
.end method

.method public setJavaRethrow(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 368
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->javaRethrow:Z

    return-object p0
.end method

.method public setLibLoader(Lxcrash/ILibLoader;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 289
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->libLoader:Lxcrash/ILibLoader;

    return-object p0
.end method

.method public setLogDir(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 255
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->logDir:Ljava/lang/String;

    return-object p0
.end method

.method public setLogFileMaintainDelayMs(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 267
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->logFileMaintainDelayMs:I

    return-object p0
.end method

.method public setLogger(Lxcrash/ILogger;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 278
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->logger:Lxcrash/ILogger;

    return-object p0
.end method

.method public setNativeCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 701
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->nativeCallback:Lxcrash/ICrashCallback;

    return-object p0
.end method

.method public setNativeDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 655
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreads:Z

    return-object p0
.end method

.method public setNativeDumpAllThreadsAllowList([Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 689
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsAllowList:[Ljava/lang/String;

    return-object p0
.end method

.method public setNativeDumpAllThreadsCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 670
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpAllThreadsCountMax:I

    return-object p0
.end method

.method public setNativeDumpElfHash(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 606
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpElfHash:Z

    return-object p0
.end method

.method public setNativeDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 630
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpFds:Z

    return-object p0
.end method

.method public setNativeDumpMap(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 618
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpMap:Z

    return-object p0
.end method

.method public setNativeDumpNetwork(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 642
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeDumpNetworkInfo:Z

    return-object p0
.end method

.method public setNativeLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 558
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogCountMax:I

    return-object p0
.end method

.method public setNativeLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 582
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatEventsLines:I

    return-object p0
.end method

.method public setNativeLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 594
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatMainLines:I

    return-object p0
.end method

.method public setNativeLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 570
    iput p1, p0, Lxcrash/XCrash$InitParameters;->nativeLogcatSystemLines:I

    return-object p0
.end method

.method public setNativeRethrow(Z)Lxcrash/XCrash$InitParameters;
    .locals 0

    .line 546
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->nativeRethrow:Z

    return-object p0
.end method

.method public setPlaceholderCountMax(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 307
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->placeholderCountMax:I

    return-object p0
.end method

.method public setPlaceholderSizeKb(I)Lxcrash/XCrash$InitParameters;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 319
    :cond_0
    iput p1, p0, Lxcrash/XCrash$InitParameters;->placeholderSizeKb:I

    return-object p0
.end method
