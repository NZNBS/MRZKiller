.class public abstract Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub;
.super Landroid/os/Binder;
.source "IServiceFetcher.java"

# interfaces
.implements Lcom/lody/virtual/server/interfaces/IServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/interfaces/IServiceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.interfaces.IServiceFetcher"

.field static final TRANSACTION_addService:I = 0x2

.field static final TRANSACTION_getService:I = 0x1

.field static final TRANSACTION_removeService:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.interfaces.IServiceFetcher"

    .line 32
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IServiceFetcher;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.interfaces.IServiceFetcher"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/interfaces/IServiceFetcher;
    .locals 1

    .line 187
    sget-object v0, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/interfaces/IServiceFetcher;)Z
    .locals 1

    .line 180
    sget-object v0, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 181
    sput-object p0, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

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

    const-string v1, "com.lody.virtual.server.interfaces.IServiceFetcher"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 86
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub;->removeService(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 75
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 65
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0
.end method
