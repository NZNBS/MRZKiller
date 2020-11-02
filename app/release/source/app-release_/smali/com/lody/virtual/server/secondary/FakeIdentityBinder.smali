.class public Lcom/lody/virtual/server/secondary/FakeIdentityBinder;
.super Landroid/os/Binder;
.source "FakeIdentityBinder.java"


# instance fields
.field private mBase:Landroid/os/Binder;


# direct methods
.method public constructor <init>(Landroid/os/Binder;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->mBase:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public final attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->mBase:Landroid/os/Binder;

    invoke-virtual {v0, p1, p2}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method protected getFakeIdentity()J
    .locals 4

    .line 42
    invoke-virtual {p0}, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->getFakeUid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->getFakePid()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getFakePid()I
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method protected getFakeUid()I
    .locals 1

    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->mBase:Landroid/os/Binder;

    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->getFakeIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    iget-object v2, p0, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->mBase:Landroid/os/Binder;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Binder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p1
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;->mBase:Landroid/os/Binder;

    invoke-virtual {v0, p1}, Landroid/os/Binder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method
