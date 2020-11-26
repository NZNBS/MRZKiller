.class public abstract Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;
.super Landroid/os/Binder;
.source "IAppRequestListener.java"

# interfaces
.implements Lcom/lody/virtual/server/interfaces/IAppRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/interfaces/IAppRequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.interfaces.IAppRequestListener"

.field static final TRANSACTION_onRequestInstall:I = 0x1

.field static final TRANSACTION_onRequestUninstall:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.interfaces.IAppRequestListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IAppRequestListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.interfaces.IAppRequestListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/interfaces/IAppRequestListener;
    .locals 1

    .line 148
    sget-object v0, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/interfaces/IAppRequestListener;)Z
    .locals 1

    .line 141
    sget-object v0, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 142
    sput-object p0, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

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

    const-string v1, "com.lody.virtual.server.interfaces.IAppRequestListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 70
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;->onRequestUninstall(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;->onRequestInstall(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
