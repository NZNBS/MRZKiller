.class Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;
.super Ljava/lang/Object;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetNeighboringCellInfo;,
        Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetAllCellInfo;,
        Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$getAllCellInfoUsingSubId;,
        Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetCellLocation;,
        Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetDeviceId;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/os/Bundle;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;->getCellLocationInternal(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/telephony/CellInfo;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;->createCellInfo(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/telephony/CellInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createCellInfo(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/telephony/CellInfo;
    .locals 5

    .line 164
    iget v0, p0, Lcom/lody/virtual/remote/vloc/VCell;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    sget-object v0, Lmirror/android/telephony/CellInfoCdma;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 166
    sget-object v1, Lmirror/android/telephony/CellInfoCdma;->mCellIdentityCdma:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    .line 167
    sget-object v2, Lmirror/android/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrengthCdma;

    .line 168
    sget-object v3, Lmirror/android/telephony/CellIdentityCdma;->mNetworkId:Lmirror/RefInt;

    iget v4, p0, Lcom/lody/virtual/remote/vloc/VCell;->networkId:I

    invoke-virtual {v3, v1, v4}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 169
    sget-object v3, Lmirror/android/telephony/CellIdentityCdma;->mSystemId:Lmirror/RefInt;

    iget v4, p0, Lcom/lody/virtual/remote/vloc/VCell;->systemId:I

    invoke-virtual {v3, v1, v4}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 170
    sget-object v3, Lmirror/android/telephony/CellIdentityCdma;->mBasestationId:Lmirror/RefInt;

    iget p0, p0, Lcom/lody/virtual/remote/vloc/VCell;->baseStationId:I

    invoke-virtual {v3, v1, p0}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 171
    sget-object p0, Lmirror/android/telephony/CellSignalStrengthCdma;->mCdmaDbm:Lmirror/RefInt;

    const/16 v1, -0x4a

    invoke-virtual {p0, v2, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 172
    sget-object p0, Lmirror/android/telephony/CellSignalStrengthCdma;->mCdmaEcio:Lmirror/RefInt;

    const/16 v1, -0x5b

    invoke-virtual {p0, v2, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 173
    sget-object p0, Lmirror/android/telephony/CellSignalStrengthCdma;->mEvdoDbm:Lmirror/RefInt;

    const/16 v1, -0x40

    invoke-virtual {p0, v2, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 174
    sget-object p0, Lmirror/android/telephony/CellSignalStrengthCdma;->mEvdoSnr:Lmirror/RefInt;

    const/4 v1, 0x7

    invoke-virtual {p0, v2, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    return-object v0

    .line 177
    :cond_0
    sget-object v0, Lmirror/android/telephony/CellInfoGsm;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfoGsm;

    .line 178
    sget-object v1, Lmirror/android/telephony/CellInfoGsm;->mCellIdentityGsm:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentityGsm;

    .line 179
    sget-object v2, Lmirror/android/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrengthGsm;

    .line 180
    sget-object v3, Lmirror/android/telephony/CellIdentityGsm;->mMcc:Lmirror/RefInt;

    iget v4, p0, Lcom/lody/virtual/remote/vloc/VCell;->mcc:I

    invoke-virtual {v3, v1, v4}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 181
    sget-object v3, Lmirror/android/telephony/CellIdentityGsm;->mMnc:Lmirror/RefInt;

    iget v4, p0, Lcom/lody/virtual/remote/vloc/VCell;->mnc:I

    invoke-virtual {v3, v1, v4}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 182
    sget-object v3, Lmirror/android/telephony/CellIdentityGsm;->mLac:Lmirror/RefInt;

    iget v4, p0, Lcom/lody/virtual/remote/vloc/VCell;->lac:I

    invoke-virtual {v3, v1, v4}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 183
    sget-object v3, Lmirror/android/telephony/CellIdentityGsm;->mCid:Lmirror/RefInt;

    iget p0, p0, Lcom/lody/virtual/remote/vloc/VCell;->cid:I

    invoke-virtual {v3, v1, p0}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 184
    sget-object p0, Lmirror/android/telephony/CellSignalStrengthGsm;->mSignalStrength:Lmirror/RefInt;

    const/16 v1, 0x14

    invoke-virtual {p0, v2, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 185
    sget-object p0, Lmirror/android/telephony/CellSignalStrengthGsm;->mBitErrorRate:Lmirror/RefInt;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static getCellLocationInternal(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/os/Bundle;
    .locals 9

    if-eqz p0, :cond_1

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    iget v1, p0, Lcom/lody/virtual/remote/vloc/VCell;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 136
    :try_start_0
    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 137
    iget v4, p0, Lcom/lody/virtual/remote/vloc/VCell;->baseStationId:I

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    iget v7, p0, Lcom/lody/virtual/remote/vloc/VCell;->systemId:I

    iget v8, p0, Lcom/lody/virtual/remote/vloc/VCell;->networkId:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 138
    invoke-virtual {v1, v0}, Landroid/telephony/cdma/CdmaCellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    iget v1, p0, Lcom/lody/virtual/remote/vloc/VCell;->baseStationId:I

    const-string v2, "baseStationId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "baseStationLatitude"

    const v2, 0x7fffffff

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "baseStationLongitude"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    iget v1, p0, Lcom/lody/virtual/remote/vloc/VCell;->systemId:I

    const-string v2, "systemId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    iget p0, p0, Lcom/lody/virtual/remote/vloc/VCell;->networkId:I

    const-string v1, "networkId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 148
    :cond_0
    :try_start_1
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 149
    iget v2, p0, Lcom/lody/virtual/remote/vloc/VCell;->lac:I

    iget v3, p0, Lcom/lody/virtual/remote/vloc/VCell;->cid:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 150
    invoke-virtual {v1, v0}, Landroid/telephony/gsm/GsmCellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 152
    :catchall_1
    iget v1, p0, Lcom/lody/virtual/remote/vloc/VCell;->lac:I

    const-string v2, "lac"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    iget v1, p0, Lcom/lody/virtual/remote/vloc/VCell;->cid:I

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget p0, p0, Lcom/lody/virtual/remote/vloc/VCell;->psc:I

    const-string v1, "psc"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
