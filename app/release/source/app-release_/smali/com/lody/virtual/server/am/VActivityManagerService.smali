.class public Lcom/lody/virtual/server/am/VActivityManagerService;
.super Lcom/lody/virtual/server/IActivityManager$Stub;
.source "VActivityManagerService.java"


# static fields
.field private static final BROADCAST_NOT_STARTED_PKG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final sService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/lody/virtual/server/am/VActivityManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private final mHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/lody/virtual/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

.field private final mPendingIntents:Lcom/lody/virtual/server/am/PendingIntents;

.field private final mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "Lcom/lody/virtual/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/server/am/ProcessMap<",
            "Lcom/lody/virtual/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private nm:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    const-class v0, Lcom/lody/virtual/server/am/VActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/lody/virtual/server/IActivityManager$Stub;-><init>()V

    .line 83
    new-instance v0, Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    .line 84
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/am/ActivityStack;-><init>(Lcom/lody/virtual/server/am/VActivityManagerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    .line 86
    new-instance v0, Lcom/lody/virtual/server/am/ProcessMap;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    .line 87
    new-instance v0, Lcom/lody/virtual/server/am/PendingIntents;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/PendingIntents;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/PendingIntents;

    .line 88
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->am:Landroid/app/ActivityManager;

    .line 90
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->nm:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->onProcessDead(Lcom/lody/virtual/server/am/ProcessRecord;)V

    return-void
.end method

.method private addRecord(Lcom/lody/virtual/server/am/ServiceRecord;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachClient(ILandroid/os/IBinder;)V
    .locals 5

    .line 692
    invoke-static {p2}, Lcom/lody/virtual/client/IVClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/client/IVClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 699
    :try_start_0
    invoke-interface {v0}, Lcom/lody/virtual/client/IVClient;->getAppThread()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/lody/virtual/helper/compat/ApplicationThreadCompat;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 704
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 709
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/lody/virtual/client/IVClient;->getToken()Landroid/os/IBinder;

    move-result-object v3

    .line 710
    instance-of v4, v3, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 711
    check-cast v3, Lcom/lody/virtual/server/am/ProcessRecord;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_1

    :catch_1
    nop

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 717
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 722
    :cond_3
    :try_start_2
    new-instance v3, Lcom/lody/virtual/server/am/VActivityManagerService$1;

    invoke-direct {v3, p0, p2, v1}, Lcom/lody/virtual/server/am/VActivityManagerService$1;-><init>(Lcom/lody/virtual/server/am/VActivityManagerService;Landroid/os/IBinder;Lcom/lody/virtual/server/am/ProcessRecord;)V

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 730
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 732
    :goto_2
    iput-object v0, v1, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    .line 733
    iput-object v2, v1, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 734
    iput p1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    .line 735
    iget-object p1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    monitor-enter p1

    .line 736
    :try_start_3
    iget-object p2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    iget-object v0, v1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v1, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    invoke-virtual {p2, v0, v2, v1}, Lcom/lody/virtual/server/am/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object p2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    iget v0, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-virtual {p2, v0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 738
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method private cancelNotification(IILjava/lang/String;)V
    .locals 2

    .line 632
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationId(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 633
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationTag(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 634
    iget-object p3, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private connectService(Landroid/app/IServiceConnection;Landroid/content/ComponentName;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Z)V
    .locals 3

    .line 566
    :try_start_0
    new-instance v0, Lcom/lody/virtual/server/secondary/BinderDelegateService;

    iget-object p3, p3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-direct {v0, p2, p3}, Lcom/lody/virtual/server/secondary/BinderDelegateService;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 567
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p3, v1, :cond_0

    .line 568
    sget-object p3, Lmirror/android/app/IServiceConnectionO;->connected:Lmirror/RefMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v1, p2

    invoke-virtual {p3, p1, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    :cond_0
    invoke-interface {p1, p2, v0}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 573
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 287
    iget-object v3, v2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-ne v3, p1, :cond_0

    :cond_1
    iget-object v3, v2, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 288
    invoke-static {p2, v3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSameComponent(Landroid/content/pm/ComponentInfo;Landroid/content/pm/ComponentInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    monitor-exit v0

    return-object v2

    :cond_2
    const/4 p1, 0x0

    .line 292
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private findRecordLocked(Landroid/app/IServiceConnection;)Lcom/lody/virtual/server/am/ServiceRecord;
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 299
    invoke-virtual {v2, p1}, Lcom/lody/virtual/server/am/ServiceRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 303
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static get()Lcom/lody/virtual/server/am/VActivityManagerService;
    .locals 1

    .line 94
    sget-object v0, Lcom/lody/virtual/server/am/VActivityManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/VActivityManagerService;

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->am:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 683
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 684
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleStaticBroadcastAsUser(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 8

    .line 1090
    monitor-enter p0

    .line 1091
    :try_start_0
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    .line 1092
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->isStartProcessForBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 1096
    iget-object v1, v0, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 1097
    iget-object v3, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/lody/virtual/server/am/VActivityManagerService;->performScheduleReceiver(Lcom/lody/virtual/client/IVClient;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)V

    .line 1100
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleUserBroadcast(ILandroid/content/pm/ActivityInfo;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)Z
    .locals 1

    if-eqz p3, :cond_0

    .line 1075
    invoke-static {p2}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1079
    :cond_0
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/lody/virtual/client/env/SpecialComponentList;->unprotectAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1082
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleStaticBroadcastAsUser(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)V

    const/4 p1, 0x1

    return p1
.end method

.method private static isStartProcessForBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1104
    sget-object p0, Lcom/lody/virtual/client/env/Constants;->PRIVILEGE_APP:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onProcessDead(Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 3

    .line 742
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    iget-object v1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/server/am/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    iget v1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->remove(I)V

    .line 744
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->processDead(Lcom/lody/virtual/server/am/ProcessRecord;)V

    .line 745
    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->lock:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private parseVPid(Ljava/lang/String;)I
    .locals 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private performScheduleReceiver(Lcom/lody/virtual/client/IVClient;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 2

    .line 1110
    invoke-static {p3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1111
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->get()Lcom/lody/virtual/server/am/BroadcastSystem;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p5}, Lcom/lody/virtual/server/am/BroadcastSystem;->broadcastSent(ILandroid/content/pm/ActivityInfo;Lcom/lody/virtual/remote/PendingResultData;)V

    .line 1113
    :try_start_0
    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p4, p5}, Lcom/lody/virtual/client/IVClient;->scheduleReceiver(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    if-eqz p5, :cond_0

    .line 1116
    invoke-virtual {p5}, Lcom/lody/virtual/remote/PendingResultData;->finish()V

    :cond_0
    :goto_0
    return-void
.end method

.method private performStartProcessLocked(IILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 3

    .line 813
    new-instance v0, Lcom/lody/virtual/server/am/ProcessRecord;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/lody/virtual/server/am/ProcessRecord;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V

    .line 814
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_VA_|_binder_"

    .line 815
    invoke-static {v1, v2, v0}, Lcom/lody/virtual/helper/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v2, "_VA_|_vuid_"

    .line 816
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "_VA_|_process_"

    .line 817
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p3, "_VA_|_pkg_"

    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-static {p2}, Lcom/lody/virtual/client/stub/VASettings;->getStubAuthority(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_VA_|_init_process_"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/lody/virtual/client/ipc/ProviderCall;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const-string p2, "_VA_|_pid_"

    .line 823
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "_VA_|_client_"

    .line 824
    invoke-static {p1, p3}, Lcom/lody/virtual/helper/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 825
    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->attachClient(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method private postNotification(IILjava/lang/String;Landroid/app/Notification;)V
    .locals 2

    .line 638
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationId(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 639
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v1, p1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->dealNotificationTag(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {}, Lcom/lody/virtual/client/ipc/VNotificationManager;->get()Lcom/lody/virtual/client/ipc/VNotificationManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p1}, Lcom/lody/virtual/client/ipc/VNotificationManager;->addNotification(ILjava/lang/String;Ljava/lang/String;I)V

    .line 643
    :try_start_0
    iget-object p1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, p2, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 645
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private processDead(Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 224
    iget-object v3, v2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v2, v2, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    iget v3, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    if-ne v2, v3, :cond_0

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/am/ActivityStack;->processDied(Lcom/lody/virtual/server/am/ProcessRecord;)V

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private queryFreeStubProcessLocked()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 830
    :goto_0
    sget v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_COUNT:I

    if-ge v1, v2, :cond_3

    .line 831
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v2}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 834
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v2, v3}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 835
    iget v2, v2, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;
    .locals 1

    if-eqz p0, :cond_0

    .line 103
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private sendFirstLaunchBroadcast(Lcom/lody/virtual/server/pm/PackageSetting;I)V
    .locals 4

    .line 793
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 794
    iget-object v1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    iget p1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    invoke-static {p1, p2}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result p1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.user_handle"

    .line 796
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    invoke-virtual {p0, v0, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    return-void
.end method

.method private startServiceCommon(Landroid/content/Intent;ZI)Landroid/content/ComponentName;
    .locals 8

    .line 317
    invoke-static {p1, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 321
    :cond_0
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getProcessName(Landroid/content/pm/ComponentInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p3, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 326
    sget-object p1, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to start new Process for : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 329
    :cond_1
    iget-object v1, v2, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    .line 330
    invoke-direct {p0, p3, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object p3

    if-nez p3, :cond_2

    .line 332
    new-instance p3, Lcom/lody/virtual/server/am/ServiceRecord;

    invoke-direct {p3}, Lcom/lody/virtual/server/am/ServiceRecord;-><init>()V

    .line 333
    iput v3, p3, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/lody/virtual/server/am/ServiceRecord;->activeSince:J

    .line 335
    iput-object v2, p3, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    .line 336
    iput-object v0, p3, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 338
    :try_start_0
    iget-object v2, p3, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v1, p3, v2, v3}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleCreateService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 340
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 342
    :goto_0
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->addRecord(Lcom/lody/virtual/server/am/ServiceRecord;)V

    .line 344
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/lody/virtual/server/am/ServiceRecord;->lastActivityTime:J

    if-eqz p2, :cond_4

    .line 346
    iget p2, p3, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    const/4 v2, 0x1

    add-int/2addr p2, v2

    iput p2, p3, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    .line 347
    iget-object p2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3

    iget-object p2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x5

    if-ge p2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 350
    :goto_1
    :try_start_1
    iget v5, p3, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p3

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleServiceArgs(Landroid/os/IInterface;Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 355
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method private stopServiceCommon(Lcom/lody/virtual/server/am/ServiceRecord;Landroid/content/ComponentName;)V
    .locals 8

    .line 388
    iget-object v0, p1, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 389
    iget-object v2, v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IServiceConnection;

    .line 393
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    .line 394
    sget-object v4, Lmirror/android/app/IServiceConnectionO;->connected:Lmirror/RefMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 396
    :cond_0
    invoke-interface {v3, p2, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 399
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 403
    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    iget-object v1, v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    invoke-static {v2, p1, v1}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleUnbindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 405
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 409
    :cond_2
    :try_start_2
    iget-object p2, p1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {p2, p1}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleStopService(Landroid/os/IInterface;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 411
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 413
    :goto_2
    iget-object p2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/lody/virtual/server/am/VActivityManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/VActivityManagerService;-><init>()V

    invoke-virtual {v0, p0}, Lcom/lody/virtual/server/am/VActivityManagerService;->onCreate(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public acquireProviderClient(ILandroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 237
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 242
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object p1

    .line 246
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p1, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    invoke-interface {v0}, Lcom/lody/virtual/client/IVClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :try_start_2
    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    invoke-interface {p1, p2}, Lcom/lody/virtual/client/IVClient;->acquireProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 246
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Who are you?"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 238
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/PendingIntents;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/PendingIntents;->addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public appDoneExecuting()V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 974
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 976
    iput-boolean v2, v1, Lcom/lody/virtual/server/am/ProcessRecord;->doneExecuting:Z

    .line 977
    iget-object v1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->lock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 979
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 2

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    invoke-static {p3, p7}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 423
    monitor-exit p0

    return p2

    .line 425
    :cond_0
    invoke-direct {p0, p7, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object p4

    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    and-int/2addr p6, v0

    if-eqz p6, :cond_2

    .line 429
    invoke-direct {p0, p3, p2, p7}, Lcom/lody/virtual/server/am/VActivityManagerService;->startServiceCommon(Landroid/content/Intent;ZI)Landroid/content/ComponentName;

    .line 430
    invoke-direct {p0, p7, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object p4

    :cond_2
    if-nez p4, :cond_3

    .line 434
    monitor-exit p0

    return p2

    .line 436
    :cond_3
    invoke-virtual {p4, p3}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 438
    iget-object p6, p1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    if-eqz p6, :cond_5

    iget-object p6, p1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {p6}, Landroid/os/IBinder;->pingBinder()Z

    move-result p6

    if-eqz p6, :cond_5

    .line 439
    iget-boolean p6, p1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->doRebind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_4

    .line 441
    :try_start_1
    iget-object p6, p4, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object p6, p6, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {p6, p4, p3, v0, p2}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleBindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p6

    .line 443
    :try_start_2
    invoke-virtual {p6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 446
    :cond_4
    :goto_1
    new-instance p6, Landroid/content/ComponentName;

    iget-object p7, p4, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p7, p7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, p4, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p6, p7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0, p5, p6, p1, p2}, Lcom/lody/virtual/server/am/VActivityManagerService;->connectService(Landroid/app/IServiceConnection;Landroid/content/ComponentName;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 450
    :cond_5
    :try_start_3
    iget-object p1, p4, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {p1, p4, p3, p2, p2}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleBindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 452
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 455
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p4, Lcom/lody/virtual/server/am/ServiceRecord;->lastActivityTime:J

    .line 456
    invoke-virtual {p4, p3, p5}, Lcom/lody/virtual/server/am/ServiceRecord;->addToBoundIntent(Landroid/content/Intent;Landroid/app/IServiceConnection;)V

    .line 457
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 458
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILcom/lody/virtual/os/VUserHandle;)Z
    .locals 1

    .line 1041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p4, :cond_0

    .line 1043
    invoke-virtual {p4}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result p1

    const-string p4, "_VA_|_user_id_"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public broadcastFinish(Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 1

    .line 1123
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->get()Lcom/lody/virtual/server/am/BroadcastSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/BroadcastSystem;->broadcastFinish(Lcom/lody/virtual/remote/PendingResultData;)V

    return-void
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    return-object p1
.end method

.method public findProcessLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    return-object p1
.end method

.method public getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getAppProcessName(I)Ljava/lang/String;
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 865
    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 867
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFreeStubCount()I
    .locals 2

    .line 750
    sget v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_COUNT:I

    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInitialPackage(I)Ljava/lang/String;
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 960
    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 962
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 963
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackageForIntentSender(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/PendingIntents;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/PendingIntents;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/remote/PendingIntentData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p1, Lcom/lody/virtual/remote/PendingIntentData;->creator:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/remote/PendingIntentData;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/PendingIntents;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/PendingIntents;->getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/remote/PendingIntentData;

    move-result-object p1

    return-object p1
.end method

.method public getProcessPkgList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 876
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 878
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 878
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getServices(III)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/lody/virtual/remote/VParceledListSlice<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 579
    iget-object p1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    monitor-enter p1

    .line 580
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ServiceRecord;

    .line 582
    iget-object v2, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v2, v2, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-eq v2, p3, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    new-instance v2, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 586
    iget-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    iput v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 587
    iget-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    iput v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 588
    iget-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 590
    iget-object v4, v3, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 591
    iget-object v3, v3, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 593
    :cond_1
    iget-wide v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->activeSince:J

    iput-wide v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 594
    iget-wide v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->lastActivityTime:J

    iput-wide v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 595
    invoke-virtual {v1}, Lcom/lody/virtual/server/am/ServiceRecord;->getClientCount()I

    move-result v3

    iput v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 596
    iget-object v3, v1, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 597
    iget v1, v1, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v2, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 598
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 600
    :cond_3
    new-instance p3, Lcom/lody/virtual/remote/VParceledListSlice;

    invoke-direct {p3, p2}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit p1

    return-object p3

    :catchall_0
    move-exception p2

    .line 601
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getSystemPid()I
    .locals 1

    .line 180
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v0

    return v0
.end method

.method public getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/ActivityStack;->getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public getUidByPid(I)I
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 804
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 806
    iget p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    monitor-exit v0

    return p1

    .line 808
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 808
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public handleApplicationCrash()V
    .locals 0

    return-void
.end method

.method handleStaticBroadcast(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)Z
    .locals 7

    const-string v0, "_VA_|_intent_"

    .line 1060
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    const-string v0, "_VA_|_component_"

    .line 1061
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    const-string v0, "_VA_|_user_id_"

    const/16 v1, -0x2710

    .line 1062
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x0

    if-nez v5, :cond_0

    return v0

    :cond_0
    if-gez p3, :cond_1

    .line 1067
    sget-object p1, Lcom/lody/virtual/server/am/VActivityManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sent a broadcast without userId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 1070
    :cond_1
    invoke-static {p3, p1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v2

    move-object v1, p0

    move-object v3, p2

    move-object v6, p4

    .line 1071
    invoke-direct/range {v1 .. v6}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleUserBroadcast(ILandroid/content/pm/ActivityInfo;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)Z

    move-result p1

    return p1
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 757
    iget p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 758
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAppPid(I)Z
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 856
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 857
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAppProcess(Ljava/lang/String;)Z
    .locals 1

    .line 850
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->parseVPid(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppRunning(Ljava/lang/String;I)Z
    .locals 4

    .line 917
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, v2}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 921
    iget v3, v1, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_0

    iget-object v1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 926
    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 927
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isVAServiceToken(Landroid/os/IBinder;)Z
    .locals 0

    .line 512
    instance-of p1, p1, Lcom/lody/virtual/server/am/ServiceRecord;

    return p1
.end method

.method public killAllApps()V
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 885
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v2}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v2, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 887
    iget v2, v2, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public killAppByPkg(Ljava/lang/String;I)V
    .locals 7

    .line 894
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    monitor-enter v0

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v1}, Lcom/lody/virtual/server/am/ProcessMap;->getMap()Lcom/lody/virtual/helper/collection/ArrayMap;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/ArrayMap;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3

    .line 898
    invoke-virtual {v1, v3}, Lcom/lody/virtual/helper/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/helper/collection/SparseArray;

    const/4 v4, 0x0

    .line 899
    :goto_1
    invoke-virtual {v2}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 900
    invoke-virtual {v2, v4}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/server/am/ProcessRecord;

    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    .line 902
    iget v6, v5, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-eq v6, p2, :cond_0

    goto :goto_2

    .line 906
    :cond_0
    iget-object v6, v5, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 907
    iget v5, v5, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    .line 911
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/lody/virtual/server/am/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 935
    iget p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 937
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

.method public notifyBadgerChange(Lcom/lody/virtual/remote/BadgerInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lody.virtual.BADGER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    iget v1, p1, Lcom/lody/virtual/remote/BadgerInfo;->userId:I

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    iget-object v1, p1, Lcom/lody/virtual/remote/BadgerInfo;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    iget p1, p1, Lcom/lody/virtual/remote/BadgerInfo;->badgerCount:I

    const-string v1, "badgerCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1132
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityCreated(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V
    .locals 12

    move-object v0, p0

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v2, v0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/lody/virtual/server/am/ActivityStack;->onActivityCreated(Lcom/lody/virtual/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(ILandroid/os/IBinder;)Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->onActivityDestroyed(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActivityResumed(ILandroid/os/IBinder;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->onActivityResumed(ILandroid/os/IBinder;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    .line 112
    invoke-static {p1}, Lcom/lody/virtual/server/am/AttributeCache;->init(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x89

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 125
    sget-object p1, Lcom/lody/virtual/server/am/VActivityManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to found PackageInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IActivityManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    throw p1
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;
    .locals 1

    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    invoke-static {p1, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 534
    monitor-exit p0

    return-object v0

    .line 536
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 538
    invoke-virtual {p2, p1}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 540
    iget-object p1, p1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    monitor-exit p0

    return-object p1

    .line 543
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 544
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public processRestarted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 651
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->getCallingPid()I

    move-result v0

    .line 652
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->getAppId(Ljava/lang/String;)I

    move-result v1

    .line 653
    invoke-static {p3, v1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v1

    .line 654
    monitor-enter p0

    .line 655
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->findProcessLocked(I)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 657
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 658
    iget p3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 659
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->getProcessName(I)Ljava/lang/String;

    move-result-object p3

    .line 660
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->parseVPid(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 662
    invoke-direct {p0, v1, p3, p1, p2}, Lcom/lody/virtual/server/am/VActivityManagerService;->performStartProcessLocked(IILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    .line 665
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;I)V
    .locals 2

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    check-cast p1, Lcom/lody/virtual/server/am/ServiceRecord;

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 554
    iput-object p3, p2, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 555
    iget-object p3, p2, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/IServiceConnection;

    .line 556
    iget-object v0, p1, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    .line 557
    invoke-direct {p0, p4, v0, p2, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->connectService(Landroid/app/IServiceConnection;Landroid/content/ComponentName;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Z)V

    goto :goto_0

    .line 561
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerProcessObserver(Lcom/lody/virtual/server/interfaces/IProcessObserver;)V
    .locals 0

    return-void
.end method

.method public removePendingIntent(Landroid/os/IBinder;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPendingIntents:Lcom/lody/virtual/server/am/PendingIntents;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/am/PendingIntents;->removePendingIntent(Landroid/os/IBinder;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V
    .locals 2

    .line 1032
    invoke-static {p1}, Lcom/lody/virtual/client/env/SpecialComponentList;->protectIntent(Landroid/content/Intent;)V

    .line 1033
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1035
    invoke-virtual {p2}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result p2

    const-string v1, "_VA_|_user_id_"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;)V
    .locals 1

    .line 1049
    invoke-static {p1}, Lcom/lody/virtual/client/env/SpecialComponentList;->protectIntent(Landroid/content/Intent;)V

    .line 1050
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 1052
    invoke-virtual {p2}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result p2

    const-string v0, "_VA_|_user_id_"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    :cond_0
    invoke-virtual {p3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1022
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 1024
    invoke-virtual {p2}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result v0

    const-string v2, "_VA_|_user_id_"

    move-object v3, p1

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    const/4 v0, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1027
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;IIII)V
    .locals 0

    .line 518
    monitor-enter p0

    .line 519
    :try_start_0
    check-cast p1, Lcom/lody/virtual/server/am/ServiceRecord;

    if-nez p1, :cond_0

    .line 521
    monitor-exit p0

    return-void

    :cond_0
    const/4 p3, 0x2

    if-ne p3, p2, :cond_1

    .line 524
    iget-object p2, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 526
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;ZI)V
    .locals 0

    .line 607
    check-cast p2, Lcom/lody/virtual/server/am/ServiceRecord;

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 613
    iget p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundId:I

    if-eq p1, p3, :cond_1

    .line 614
    iget p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundId:I

    if-eqz p1, :cond_0

    .line 615
    iget p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundId:I

    iget-object p5, p2, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p5, p5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p6, p1, p5}, Lcom/lody/virtual/server/am/VActivityManagerService;->cancelNotification(IILjava/lang/String;)V

    .line 617
    :cond_0
    iput p3, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundId:I

    .line 619
    :cond_1
    iput-object p4, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 620
    iget-object p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p6, p3, p1, p4}, Lcom/lody/virtual/server/am/VActivityManagerService;->postNotification(IILjava/lang/String;Landroid/app/Notification;)V

    goto :goto_0

    .line 611
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null notification"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz p5, :cond_4

    .line 623
    iget p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundId:I

    iget-object p3, p2, Lcom/lody/virtual/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p6, p1, p3}, Lcom/lody/virtual/server/am/VActivityManagerService;->cancelNotification(IILjava/lang/String;)V

    const/4 p1, 0x0

    .line 624
    iput p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundId:I

    const/4 p1, 0x0

    .line 625
    iput-object p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    :cond_4
    :goto_0
    return-void
.end method

.method public startActivities([Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 8

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    array-length v0, p1

    new-array v4, v0, [Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x0

    .line 141
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 142
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p5}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, -0x1

    .line 144
    monitor-exit p0

    return p1

    .line 146
    :cond_0
    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    move v2, p5

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/lody/virtual/server/am/ActivityStack;->startActivitiesLocked(I[Landroid/content/Intent;[Landroid/content/pm/ActivityInfo;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I
    .locals 8

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mMainStack:Lcom/lody/virtual/server/am/ActivityStack;

    move v1, p7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;
    .locals 3

    .line 762
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->getFreeStubCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAllApps()V

    .line 766
    :cond_0
    invoke-static {p3}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object v0

    .line 767
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p3, :cond_1

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {v0, p2}, Lcom/lody/virtual/server/pm/PackageSetting;->isLaunched(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 772
    invoke-direct {p0, v0, p2}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendFirstLaunchBroadcast(Lcom/lody/virtual/server/pm/PackageSetting;I)V

    const/4 v2, 0x1

    .line 773
    invoke-virtual {v0, p2, v2}, Lcom/lody/virtual/server/pm/PackageSetting;->setLaunched(IZ)V

    .line 774
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/server/pm/VAppManagerService;->savePersistenceData()V

    .line 776
    :cond_2
    iget v0, v0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    invoke-static {p2, v0}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result p2

    .line 777
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mProcessNames:Lcom/lody/virtual/server/am/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/server/am/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    .line 778
    iget-object v2, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    invoke-interface {v2}, Lcom/lody/virtual/client/IVClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 781
    :cond_3
    invoke-direct {p0}, Lcom/lody/virtual/server/am/VActivityManagerService;->queryFreeStubProcessLocked()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    return-object v1

    .line 785
    :cond_4
    invoke-direct {p0, p2, v0, p3, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->performStartProcessLocked(IILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 787
    iget-object p2, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public startService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 0

    .line 310
    monitor-enter p0

    const/4 p1, 0x1

    .line 311
    :try_start_0
    invoke-direct {p0, p2, p1, p4}, Lcom/lody/virtual/server/am/VActivityManagerService;->startServiceCommon(Landroid/content/Intent;ZI)Landroid/content/ComponentName;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    invoke-static {p2, p4}, Lcom/lody/virtual/server/am/VActivityManagerService;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 363
    monitor-exit p0

    return p2

    .line 365
    :cond_0
    invoke-direct {p0, p4, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(ILandroid/content/pm/ServiceInfo;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object p3

    if-nez p3, :cond_1

    .line 367
    monitor-exit p0

    return p2

    .line 369
    :cond_1
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->stopServiceCommon(Lcom/lody/virtual/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 370
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;II)Z
    .locals 0

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    check-cast p2, Lcom/lody/virtual/server/am/ServiceRecord;

    if-eqz p2, :cond_1

    .line 378
    iget p4, p2, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    if-eq p4, p3, :cond_0

    const/4 p4, -0x1

    if-ne p3, p4, :cond_1

    .line 379
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->stopServiceCommon(Lcom/lody/virtual/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 380
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 383
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 384
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopUser(ILandroid/app/IStopUserCallback$Stub;)I
    .locals 4

    .line 1002
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 1003
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mPidsSelfLocked:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, v2}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 1006
    iget v3, v1, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    if-ne v3, p1, :cond_0

    .line 1007
    iget v1, v1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1010
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/app/IStopUserCallback$Stub;->userStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1014
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 1010
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 0

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    check-cast p1, Lcom/lody/virtual/server/am/ServiceRecord;

    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    iput-boolean p3, p1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->doRebind:Z

    .line 506
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unbindService(Landroid/app/IServiceConnection;I)Z
    .locals 3

    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->findRecordLocked(Landroid/app/IServiceConnection;)Lcom/lody/virtual/server/am/ServiceRecord;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 467
    monitor-exit p0

    return p1

    .line 470
    :cond_0
    iget-object v0, p2, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 471
    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->removeConnection(Landroid/app/IServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :try_start_1
    iget-object v2, p2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    iget-object v1, v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    invoke-static {v2, p2, v1}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleUnbindService(Landroid/os/IInterface;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 478
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 482
    :cond_2
    iget p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->startId:I

    if-gtz p1, :cond_3

    invoke-virtual {p2}, Lcom/lody/virtual/server/am/ServiceRecord;->getConnectionCount()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz p1, :cond_3

    .line 484
    :try_start_3
    iget-object p1, p2, Lcom/lody/virtual/server/am/ServiceRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->appThread:Landroid/os/IInterface;

    invoke-static {p1, p2}, Lcom/lody/virtual/helper/compat/IApplicationThreadCompat;->scheduleStopService(Landroid/os/IInterface;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 486
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 488
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_3

    .line 489
    iget-object p1, p0, Lcom/lody/virtual/server/am/VActivityManagerService;->mHistory:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/4 p1, 0x1

    .line 492
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 493
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public unregisterProcessObserver(Lcom/lody/virtual/server/interfaces/IProcessObserver;)V
    .locals 0

    return-void
.end method
