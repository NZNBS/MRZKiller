.class public Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;
.super Lcom/lody/virtual/server/IPackageInstaller$Stub;
.source "VPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;,
        Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$PackageInstallObserverAdapter;,
        Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;
    }
.end annotation


# static fields
.field private static final MAX_ACTIVE_SESSIONS:J = 0x400L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final gDefault:Lcom/lody/virtual/helper/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/Singleton<",
            "Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbacks:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

.field private mContext:Landroid/content/Context;

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

.field private final mRandom:Ljava/util/Random;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->gDefault:Lcom/lody/virtual/helper/utils/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/lody/virtual/server/IPackageInstaller$Stub;-><init>()V

    .line 63
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mRandom:Ljava/util/Random;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;-><init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInternalCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    .line 72
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 76
    new-instance v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mCallbacks:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mCallbacks:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Landroid/util/SparseArray;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private allocateSessionIdLocked()I
    .locals 3

    const/4 v0, 0x0

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 265
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate session ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSessionInternal(Lcom/lody/virtual/server/pm/installer/SessionParams;Ljava/lang/String;I)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 107
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v9

    .line 110
    iget-object v12, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v12

    .line 112
    :try_start_0
    iget-object v0, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v0, v9}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x400

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->allocateSessionIdLocked()I

    move-result v0

    .line 118
    new-instance v13, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    iget-object v3, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInternalCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    iget-object v4, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getPackageInstallerStageDir()Ljava/io/File;

    move-result-object v11

    move-object v2, v13

    move-object/from16 v6, p2

    move v7, v0

    move/from16 v8, p3

    move-object v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;-><init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;IIILcom/lody/virtual/server/pm/installer/SessionParams;Ljava/io/File;)V

    .line 119
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v2, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mCallbacks:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    iget v3, v13, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iget v4, v13, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->access$100(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;II)V

    return v0

    .line 114
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many active sessions for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static get()Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;
    .locals 1

    .line 80
    sget-object v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->gDefault:Lcom/lody/virtual/helper/utils/Singleton;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    return-object v0
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    .line 89
    iget v3, v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->installerUid:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isCallingUidOwner(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    if-eqz v1, :cond_0

    .line 174
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->isCallingUidOwner(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->open()V

    .line 178
    monitor-exit v0

    return-object v1

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller has no access to session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->isCallingUidOwner(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->abandon()V

    .line 159
    monitor-exit v0

    return-void

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller has no access to session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createSession(Lcom/lody/virtual/server/pm/installer/SessionParams;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->createSessionInternal(Lcom/lody/virtual/server/pm/installer/SessionParams;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 101
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAllSessions(I)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 194
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    .line 196
    iget v4, v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    if-ne v4, p1, :cond_0

    .line 197
    invoke-virtual {v3}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->generateInfo()Lcom/lody/virtual/server/pm/installer/SessionInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    new-instance p1, Lcom/lody/virtual/remote/VParceledListSlice;

    invoke-direct {p1, v0}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 200
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getMySessions(Ljava/lang/String;I)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 208
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    .line 210
    iget-object v4, v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->installerPackageName:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    if-ne v4, p2, :cond_0

    .line 212
    invoke-virtual {v3}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->generateInfo()Lcom/lody/virtual/server/pm/installer/SessionInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    new-instance p1, Lcom/lody/virtual/remote/VParceledListSlice;

    invoke-direct {p1, v0}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 215
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSessionInfo(I)Lcom/lody/virtual/server/pm/installer/SessionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->generateInfo()Lcom/lody/virtual/server/pm/installer/SessionInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mCallbacks:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;I)V

    return-void
.end method

.method public setPermissionsResult(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 253
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->uninstallPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p4, :cond_1

    .line 233
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string p3, "android.content.pm.extra.PACKAGE_NAME"

    .line 234
    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    xor-int/lit8 p1, p2, 0x1

    const-string p3, "android.content.pm.extra.STATUS"

    .line 235
    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-static {p2}, Lcom/lody/virtual/server/pm/installer/PackageHelper;->deleteStatusToString(Z)Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string p2, "android.content.pm.extra.LEGACY_STATUS"

    .line 237
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mCallbacks:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    if-eqz v1, :cond_0

    .line 128
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->isCallingUidOwner(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object p1, v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iput-object p2, p1, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 133
    iget-object p1, v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    const-wide/16 v2, -0x1

    iput-wide v2, p1, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    .line 135
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInternalCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {p1, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    .line 136
    monitor-exit v0

    return-void

    .line 129
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->isCallingUidOwner(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object p1, v1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->params:Lcom/lody/virtual/server/pm/installer/SessionParams;

    iput-object p2, p1, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->mInternalCallback:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    invoke-virtual {p1, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    .line 148
    monitor-exit v0

    return-void

    .line 144
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller has no access to session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
