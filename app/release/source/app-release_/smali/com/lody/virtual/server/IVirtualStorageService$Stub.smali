.class public abstract Lcom/lody/virtual/server/IVirtualStorageService$Stub;
.super Landroid/os/Binder;
.source "IVirtualStorageService.java"

# interfaces
.implements Lcom/lody/virtual/server/IVirtualStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/IVirtualStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/IVirtualStorageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.IVirtualStorageService"

.field static final TRANSACTION_getVirtualStorage:I = 0x2

.field static final TRANSACTION_isVirtualStorageEnable:I = 0x4

.field static final TRANSACTION_setVirtualStorage:I = 0x1

.field static final TRANSACTION_setVirtualStorageState:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.IVirtualStorageService"

    .line 36
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IVirtualStorageService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.IVirtualStorageService"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    instance-of v1, v0, Lcom/lody/virtual/server/IVirtualStorageService;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lcom/lody/virtual/server/IVirtualStorageService;

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/IVirtualStorageService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/IVirtualStorageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/IVirtualStorageService;
    .locals 1

    .line 238
    sget-object v0, Lcom/lody/virtual/server/IVirtualStorageService$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IVirtualStorageService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/IVirtualStorageService;)Z
    .locals 1

    .line 231
    sget-object v0, Lcom/lody/virtual/server/IVirtualStorageService$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IVirtualStorageService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 232
    sput-object p0, Lcom/lody/virtual/server/IVirtualStorageService$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IVirtualStorageService;

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

    const-string v1, "com.lody.virtual.server.IVirtualStorageService"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 107
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;->isVirtualStorageEnable(Ljava/lang/String;I)Z

    move-result p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 94
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 101
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;->setVirtualStorageState(Ljava/lang/String;IZ)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 82
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;->getVirtualStorage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 69
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p4, p2}, Lcom/lody/virtual/server/IVirtualStorageService$Stub;->setVirtualStorage(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
