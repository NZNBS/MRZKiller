.class public Lcom/lody/virtual/client/ipc/VDeviceManager;
.super Ljava/lang/Object;
.source "VDeviceManager.java"


# static fields
.field private static final sInstance:Lcom/lody/virtual/client/ipc/VDeviceManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/server/IDeviceInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/lody/virtual/client/ipc/VDeviceManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VDeviceManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VDeviceManager;->sInstance:Lcom/lody/virtual/client/ipc/VDeviceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VDeviceManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/lody/virtual/client/ipc/VDeviceManager;->sInstance:Lcom/lody/virtual/client/ipc/VDeviceManager;

    return-object v0
.end method

.method private getRemoteInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "device"

    .line 38
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/lody/virtual/server/IDeviceInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IDeviceInfoManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo(I)Lcom/lody/virtual/remote/VDeviceInfo;
    .locals 1

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VDeviceManager;->getRemote()Lcom/lody/virtual/server/IDeviceInfoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IDeviceInfoManager;->getDeviceInfo(I)Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/VDeviceInfo;

    return-object p1
.end method

.method public getRemote()Lcom/lody/virtual/server/IDeviceInfoManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VDeviceManager;->mRemote:Lcom/lody/virtual/server/IDeviceInfoManager;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/lody/virtual/server/IDeviceInfoManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    monitor-enter p0

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VDeviceManager;->getRemoteInterface()Ljava/lang/Object;

    move-result-object v0

    .line 31
    const-class v1, Lcom/lody/virtual/server/IDeviceInfoManager;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IDeviceInfoManager;

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/VDeviceManager;->mRemote:Lcom/lody/virtual/server/IDeviceInfoManager;

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VDeviceManager;->mRemote:Lcom/lody/virtual/server/IDeviceInfoManager;

    return-object v0

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
