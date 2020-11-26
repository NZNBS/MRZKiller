.class public abstract Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub;
.super Landroid/os/Binder;
.source "IIntentFilterObserver.java"

# interfaces
.implements Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.interfaces.IIntentFilterObserver"

.field static final TRANSACTION_filter:I = 0x1

.field static final TRANSACTION_getCallBack:I = 0x3

.field static final TRANSACTION_setCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.interfaces.IIntentFilterObserver"

    .line 39
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.interfaces.IIntentFilterObserver"

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;
    .locals 1

    .line 217
    sget-object v0, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;)Z
    .locals 1

    .line 210
    sget-object v0, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 211
    sput-object p0, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;

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

    const-string v1, "com.lody.virtual.server.interfaces.IIntentFilterObserver"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 102
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub;->getCallBack()Landroid/os/IBinder;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 93
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub;->setCallBack(Landroid/os/IBinder;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 72
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 75
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub;->filter(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0
.end method
