.class public Lcom/lody/virtual/client/ipc/VActivityManager;
.super Ljava/lang/Object;
.source "VActivityManager.java"


# static fields
.field private static final sAM:Lcom/lody/virtual/client/ipc/VActivityManager;


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/client/ipc/ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRemote:Lcom/lody/virtual/server/IActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/lody/virtual/client/ipc/VActivityManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VActivityManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VActivityManager;->sAM:Lcom/lody/virtual/client/ipc/VActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mActivities:Ljava/util/Map;

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VActivityManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/lody/virtual/client/ipc/VActivityManager;->sAM:Lcom/lody/virtual/client/ipc/VActivityManager;

    return-object v0
.end method

.method private getRemoteInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "activity"

    .line 65
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/server/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    sget-object v0, Lmirror/android/content/ContentProviderNative;->asInterface:Lmirror/RefStaticMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lody/virtual/server/IActivityManager;->acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    return-object p1
.end method

.method public addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IActivityManager;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public appDoneExecuting()V
    .locals 1

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IActivityManager;->appDoneExecuting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)I
    .locals 8

    .line 210
    :try_start_0
    invoke-static {p1, p3, p4}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->getDelegate(Landroid/content/Context;Landroid/content/ServiceConnection;I)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 211
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/server/IActivityManager;->bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 213
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 8

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/server/IActivityManager;->bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 230
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public broadcastFinish(Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 1

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->broadcastFinish(Lcom/lody/virtual/remote/PendingResultData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 485
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .locals 3

    .line 427
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, v0, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 433
    :goto_0
    sget-object v1, Lmirror/android/app/Activity;->mParent:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 441
    sget-object v1, Lmirror/android/app/Activity;->mFinished:Lmirror/RefBoolean;

    invoke-virtual {v1, v0}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    sget-object v1, Lmirror/android/app/Activity;->mResultCode:Lmirror/RefInt;

    invoke-virtual {v1, v0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    .line 443
    sget-object v2, Lmirror/android/app/Activity;->mResultData:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 444
    invoke-static {p1, v1, v2}, Lcom/lody/virtual/helper/compat/ActivityManagerCompat;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    .line 445
    sget-object p1, Lmirror/android/app/Activity;->mFinished:Lmirror/RefBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmirror/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getActivityForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IActivityManager;->getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 172
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    return-object p1
.end method

.method public getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/ipc/ActivityClientRecord;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mActivities:Ljava/util/Map;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 110
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAppProcessName(I)Ljava/lang/String;
    .locals 1

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getAppProcessName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 294
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IActivityManager;->getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    return-object p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IActivityManager;->getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 156
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInitialPackage(I)Ljava/lang/String;
    .locals 1

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getInitialPackage(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 302
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPackageForIntentSender(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 491
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getPackageForIntentSender(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 493
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IActivityManager;->getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 164
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/remote/PendingIntentData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/remote/PendingIntentData;

    move-result-object p1

    return-object p1
.end method

.method public getProcessPkgList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getProcessPkgList(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 374
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getService()Lcom/lody/virtual/server/IActivityManager;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mRemote:Lcom/lody/virtual/server/IActivityManager;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcom/lody/virtual/server/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const-class v0, Lcom/lody/virtual/client/ipc/VActivityManager;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getRemoteInterface()Ljava/lang/Object;

    move-result-object v1

    .line 56
    const-class v2, Lcom/lody/virtual/server/IActivityManager;

    invoke-static {v2, v1}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/IActivityManager;

    iput-object v1, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mRemote:Lcom/lody/virtual/server/IActivityManager;

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mRemote:Lcom/lody/virtual/server/IActivityManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getServices(II)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 2

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/lody/virtual/server/IActivityManager;->getServices(III)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 278
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/VParceledListSlice;

    return-object p1
.end method

.method public getSystemPid()I
    .locals 1

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IActivityManager;->getSystemPid()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 398
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;
    .locals 1

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 140
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/AppTaskInfo;

    return-object p1
.end method

.method public getUidByPid(I)I
    .locals 1

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->getUidByPid(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 390
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public handleApplicationCrash()V
    .locals 1

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IActivityManager;->handleApplicationCrash()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IActivityManager;->initProcess(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 462
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isAppPid(I)Z
    .locals 1

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->isAppPid(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 382
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isAppProcess(Ljava/lang/String;)Z
    .locals 1

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->isAppProcess(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 310
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isAppRunning(Ljava/lang/String;I)Z
    .locals 1

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IActivityManager;->isAppRunning(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 454
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isVAServiceToken(Landroid/os/IBinder;)Z
    .locals 1

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->isVAServiceToken(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 477
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public killAllApps()V
    .locals 1

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IActivityManager;->killAllApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public killAppByPkg(Ljava/lang/String;I)V
    .locals 1

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IActivityManager;->killAppByPkg(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 1

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyBadgerChange(Lcom/lody/virtual/remote/BadgerInfo;)V
    .locals 1

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->notifyBadgerChange(Lcom/lody/virtual/remote/BadgerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 501
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onActivityCreate(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;III)Lcom/lody/virtual/client/ipc/ActivityClientRecord;
    .locals 12

    .line 97
    new-instance v1, Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    invoke-direct {v1}, Lcom/lody/virtual/client/ipc/ActivityClientRecord;-><init>()V

    move-object/from16 v0, p4

    .line 98
    iput-object v0, v1, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v2, p0

    .line 99
    iget-object v0, v2, Lcom/lody/virtual/client/ipc/VActivityManager;->mActivities:Ljava/util/Map;

    move-object v6, p3

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v3 .. v11}, Lcom/lody/virtual/server/IActivityManager;->onActivityCreated(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public onActivityDestroy(Landroid/os/IBinder;)Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IActivityManager;->onActivityDestroyed(ILandroid/os/IBinder;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 115
    sget-object v0, Lmirror/android/app/Activity;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 116
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->onActivityResumed(Landroid/os/IBinder;)V

    return-void
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .locals 2

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IActivityManager;->onActivityResumed(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/lody/virtual/server/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 262
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public processRestarted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IActivityManager;->processRestarted(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/server/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerProcessObserver(Lcom/lody/virtual/server/interfaces/IProcessObserver;)V
    .locals 1

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->registerProcessObserver(Lcom/lody/virtual/server/interfaces/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removePendingIntent(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->removePendingIntent(Landroid/os/IBinder;)V

    return-void
.end method

.method public sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VActivityManager;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, v0, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 406
    sget-object v1, Lmirror/android/app/ActivityThread;->sendActivityResult:Lmirror/RefMethod;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    const/4 p2, 0x0

    aput-object p2, v2, p1

    invoke-virtual {v1, v0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;I)V
    .locals 0

    .line 467
    invoke-static {p1, p2}, Lcom/lody/virtual/helper/utils/ComponentUtils;->redirectBroadcastIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 469
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 6

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/lody/virtual/server/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 7

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/lody/virtual/server/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startActivities([Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 6

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lody/virtual/server/IActivityManager;->startActivities([Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public startActivity(Landroid/content/Intent;I)I
    .locals 9

    if-gez p2, :cond_0

    const/4 p1, -0x8

    return p1

    .line 89
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v8, p2

    .line 93
    invoke-virtual/range {v1 .. v8}, Lcom/lody/virtual/client/ipc/VActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    .locals 8

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/server/IActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public startService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 1

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IActivityManager;->startService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 180
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    return-object p1
.end method

.method public stopService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 2

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/server/IActivityManager;->stopService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 2

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/server/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 196
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 2

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/lody/virtual/server/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 2

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lody/virtual/server/IActivityManager;->unbindService(Landroid/app/IServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 238
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 219
    :try_start_0
    invoke-static {p1, p2}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->removeDelegate(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object p1

    .line 220
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object p2

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/lody/virtual/server/IActivityManager;->unbindService(Landroid/app/IServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 222
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public unregisterProcessObserver(Lcom/lody/virtual/server/interfaces/IProcessObserver;)V
    .locals 1

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getService()Lcom/lody/virtual/server/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IActivityManager;->unregisterProcessObserver(Lcom/lody/virtual/server/interfaces/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
