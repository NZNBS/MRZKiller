.class public Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;
    }
.end annotation


# static fields
.field public static final INSTALL_FAILED_ABORTED:I = -0x73

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field private static final MSG_COMMIT:I = 0x0

.field private static final REMOVE_SPLIT_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field final installerPackageName:Ljava/lang/String;

.field final installerUid:I

.field private final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBridges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/installer/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

.field private mClientProgress:F

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFinalMessage:Ljava/lang/String;

.field private mFinalStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mInternalProgress:F

.field private final mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionsAccepted:Z

.field private mPrepared:Z

.field private mProgress:F

.field private mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

.field private mReportedProgress:F

.field private mResolvedBaseFile:Ljava/io/File;

.field private mResolvedStageDir:Ljava/io/File;

.field private final mResolvedStagedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSealed:Z

.field final params:Lcom/lody/virtual/server/pm/installer/SessionParams;

.field final sessionId:I

.field final stageDir:Ljava/io/File;

.field final userId:I


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;IIILcom/lody/virtual/server/pm/installer/SessionParams;Ljava/io/File;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mClientProgress:F

    .line 74
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mInternalProgress:F

    .line 75
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 76
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mReportedProgress:F

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPrepared:Z

    .line 78
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    .line 79
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mDestroyed:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 120
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    .line 121
    iput-object p2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 122
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object p4, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    .line 124
    iput p5, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    .line 125
    iput p6, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    .line 126
    iput p7, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->installerUid:I

    .line 127
    iget-object p1, p8, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 128
    iput-object p8, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    .line 129
    iput-object p9, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->stageDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->commitLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->destroyInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private assertPreparedAndNotSealed(Ljava/lang/String;)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPrepared:Z

    if-eqz v1, :cond_1

    .line 282
    iget-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    if-nez v1, :cond_0

    .line 285
    monitor-exit v0

    return-void

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after commit"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before prepared"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private commitLocked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mDestroyed:Z

    const/16 v1, -0x6e

    if-nez v0, :cond_1

    .line 156
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->resolveStageDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->validateInstallLocked()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 165
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mInternalProgress:F

    const/4 v0, 0x1

    .line 166
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 169
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$2;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$2;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;

    const-string v2, "Session not sealed"

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;

    const-string v2, "Session destroyed"

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;)V

    throw v0
.end method

.method private computeProgressLocked(Z)V
    .locals 4

    .line 224
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mClientProgress:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mInternalProgress:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v3

    .line 225
    invoke-static {v1, v2, v3}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->constrain(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mProgress:F

    if-nez p1, :cond_0

    .line 228
    iget p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    .line 229
    :cond_0
    iget p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mProgress:F

    iput p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mReportedProgress:F

    .line 230
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, p1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;F)V

    :cond_1
    return-void
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private createRemoveSplitMarker(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".removed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 372
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private destroyInternal()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 428
    :try_start_0
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    .line 429
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mDestroyed:Z

    .line 432
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/installer/FileBridge;

    .line 433
    invoke-virtual {v2}, Lcom/lody/virtual/server/pm/installer/FileBridge;->forceClose()V

    goto :goto_0

    .line 435
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/lang/String;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 435
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 442
    iput p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mFinalStatus:I

    .line 443
    iput-object p2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mRemoteObserver:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 453
    :goto_1
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {p1, p0, p2}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionFinished(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Z)V

    return-void
.end method

.method public static getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, ": "

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "openRead"

    .line 334
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 337
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 343
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 346
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "openWrite"

    .line 296
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/lody/virtual/server/pm/installer/FileBridge;

    invoke-direct {v1}, Lcom/lody/virtual/server/pm/installer/FileBridge;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v0, v2

    const/16 v2, 0x1a4

    invoke-static {p1, v0, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_0

    .line 310
    invoke-static {p1, v2, v3, p4, p5}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    :cond_0
    cmp-long p4, p2, v2

    if-lez p4, :cond_1

    .line 313
    sget p4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, p2, p3, p4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 315
    :cond_1
    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/pm/installer/FileBridge;->setTargetFile(Ljava/io/FileDescriptor;)V

    .line 316
    invoke-virtual {v1}, Lcom/lody/virtual/server/pm/installer/FileBridge;->start()V

    .line 317
    invoke-virtual {v1}, Lcom/lody/virtual/server/pm/installer/FileBridge;->getClientSocket()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 320
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 300
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private resolveStageDir()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 259
    iput-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateInstallLocked()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 186
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    .line 188
    array-length v2, v0

    if-eqz v2, :cond_4

    .line 191
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    const-string v7, "base.apk"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 196
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    :cond_0
    iput-object v5, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 199
    iget-object v4, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v0, :cond_3

    return-void

    .line 203
    :cond_3
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;

    const-string v2, "Full install must include a base package"

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;)V

    throw v0

    .line 189
    :cond_4
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;

    const-string v2, "No packages staged"

    invoke-direct {v0, p0, v1, v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abandon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->destroyInternal()V

    const/16 v0, -0x73

    const-string v1, "Session was abandoned"

    const/4 v2, 0x0

    .line 423
    invoke-direct {p0, v0, v1, v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public addClientProgress(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->setClientProgress(F)V

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Z)V

    :cond_0
    return-void
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 390
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/server/pm/installer/FileBridge;

    .line 391
    invoke-virtual {v4}, Lcom/lody/virtual/server/pm/installer/FileBridge;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "Files still open"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_1
    iput-boolean v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 399
    iput v3, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mClientProgress:F

    .line 400
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 401
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 407
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 414
    new-instance v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$PackageInstallObserverAdapter;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iget v3, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$PackageInstallObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;II)V

    .line 417
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$PackageInstallObserverAdapter;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p1

    .line 401
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public generateInfo()Lcom/lody/virtual/server/pm/installer/SessionInfo;
    .locals 4

    .line 133
    new-instance v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/installer/SessionInfo;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iput v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sessionId:I

    .line 136
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 139
    iget v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mProgress:F

    iput v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->progress:F

    .line 140
    iget-boolean v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    iput-boolean v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sealed:Z

    .line 141
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->active:Z

    .line 143
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iget v2, v2, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    iput v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->mode:I

    .line 144
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iget-wide v2, v2, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    iput-wide v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sizeBytes:J

    .line 145
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iget-object v2, v2, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appPackageName:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iget-object v2, v2, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 147
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iget-object v2, v2, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 148
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getNames"

    .line 243
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->assertPreparedAndNotSealed(Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->resolveStageDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Z)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-boolean v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPrepared:Z

    if-nez v2, :cond_2

    .line 480
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 484
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPrepared:Z

    .line 485
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    goto :goto_0

    .line 481
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->openReadInternal(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->openWriteInternal(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 273
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeSplit(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iget-object v0, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->createRemoveSplitMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 353
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must specify package name to remove a split"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClientProgress(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mClientProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 213
    :goto_0
    iput p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mClientProgress:F

    .line 214
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 215
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setPermissionsResult(Z)V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mSealed:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 463
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 464
    :try_start_0
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mPermissionsAccepted:Z

    .line 465
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 465
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->destroyInternal()V

    const/16 p1, -0x73

    const-string v0, "User rejected permissions"

    const/4 v1, 0x0

    .line 469
    invoke-direct {p0, p1, v0, v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 458
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must be sealed to accept permissions"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
