.class public Lcom/lody/virtual/client/ipc/VirtualLocationManager;
.super Ljava/lang/Object;
.source "VirtualLocationManager.java"


# static fields
.field public static final MODE_CLOSE:I = 0x0

.field public static final MODE_USE_GLOBAL:I = 0x1

.field public static final MODE_USE_SELF:I = 0x2

.field private static final sInstance:Lcom/lody/virtual/client/ipc/VirtualLocationManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/server/IVirtualLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->sInstance:Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->sInstance:Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    return-object v0
.end method

.method private getRemoteInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "virtual-loc"

    .line 46
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllCell(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;"
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager;->getAllCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getCell(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VCell;
    .locals 1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager;->getCell(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VCell;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/vloc/VCell;

    return-object p1
.end method

.method public getGlobalLocation()Lcom/lody/virtual/remote/vloc/VLocation;
    .locals 1

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IVirtualLocationManager;->getGlobalLocation()Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 175
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/remote/vloc/VLocation;

    return-object v0
.end method

.method public getLocation()Lcom/lody/virtual/remote/vloc/VLocation;
    .locals 2

    .line 160
    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getAppUserId()I

    move-result v0

    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getLocation(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VLocation;
    .locals 1

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager;->getLocation(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 155
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/vloc/VLocation;

    return-object p1
.end method

.method public getMode()I
    .locals 2

    .line 59
    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getAppUserId()I

    move-result v0

    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMode(ILjava/lang/String;)I
    .locals 1

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager;->getMode(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNeighboringCell(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;"
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager;->getNeighboringCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->mRemote:Lcom/lody/virtual/server/IVirtualLocationManager;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/lody/virtual/server/IVirtualLocationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemoteInterface()Ljava/lang/Object;

    move-result-object v0

    .line 39
    const-class v1, Lcom/lody/virtual/server/IVirtualLocationManager;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IVirtualLocationManager;

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->mRemote:Lcom/lody/virtual/server/IVirtualLocationManager;

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->mRemote:Lcom/lody/virtual/server/IVirtualLocationManager;

    return-object v0

    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAllCell(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;)V"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualLocationManager;->setAllCell(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setCell(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VCell;)V
    .locals 1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualLocationManager;->setCell(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VCell;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setGlobalAllCell(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;)V"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IVirtualLocationManager;->setGlobalAllCell(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 131
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setGlobalCell(Lcom/lody/virtual/remote/vloc/VCell;)V
    .locals 1

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IVirtualLocationManager;->setGlobalCell(Lcom/lody/virtual/remote/vloc/VCell;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setGlobalLocation(Lcom/lody/virtual/remote/vloc/VLocation;)V
    .locals 1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IVirtualLocationManager;->setGlobalLocation(Lcom/lody/virtual/remote/vloc/VLocation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setGlobalNeighboringCell(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;)V"
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IVirtualLocationManager;->setGlobalNeighboringCell(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setLocation(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VLocation;)V
    .locals 1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualLocationManager;->setLocation(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VLocation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setMode(ILjava/lang/String;I)V
    .locals 1

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualLocationManager;->setMode(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;)V"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getRemote()Lcom/lody/virtual/server/IVirtualLocationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IVirtualLocationManager;->setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
