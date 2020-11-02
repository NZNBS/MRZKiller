.class Lcom/lody/virtual/server/pm/PackagePersistenceLayer;
.super Lcom/lody/virtual/helper/PersistenceLayer;
.source "PackagePersistenceLayer.java"


# static fields
.field private static final CURRENT_VERSION:I = 0x3

.field private static final MAGIC:[C


# instance fields
.field private mService:Lcom/lody/virtual/server/pm/VAppManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 17
    fill-array-data v0, :array_0

    sput-object v0, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->MAGIC:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x76s
        0x70s
        0x6bs
        0x67s
    .end array-data
.end method

.method constructor <init>(Lcom/lody/virtual/server/pm/VAppManagerService;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getPackageListFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/PersistenceLayer;-><init>(Ljava/io/File;)V

    .line 24
    iput-object p1, p0, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->mService:Lcom/lody/virtual/server/pm/VAppManagerService;

    return-void
.end method


# virtual methods
.method public getCurrentVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onPersistenceFileDamage()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->getPersistenceFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 73
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->restoreFactoryState()V

    return-void
.end method

.method public onVersionConflict(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readPersistenceData(Landroid/os/Parcel;)V
    .locals 3

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 59
    new-instance v0, Lcom/lody/virtual/server/pm/PackageSetting;

    invoke-direct {v0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;-><init>(Landroid/os/Parcel;)V

    .line 60
    iget-object v2, p0, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->mService:Lcom/lody/virtual/server/pm/VAppManagerService;

    invoke-virtual {v2, v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->loadPackage(Lcom/lody/virtual/server/pm/PackageSetting;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public verifyMagic(Landroid/os/Parcel;)Z
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object p1

    .line 40
    sget-object v0, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->MAGIC:[C

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public writeMagic(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->MAGIC:[C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    return-void
.end method

.method public writePersistenceData(Landroid/os/Parcel;)V
    .locals 4

    .line 46
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 49
    iget-object v2, v2, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/lody/virtual/server/pm/PackageSetting;

    const/4 v3, 0x0

    .line 50
    invoke-virtual {v2, p1, v3}, Lcom/lody/virtual/server/pm/PackageSetting;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 52
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
