.class public Lcom/lody/virtual/client/ipc/VirtualStorageManager;
.super Ljava/lang/Object;
.source "VirtualStorageManager.java"


# static fields
.field private static final sInstance:Lcom/lody/virtual/client/ipc/VirtualStorageManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/server/IVirtualStorageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/lody/virtual/client/ipc/VirtualStorageManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->sInstance:Lcom/lody/virtual/client/ipc/VirtualStorageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VirtualStorageManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->sInstance:Lcom/lody/virtual/client/ipc/VirtualStorageManager;

    return-object v0
.end method

.method private getRemoteInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "vs"

    .line 38
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IVirtualStorageService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRemote()Lcom/lody/virtual/server/IVirtualStorageService;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->mRemote:Lcom/lody/virtual/server/IVirtualStorageService;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/lody/virtual/server/IVirtualStorageService;->asBinder()Landroid/os/IBinder;

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
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->getRemoteInterface()Ljava/lang/Object;

    move-result-object v0

    .line 31
    const-class v1, Lcom/lody/virtual/server/IVirtualStorageService;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IVirtualStorageService;

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->mRemote:Lcom/lody/virtual/server/IVirtualStorageService;

    .line 32
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->mRemote:Lcom/lody/virtual/server/IVirtualStorageService;

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

.method public getVirtualStorage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->getRemote()Lcom/lody/virtual/server/IVirtualStorageService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualStorageService;->getVirtualStorage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isVirtualStorageEnable(Ljava/lang/String;I)Z
    .locals 1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->getRemote()Lcom/lody/virtual/server/IVirtualStorageService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualStorageService;->isVirtualStorageEnable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 70
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public setVirtualStorage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->getRemote()Lcom/lody/virtual/server/IVirtualStorageService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualStorageService;->setVirtualStorage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setVirtualStorageState(Ljava/lang/String;IZ)V
    .locals 1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->getRemote()Lcom/lody/virtual/server/IVirtualStorageService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualStorageService;->setVirtualStorageState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
