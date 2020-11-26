.class public abstract Lcom/lody/virtual/server/IBinderDelegateService$Stub;
.super Landroid/os/Binder;
.source "IBinderDelegateService.java"

# interfaces
.implements Lcom/lody/virtual/server/IBinderDelegateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/IBinderDelegateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/IBinderDelegateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.IBinderDelegateService"

.field static final TRANSACTION_getComponent:I = 0x1

.field static final TRANSACTION_getService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.IBinderDelegateService"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/IBinderDelegateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IBinderDelegateService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.IBinderDelegateService"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/lody/virtual/server/IBinderDelegateService;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/lody/virtual/server/IBinderDelegateService;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/IBinderDelegateService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/IBinderDelegateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/IBinderDelegateService;
    .locals 1

    .line 161
    sget-object v0, Lcom/lody/virtual/server/IBinderDelegateService$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IBinderDelegateService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/IBinderDelegateService;)Z
    .locals 1

    .line 154
    sget-object v0, Lcom/lody/virtual/server/IBinderDelegateService$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IBinderDelegateService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 155
    sput-object p0, Lcom/lody/virtual/server/IBinderDelegateService$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IBinderDelegateService;

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

    const-string v1, "com.lody.virtual.server.IBinderDelegateService"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 58
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 77
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/lody/virtual/server/IBinderDelegateService$Stub;->getService()Landroid/os/IBinder;

    move-result-object p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 63
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lody/virtual/server/IBinderDelegateService$Stub;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p1, p3, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0
.end method
