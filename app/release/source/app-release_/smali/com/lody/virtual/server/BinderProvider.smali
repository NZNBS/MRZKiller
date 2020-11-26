.class public final Lcom/lody/virtual/server/BinderProvider;
.super Landroid/content/ContentProvider;
.source "BinderProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;
    }
.end annotation


# instance fields
.field private final mServiceFetcher:Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 35
    new-instance v0, Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;-><init>(Lcom/lody/virtual/server/BinderProvider;Lcom/lody/virtual/server/BinderProvider$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/BinderProvider;->mServiceFetcher:Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;

    return-void
.end method

.method private addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-static {p1, p2}, Lcom/lody/virtual/server/ServiceCache;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const-string p2, "@"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 75
    iget-object p2, p0, Lcom/lody/virtual/server/BinderProvider;->mServiceFetcher:Lcom/lody/virtual/server/BinderProvider$ServiceFetcher;

    const-string p3, "_VA_|_binder_"

    invoke-static {p1, p3, p2}, Lcom/lody/virtual/helper/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/lody/virtual/server/BinderProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/lody/virtual/client/stub/DaemonService;->startup(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->isStartup()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 44
    :cond_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->systemReady()V

    .line 45
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v1

    const-string v3, "package"

    invoke-direct {p0, v3, v1}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    invoke-static {v0}, Lcom/lody/virtual/server/am/VActivityManagerService;->systemReady(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    const-string v3, "activity"

    invoke-direct {p0, v3, v1}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v1

    const-string v3, "user"

    invoke-direct {p0, v3, v1}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 49
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->systemReady()V

    .line 50
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v1

    const-string v3, "app"

    invoke-direct {p0, v3, v1}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lody/virtual/server/am/BroadcastSystem;->attach(Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/pm/VAppManagerService;)V

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 53
    invoke-static {}, Lcom/lody/virtual/server/job/VJobSchedulerService;->get()Lcom/lody/virtual/server/job/VJobSchedulerService;

    move-result-object v1

    const-string v3, "job"

    invoke-direct {p0, v3, v1}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/lody/virtual/server/notification/VNotificationManagerService;->systemReady(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/lody/virtual/server/notification/VNotificationManagerService;->get()Lcom/lody/virtual/server/notification/VNotificationManagerService;

    move-result-object v0

    const-string v1, "notification"

    invoke-direct {p0, v1, v0}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->scanApps()V

    .line 58
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->systemReady()V

    .line 59
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->get()Lcom/lody/virtual/server/accounts/VAccountManagerService;

    move-result-object v0

    const-string v1, "account"

    invoke-direct {p0, v1, v0}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    invoke-static {}, Lcom/lody/virtual/server/vs/VirtualStorageService;->get()Lcom/lody/virtual/server/vs/VirtualStorageService;

    move-result-object v0

    const-string v1, "vs"

    invoke-direct {p0, v1, v0}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 61
    invoke-static {}, Lcom/lody/virtual/server/device/VDeviceManagerService;->get()Lcom/lody/virtual/server/device/VDeviceManagerService;

    move-result-object v0

    const-string v1, "device"

    invoke-direct {p0, v1, v0}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    invoke-static {}, Lcom/lody/virtual/server/location/VirtualLocationService;->get()Lcom/lody/virtual/server/location/VirtualLocationService;

    move-result-object v0

    const-string v1, "virtual-loc"

    invoke-direct {p0, v1, v0}, Lcom/lody/virtual/server/BinderProvider;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
