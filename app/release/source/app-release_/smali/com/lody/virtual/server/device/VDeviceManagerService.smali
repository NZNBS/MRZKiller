.class public Lcom/lody/virtual/server/device/VDeviceManagerService;
.super Lcom/lody/virtual/server/IDeviceInfoManager$Stub;
.source "VDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/lody/virtual/server/device/VDeviceManagerService;


# instance fields
.field private final mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "Lcom/lody/virtual/remote/VDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistenceLayer:Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;

.field private mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/lody/virtual/server/device/VDeviceManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/device/VDeviceManagerService;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/device/VDeviceManagerService;->sInstance:Lcom/lody/virtual/server/device/VDeviceManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/lody/virtual/server/IDeviceInfoManager$Stub;-><init>()V

    .line 27
    new-instance v0, Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    .line 28
    new-instance v0, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;-><init>(Lcom/lody/virtual/server/device/VDeviceManagerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;

    .line 29
    new-instance v0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;-><init>(Lcom/lody/virtual/server/device/VDeviceManagerService;Lcom/lody/virtual/server/device/VDeviceManagerService$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    .line 44
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;

    invoke-virtual {v0}, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->read()V

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/remote/VDeviceInfo;

    .line 47
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/device/VDeviceManagerService;->addDeviceInfoToPool(Lcom/lody/virtual/remote/VDeviceInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addDeviceInfoToPool(Lcom/lody/virtual/remote/VDeviceInfo;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v0, v0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->deviceIds:Ljava/util/List;

    iget-object v1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v0, v0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->androidIds:Ljava/util/List;

    iget-object v1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->androidId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v0, v0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->wifiMacs:Ljava/util/List;

    iget-object v1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->wifiMac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v0, v0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->bluetoothMacs:Ljava/util/List;

    iget-object v1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->bluetoothMac:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v0, v0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->iccIds:Ljava/util/List;

    iget-object p1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->iccId:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static generate10(I)Ljava/lang/String;
    .locals 4

    .line 149
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/16 v3, 0xa

    .line 152
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generate16(I)Ljava/lang/String;
    .locals 5

    .line 158
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    const/16 v3, 0x10

    .line 161
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x57

    int-to-char v3, v3

    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generateRandomDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "phone"

    .line 124
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 129
    iput-object v2, v0, Lcom/lody/virtual/remote/VDeviceInfo;->deviceId:Ljava/lang/String;

    .line 132
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 134
    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->androidId:Ljava/lang/String;

    .line 137
    :cond_3
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->serial:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static generateMac()Ljava/lang/String;
    .locals 6

    .line 172
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_2

    const/16 v4, 0x10

    .line 177
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x57

    int-to-char v4, v4

    .line 181
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    if-ne v3, v2, :cond_1

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    const-string v4, ":"

    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateRandomDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;
    .locals 3

    .line 84
    new-instance v0, Lcom/lody/virtual/remote/VDeviceInfo;

    invoke-direct {v0}, Lcom/lody/virtual/remote/VDeviceInfo;-><init>()V

    :cond_0
    const/16 v1, 0xf

    .line 87
    invoke-static {v1}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generate10(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->deviceId:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v2, v2, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->deviceIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/16 v1, 0x10

    .line 91
    invoke-static {v1}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generate16(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->androidId:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v2, v2, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->androidIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_2
    invoke-static {}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generateMac()Ljava/lang/String;

    move-result-object v1

    .line 96
    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->wifiMac:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v2, v2, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->wifiMacs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    :cond_3
    invoke-static {}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generateMac()Ljava/lang/String;

    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->bluetoothMac:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v2, v2, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->bluetoothMacs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    const/16 v1, 0x14

    .line 104
    invoke-static {v1}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generate10(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->iccId:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPool:Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;

    iget-object v2, v2, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->iccIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    invoke-static {}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generateSerial()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/remote/VDeviceInfo;->serial:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/device/VDeviceManagerService;->addDeviceInfoToPool(Lcom/lody/virtual/remote/VDeviceInfo;)V

    return-object v0
.end method

.method private static generateSerial()Ljava/lang/String;
    .locals 5

    .line 195
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "0123456789ABCDEF"

    .line 200
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-char v4, v0, v3

    .line 202
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 204
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 207
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 209
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lcom/lody/virtual/server/device/VDeviceManagerService;
    .locals 1

    .line 32
    sget-object v0, Lcom/lody/virtual/server/device/VDeviceManagerService;->sInstance:Lcom/lody/virtual/server/device/VDeviceManagerService;

    return-object v0
.end method


# virtual methods
.method public getDeviceInfo(I)Lcom/lody/virtual/remote/VDeviceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/remote/VDeviceInfo;

    if-nez v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lody/virtual/server/device/VDeviceManagerService;->generateDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v2, p1, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->save()V

    .line 69
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getDeviceInfos()Lcom/lody/virtual/helper/collection/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "Lcom/lody/virtual/remote/VDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    return-object v0
.end method

.method public updateDeviceInfo(ILcom/lody/virtual/remote/VDeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mDeviceInfos:Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/server/device/DeviceInfoPersistenceLayer;->save()V

    .line 80
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
