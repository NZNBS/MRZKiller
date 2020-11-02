.class Lcom/lody/virtual/server/vs/VSPersistenceLayer;
.super Lcom/lody/virtual/helper/PersistenceLayer;
.source "VSPersistenceLayer.java"


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final MAGIC:[C


# instance fields
.field private final mService:Lcom/lody/virtual/server/vs/VirtualStorageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 19
    fill-array-data v0, :array_0

    sput-object v0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->MAGIC:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x76s
        0x73s
        0x61s
    .end array-data
.end method

.method constructor <init>(Lcom/lody/virtual/server/vs/VirtualStorageService;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getVSConfigFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/PersistenceLayer;-><init>(Ljava/io/File;)V

    .line 25
    iput-object p1, p0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->mService:Lcom/lody/virtual/server/vs/VirtualStorageService;

    return-void
.end method


# virtual methods
.method public getCurrentVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPersistenceFileDamage()V
    .locals 0

    return-void
.end method

.method public onVersionConflict(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readPersistenceData(Landroid/os/Parcel;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->mService:Lcom/lody/virtual/server/vs/VirtualStorageService;

    invoke-virtual {v0}, Lcom/lody/virtual/server/vs/VirtualStorageService;->getConfigs()Landroid/util/SparseArray;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    const-class v3, Lcom/lody/virtual/server/vs/VSConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public verifyMagic(Landroid/os/Parcel;)Z
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object p1

    .line 41
    sget-object v0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->MAGIC:[C

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public writeMagic(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->MAGIC:[C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    return-void
.end method

.method public writePersistenceData(Landroid/os/Parcel;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/lody/virtual/server/vs/VSPersistenceLayer;->mService:Lcom/lody/virtual/server/vs/VirtualStorageService;

    invoke-virtual {v0}, Lcom/lody/virtual/server/vs/VirtualStorageService;->getConfigs()Landroid/util/SparseArray;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 51
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 52
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
