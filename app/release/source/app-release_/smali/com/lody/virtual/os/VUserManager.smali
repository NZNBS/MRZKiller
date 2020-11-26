.class public Lcom/lody/virtual/os/VUserManager;
.super Ljava/lang/Object;
.source "VUserManager.java"


# static fields
.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field private static TAG:Ljava/lang/String; = "VUserManager"

.field private static sInstance:Lcom/lody/virtual/os/VUserManager;


# instance fields
.field private mService:Lcom/lody/virtual/server/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/server/IUserManager;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/server/IUserManager;

    return-void
.end method

.method public static declared-synchronized get()Lcom/lody/virtual/os/VUserManager;
    .locals 3

    const-class v0, Lcom/lody/virtual/os/VUserManager;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;

    if-nez v1, :cond_0

    const-string v1, "user"

    .line 113
    invoke-static {v1}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lody/virtual/server/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IUserManager;

    move-result-object v1

    .line 114
    new-instance v2, Lcom/lody/virtual/os/VUserManager;

    invoke-direct {v2, v1}, Lcom/lody/virtual/os/VUserManager;-><init>(Lcom/lody/virtual/server/IUserManager;)V

    sput-object v2, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;

    .line 116
    :cond_0
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->sInstance:Lcom/lody/virtual/os/VUserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMaxSupportedUsers()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method private getService()Lcom/lody/virtual/server/IUserManager;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/server/IUserManager;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/server/IUserManager;

    invoke-interface {v0}, Lcom/lody/virtual/server/IUserManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getStubInterface()Ljava/lang/Object;

    move-result-object v0

    .line 129
    const-class v1, Lcom/lody/virtual/server/IUserManager;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IUserManager;

    iput-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/server/IUserManager;

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/os/VUserManager;->mService:Lcom/lody/virtual/server/IUserManager;

    return-object v0

    :catchall_0
    move-exception v0

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStubInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "user"

    .line 136
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/server/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    return-object v0
.end method

.method public static supportsMultipleUsers()Z
    .locals 2

    .line 145
    invoke-static {}, Lcom/lody/virtual/os/VUserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;
    .locals 1

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IUserManager;->createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    sget-object p2, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not create a user"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSerialNumberForUser(Lcom/lody/virtual/os/VUserHandle;)J
    .locals 2

    .line 206
    invoke-virtual {p1}, Lcom/lody/virtual/os/VUserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lody/virtual/os/VUserManager;->getUserSerialNumber(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getUserCount()I
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/lody/virtual/os/VUserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getUserForSerialNumber(J)Lcom/lody/virtual/os/VUserHandle;
    .locals 0

    long-to-int p2, p1

    .line 219
    invoke-virtual {p0, p2}, Lcom/lody/virtual/os/VUserManager;->getUserHandle(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 220
    new-instance p2, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {p2, p1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public getUserHandle()I
    .locals 1

    .line 154
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .locals 3

    .line 415
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->getUserHandle(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 417
    :catch_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get VUserHandle for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 332
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not get the user icon "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 2

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 191
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not get user info"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lody/virtual/os/VUserManager;->getUserHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lody/virtual/server/IUserManager;->getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 167
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .locals 3

    .line 397
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->getUserSerialNumber(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 399
    :catch_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get serial number for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lody/virtual/server/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 259
    sget-object v1, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 274
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not get user list"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public isGuestEnabled()Z
    .locals 2

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IUserManager;->isGuestEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 360
    :catch_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not retrieve guest enabled state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isUserAGoat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeUser(I)Z
    .locals 2

    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->removeUser(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 288
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not remove user "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setGuestEnabled(Z)V
    .locals 3

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->setGuestEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not change guest account availability to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    sget-object p2, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not set the user icon "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 1

    .line 302
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 304
    sget-object p2, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not set the user name "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public wipeUser(I)V
    .locals 3

    .line 372
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/os/VUserManager;->getService()Lcom/lody/virtual/server/IUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IUserManager;->wipeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    sget-object v0, Lcom/lody/virtual/os/VUserManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not wipe user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
