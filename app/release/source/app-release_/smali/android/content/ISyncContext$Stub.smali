.class public abstract Landroid/content/ISyncContext$Stub;
.super Landroid/os/Binder;
.source "ISyncContext.java"

# interfaces
.implements Landroid/content/ISyncContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncContext"

.field static final TRANSACTION_onFinished:I = 0x2

.field static final TRANSACTION_sendHeartbeat:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.ISyncContext"

    .line 41
    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.content.ISyncContext"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Landroid/content/ISyncContext;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Landroid/content/ISyncContext;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Landroid/content/ISyncContext$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/ISyncContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/content/ISyncContext;
    .locals 1

    .line 178
    sget-object v0, Landroid/content/ISyncContext$Stub$Proxy;->sDefaultImpl:Landroid/content/ISyncContext;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/content/ISyncContext;)Z
    .locals 1

    .line 171
    sget-object v0, Landroid/content/ISyncContext$Stub$Proxy;->sDefaultImpl:Landroid/content/ISyncContext;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 172
    sput-object p0, Landroid/content/ISyncContext$Stub$Proxy;->sDefaultImpl:Landroid/content/ISyncContext;

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

    const-string v1, "android.content.ISyncContext"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 81
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    sget-object p1, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SyncResult;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/ISyncContext$Stub;->onFinished(Landroid/content/SyncResult;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 74
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/ISyncContext$Stub;->sendHeartbeat()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
