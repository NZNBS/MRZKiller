.class public Lcom/lody/virtual/server/location/VirtualLocationService;
.super Lcom/lody/virtual/server/IVirtualLocationManager$Stub;
.source "VirtualLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;
    }
.end annotation


# static fields
.field private static final MODE_CLOSE:I = 0x0

.field private static final MODE_USE_GLOBAL:I = 0x1

.field private static final MODE_USE_SELF:I = 0x2

.field private static final sInstance:Lcom/lody/virtual/server/location/VirtualLocationService;


# instance fields
.field private final mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

.field private final mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-direct {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/location/VirtualLocationService;->sInstance:Lcom/lody/virtual/server/location/VirtualLocationService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;-><init>()V

    .line 25
    new-instance v0, Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;

    .line 26
    new-instance v0, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    invoke-direct {v0}, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    .line 85
    new-instance v0, Lcom/lody/virtual/server/location/VirtualLocationService$1;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getVirtualLocationFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/location/VirtualLocationService$1;-><init>(Lcom/lody/virtual/server/location/VirtualLocationService;Ljava/io/File;)V

    iput-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    .line 122
    invoke-virtual {v0}, Lcom/lody/virtual/helper/PersistenceLayer;->read()V

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;

    return-object p0
.end method

.method public static get()Lcom/lody/virtual/server/location/VirtualLocationService;
    .locals 1

    .line 118
    sget-object v0, Lcom/lody/virtual/server/location/VirtualLocationService;->sInstance:Lcom/lody/virtual/server/location/VirtualLocationService;

    return-object v0
.end method

.method private getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    if-nez p1, :cond_1

    .line 150
    new-instance p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    invoke-direct {p1}, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;-><init>()V

    const/4 v1, 0x0

    .line 151
    iput v1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    .line 152
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p2}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    .line 212
    iget p2, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_0
    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->allCell:Ljava/util/List;

    return-object p1

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->allCell:Ljava/util/List;

    return-object p1
.end method

.method public getCell(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VCell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p2}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    .line 197
    iget p2, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->cell:Lcom/lody/virtual/remote/vloc/VCell;

    return-object p1

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->cell:Lcom/lody/virtual/remote/vloc/VCell;

    return-object p1
.end method

.method public getGlobalLocation()Lcom/lody/virtual/remote/vloc/VLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iget-object v0, v0, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->location:Lcom/lody/virtual/remote/vloc/VLocation;

    return-object v0
.end method

.method public getLocation(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    .line 247
    iget-object p2, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p2}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    .line 248
    iget p2, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 250
    :cond_0
    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->location:Lcom/lody/virtual/remote/vloc/VLocation;

    return-object p1

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->location:Lcom/lody/virtual/remote/vloc/VLocation;

    return-object p1
.end method

.method public getMode(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p2}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    .line 130
    iget p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p2}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    .line 227
    iget p2, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 229
    :cond_0
    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->neighboringCell:Ljava/util/List;

    return-object p1

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iget-object p1, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->neighboringCell:Ljava/util/List;

    return-object p1
.end method

.method public setAllCell(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    iput-object p3, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->allCell:Ljava/util/List;

    .line 166
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    return-void
.end method

.method public setCell(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    iput-object p3, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->cell:Lcom/lody/virtual/remote/vloc/VCell;

    .line 160
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iput-object p1, v0, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->allCell:Ljava/util/List;

    .line 184
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    return-void
.end method

.method public setGlobalCell(Lcom/lody/virtual/remote/vloc/VCell;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iput-object p1, v0, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->cell:Lcom/lody/virtual/remote/vloc/VCell;

    .line 178
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    return-void
.end method

.method public setGlobalLocation(Lcom/lody/virtual/remote/vloc/VLocation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iput-object p1, v0, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->location:Lcom/lody/virtual/remote/vloc/VLocation;

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mGlobalConfig:Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    iput-object p1, v0, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->neighboringCell:Ljava/util/List;

    .line 190
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    return-void
.end method

.method public setLocation(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    iput-object p3, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->location:Lcom/lody/virtual/remote/vloc/VLocation;

    .line 241
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    return-void
.end method

.method public setMode(ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mLocConfigs:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    iput p3, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->mode:I

    .line 138
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/vloc/VCell;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/location/VirtualLocationService;->getOrCreateConfig(ILjava/lang/String;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object p1

    iput-object p3, p1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->neighboringCell:Ljava/util/List;

    .line 172
    iget-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService;->mPersistenceLayer:Lcom/lody/virtual/helper/PersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/PersistenceLayer;->save()V

    return-void
.end method
