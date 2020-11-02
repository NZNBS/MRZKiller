.class public Lcom/lody/virtual/client/ipc/VJobScheduler;
.super Ljava/lang/Object;
.source "VJobScheduler.java"


# static fields
.field private static final sInstance:Lcom/lody/virtual/client/ipc/VJobScheduler;


# instance fields
.field private mRemote:Lcom/lody/virtual/server/IJobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/lody/virtual/client/ipc/VJobScheduler;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VJobScheduler;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VJobScheduler;->sInstance:Lcom/lody/virtual/client/ipc/VJobScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VJobScheduler;
    .locals 1

    .line 27
    sget-object v0, Lcom/lody/virtual/client/ipc/VJobScheduler;->sInstance:Lcom/lody/virtual/client/ipc/VJobScheduler;

    return-object v0
.end method

.method private getRemoteInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "job"

    .line 42
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/lody/virtual/server/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemote()Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IJobScheduler;->cancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelAll()V
    .locals 1

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemote()Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IJobScheduler;->cancelAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enqueue(Landroid/app/job/JobInfo;Ljava/lang/Object;)I
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemote()Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    check-cast p2, Landroid/app/job/JobWorkItem;

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IJobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemote()Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IJobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 1

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemote()Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IJobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    return-object p1
.end method

.method public getRemote()Lcom/lody/virtual/server/IJobScheduler;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VJobScheduler;->mRemote:Lcom/lody/virtual/server/IJobScheduler;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/lody/virtual/server/IJobScheduler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemoteInterface()Ljava/lang/Object;

    move-result-object v0

    .line 35
    const-class v1, Lcom/lody/virtual/server/IJobScheduler;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IJobScheduler;

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/VJobScheduler;->mRemote:Lcom/lody/virtual/server/IJobScheduler;

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VJobScheduler;->mRemote:Lcom/lody/virtual/server/IJobScheduler;

    return-object v0

    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 1

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getRemote()Lcom/lody/virtual/server/IJobScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IJobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 50
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
