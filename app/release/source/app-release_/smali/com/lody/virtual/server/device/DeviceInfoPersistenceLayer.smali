.class public Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;
.super Lcom/lody/virtual/helper/PersistenceLayer;
.source "DeviceInfoPersistenceLayer.java"


# instance fields
.field private mService:Lcom/lody/virtual/server/device/VDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/device/VDeviceManagerService;)V
    .locals 1

    .line 19
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDeviceInfoFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/PersistenceLayer;-><init>(Ljava/io/File;)V

    .line 20
    iput-object p1, p0, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->mService:Lcom/lody/virtual/server/device/VDeviceManagerService;

    return-void
.end method


# virtual methods
.method public getCurrentVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPersistenceFileDamage()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->getPersistenceFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onVersionConflict(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readPersistenceData(Landroid/os/Parcel;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->mService:Lcom/lody/virtual/server/device/VDeviceManagerService;

    invoke-virtual {v0}, Lcom/lody/virtual/server/device/VDeviceManagerService;->getDeviceInfos()Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/SparseArray;->clear()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    new-instance v3, Lcom/lody/virtual/remote/VDeviceInfo;

    invoke-direct {v3, p1}, Lcom/lody/virtual/remote/VDeviceInfo;-><init>(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {v0, v1, v3}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public verifyMagic(Landroid/os/Parcel;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public writeMagic(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public writePersistenceData(Landroid/os/Parcel;)V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->mService:Lcom/lody/virtual/server/device/VDeviceManagerService;

    invoke-virtual {v0}, Lcom/lody/virtual/server/device/VDeviceManagerService;->getDeviceInfos()Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v1

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 44
    invoke-virtual {v0, v3}, Lcom/lody/virtual/helper/collection/SparseArray;->keyAt(I)I

    move-result v4

    .line 45
    invoke-virtual {v0, v3}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/remote/VDeviceInfo;

    .line 46
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {v5, p1, v2}, Lcom/lody/virtual/remote/VDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
