.class public Lcom/lody/virtual/server/vs/VirtualStorageService;
.super Lcom/lody/virtual/server/IVirtualStorageService$Stub;
.source "VirtualStorageService.java"


# static fields
.field private static final sService:Lcom/lody/virtual/server/vs/VirtualStorageService;


# instance fields
.field private final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/vs/VSConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLayer:Lcom/lody/virtual/server/vs/VSPersistenceLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/lody/virtual/server/vs/VirtualStorageService;

    invoke-direct {v0}, Lcom/lody/virtual/server/vs/VirtualStorageService;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/vs/VirtualStorageService;->sService:Lcom/lody/virtual/server/vs/VirtualStorageService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;-><init>()V

    .line 18
    new-instance v0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/vs/VSPersistenceLayer;-><init>(Lcom/lody/virtual/server/vs/VirtualStorageService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mLayer:Lcom/lody/virtual/server/vs/VSPersistenceLayer;

    .line 19
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v0}, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->read()V

    return-void
.end method

.method private checkUserId(I)V
    .locals 3

    .line 90
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get()Lcom/lody/virtual/server/vs/VirtualStorageService;
    .locals 1

    .line 22
    sget-object v0, Lcom/lody/virtual/server/vs/VirtualStorageService;->sService:Lcom/lody/virtual/server/vs/VirtualStorageService;

    return-object v0
.end method

.method private getOrCreateVSConfigLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/vs/VSConfig;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/vs/VSConfig;

    if-nez p2, :cond_1

    .line 51
    new-instance p2, Lcom/lody/virtual/server/vs/VSConfig;

    invoke-direct {p2}, Lcom/lody/virtual/server/vs/VSConfig;-><init>()V

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p2, Lcom/lody/virtual/server/vs/VSConfig;->enable:Z

    .line 53
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method


# virtual methods
.method getConfigs()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/vs/VSConfig;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getVirtualStorage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->checkUserId(I)V

    .line 62
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->getOrCreateVSConfigLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/vs/VSConfig;

    move-result-object p1

    .line 64
    iget-object p1, p1, Lcom/lody/virtual/server/vs/VSConfig;->vsPath:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isVirtualStorageEnable(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->checkUserId(I)V

    .line 82
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->getOrCreateVSConfigLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/vs/VSConfig;

    move-result-object p1

    .line 84
    iget-boolean p1, p1, Lcom/lody/virtual/server/vs/VSConfig;->enable:Z

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVirtualStorage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->checkUserId(I)V

    .line 36
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->getOrCreateVSConfigLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/vs/VSConfig;

    move-result-object p1

    .line 38
    iput-object p3, p1, Lcom/lody/virtual/server/vs/VSConfig;->vsPath:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mLayer:Lcom/lody/virtual/server/vs/VSPersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->save()V

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVirtualStorageState(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->checkUserId(I)V

    .line 71
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mConfigs:Landroid/util/SparseArray;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/vs/VirtualStorageService;->getOrCreateVSConfigLocked(Ljava/lang/String;I)Lcom/lody/virtual/server/vs/VSConfig;

    move-result-object p1

    .line 73
    iput-boolean p3, p1, Lcom/lody/virtual/server/vs/VSConfig;->enable:Z

    .line 74
    iget-object p1, p0, Lcom/lody/virtual/server/vs/VirtualStorageService;->mLayer:Lcom/lody/virtual/server/vs/VSPersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->save()V

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
