.class public abstract Lcom/lody/virtual/server/IDeviceInfoManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfoManager.java"

# interfaces
.implements Lcom/lody/virtual/server/IDeviceInfoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/IDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/IDeviceInfoManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.IDeviceInfoManager"

.field static final TRANSACTION_getDeviceInfo:I = 0x1

.field static final TRANSACTION_updateDeviceInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.IDeviceInfoManager"

    .line 29
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/IDeviceInfoManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IDeviceInfoManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.IDeviceInfoManager"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Lcom/lody/virtual/server/IDeviceInfoManager;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/lody/virtual/server/IDeviceInfoManager;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/IDeviceInfoManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/IDeviceInfoManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/IDeviceInfoManager;
    .locals 1

    .line 177
    sget-object v0, Lcom/lody/virtual/server/IDeviceInfoManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IDeviceInfoManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/IDeviceInfoManager;)Z
    .locals 1

    .line 170
    sget-object v0, Lcom/lody/virtual/server/IDeviceInfoManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IDeviceInfoManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 171
    sput-object p0, Lcom/lody/virtual/server/IDeviceInfoManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IDeviceInfoManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.lody.virtual.server.IDeviceInfoManager"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 78
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 83
    sget-object p4, Lcom/lody/virtual/remote/VDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/remote/VDeviceInfo;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IDeviceInfoManager$Stub;->updateDeviceInfo(ILcom/lody/virtual/remote/VDeviceInfo;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 62
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IDeviceInfoManager$Stub;->getDeviceInfo(I)Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p1, p3, v0}, Lcom/lody/virtual/remote/VDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0
.end method
