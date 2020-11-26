.class public Lcom/lody/virtual/client/ipc/VNotificationManager;
.super Ljava/lang/Object;
.source "VNotificationManager.java"


# static fields
.field private static final sInstance:Lcom/lody/virtual/client/ipc/VNotificationManager;


# instance fields
.field private final mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

.field private mRemote:Lcom/lody/virtual/server/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/lody/virtual/client/ipc/VNotificationManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VNotificationManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VNotificationManager;->sInstance:Lcom/lody/virtual/client/ipc/VNotificationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/lody/virtual/server/notification/NotificationCompat;->create()Lcom/lody/virtual/server/notification/NotificationCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/VNotificationManager;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VNotificationManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/lody/virtual/client/ipc/VNotificationManager;->sInstance:Lcom/lody/virtual/client/ipc/VNotificationManager;

    return-object v0
.end method


# virtual methods
.method public addNotification(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->getService()Lcom/lody/virtual/server/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/INotificationManager;->addNotification(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 1

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->getService()Lcom/lody/virtual/server/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x1

    return p1
.end method

.method public cancelAllNotification(Ljava/lang/String;I)V
    .locals 1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->getService()Lcom/lody/virtual/server/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/INotificationManager;->cancelAllNotification(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lody/virtual/client/ipc/VNotificationManager;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    .line 41
    invoke-virtual {v1, p1, p2, p3}, Lcom/lody/virtual/server/notification/NotificationCompat;->dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public dealNotificationId(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->getService()Lcom/lody/virtual/server/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/INotificationManager;->dealNotificationId(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 48
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    return p1
.end method

.method public dealNotificationTag(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->getService()Lcom/lody/virtual/server/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/INotificationManager;->dealNotificationTag(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object p3
.end method

.method public getService()Lcom/lody/virtual/server/INotificationManager;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VNotificationManager;->mRemote:Lcom/lody/virtual/server/INotificationManager;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/lody/virtual/server/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    const-class v0, Lcom/lody/virtual/client/ipc/VNotificationManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "notification"

    .line 31
    invoke-static {v1}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/lody/virtual/server/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lody/virtual/client/ipc/VNotificationManager;->mRemote:Lcom/lody/virtual/server/INotificationManager;

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VNotificationManager;->mRemote:Lcom/lody/virtual/server/INotificationManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;ZI)V
    .locals 1

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VNotificationManager;->getService()Lcom/lody/virtual/server/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
