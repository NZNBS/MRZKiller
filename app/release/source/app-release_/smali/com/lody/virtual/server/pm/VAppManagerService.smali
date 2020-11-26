.class public Lcom/lody/virtual/server/pm/VAppManagerService;
.super Lcom/lody/virtual/server/IAppManager$Stub;
.source "VAppManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VAppManagerService"

.field private static final sService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/lody/virtual/server/pm/VAppManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppRequestListener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

.field private mBooting:Z

.field private final mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/lody/virtual/server/interfaces/IPackageObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

.field private final mVisibleOutsidePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/lody/virtual/server/IAppManager$Stub;-><init>()V

    .line 49
    new-instance v0, Lcom/lody/virtual/server/am/UidSystem;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/UidSystem;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

    .line 50
    new-instance v0, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;-><init>(Lcom/lody/virtual/server/pm/VAppManagerService;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mVisibleOutsidePackages:Ljava/util/Set;

    .line 53
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method static synthetic access$002(Lcom/lody/virtual/server/pm/VAppManagerService;Lcom/lody/virtual/server/interfaces/IAppRequestListener;)Lcom/lody/virtual/server/interfaces/IAppRequestListener;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mAppRequestListener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-object p1
.end method

.method private canUpdate(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/parser/VPackage;I)Z
    .locals 2

    and-int/lit8 v0, p3, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 304
    iget p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionCode:I

    iget p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionCode:I

    if-ge p1, p2, :cond_0

    return v1

    :cond_0
    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    return p2

    :cond_1
    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return p2
.end method

.method private chmodPackageDictionary(Ljava/io/File;)V
    .locals 2

    .line 290
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 291
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1ed

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->chmod(Ljava/lang/String;I)V

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private cleanUpResidualFiles(Lcom/lody/virtual/server/pm/PackageSetting;)V
    .locals 3

    .line 85
    sget-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUpResidualFiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object p1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 87
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public static get()Lcom/lody/virtual/server/pm/VAppManagerService;
    .locals 1

    .line 57
    sget-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/VAppManagerService;

    return-object v0
.end method

.method private loadPackageInnerLocked(Lcom/lody/virtual/server/pm/PackageSetting;)Z
    .locals 4

    .line 103
    iget-boolean v0, p1, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v2, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsideInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getPackageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 111
    :try_start_0
    iget-object v3, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->readPackageCache(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_2

    .line 115
    iget-object v3, v2, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->chmodPackageDictionary(Ljava/io/File;)V

    .line 119
    invoke-static {v2, p1}, Lcom/lody/virtual/server/pm/PackageCacheManager;->put(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/PackageSetting;)V

    .line 120
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->get()Lcom/lody/virtual/server/am/BroadcastSystem;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/lody/virtual/server/am/BroadcastSystem;->startApp(Lcom/lody/virtual/server/pm/parser/VPackage;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method private notifyAppInstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V
    .locals 3

    .line 482
    iget-object p1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 487
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->sendInstalledBroadcast(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IPackageObserver;

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver;->onPackageInstalled(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IPackageObserver;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver;->onPackageInstalledAsUser(ILjava/lang/String;)V

    goto :goto_1

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IPackageObserver;

    invoke-interface {v0, p2, p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver;->onPackageInstalledAsUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 495
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 499
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->get()Lcom/lody/virtual/server/accounts/VAccountManagerService;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->refreshAuthenticatorCache(Ljava/lang/String;)V

    return-void
.end method

.method private notifyAppUninstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V
    .locals 3

    .line 503
    iget-object p1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 508
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->sendUninstalledBroadcast(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IPackageObserver;

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver;->onPackageUninstalled(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IPackageObserver;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver;->onPackageUninstalledAsUser(ILjava/lang/String;)V

    goto :goto_1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IPackageObserver;

    invoke-interface {v0, p2, p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver;->onPackageUninstalledAsUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 515
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    .line 518
    :cond_1
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 519
    invoke-static {}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->get()Lcom/lody/virtual/server/accounts/VAccountManagerService;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->refreshAuthenticatorCache(Ljava/lang/String;)V

    return-void
.end method

.method private sendInstalledBroadcast(Ljava/lang/String;)V
    .locals 3

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 526
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object p1

    sget-object v1, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    return-void
.end method

.method private sendUninstalledBroadcast(Ljava/lang/String;)V
    .locals 3

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 532
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object p1

    sget-object v1, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    return-void
.end method

.method public static systemReady()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->systemReady()V

    .line 62
    new-instance v0, Lcom/lody/virtual/server/pm/VAppManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VAppManagerService;-><init>()V

    .line 63
    iget-object v1, v0, Lcom/lody/virtual/server/pm/VAppManagerService;->mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

    invoke-virtual {v1}, Lcom/lody/virtual/server/am/UidSystem;->initUidList()V

    .line 64
    sget-object v1, Lcom/lody/virtual/server/pm/VAppManagerService;->sService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private uninstallPackageFully(Lcom/lody/virtual/server/pm/PackageSetting;)V
    .locals 7

    .line 398
    iget-object v0, p1, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 400
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->get()Lcom/lody/virtual/server/am/BroadcastSystem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lody/virtual/server/am/BroadcastSystem;->stopApp(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAppByPkg(Ljava/lang/String;I)V

    .line 402
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getPackageResourcePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 403
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 404
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getOdexFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 405
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 406
    invoke-static {v5, v0}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 407
    invoke-static {v5, v0}, Lcom/lody/virtual/os/VEnvironment;->getVirtualPrivateStorageDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 409
    :cond_0
    invoke-static {v0}, Lcom/lody/virtual/server/pm/PackageCacheManager;->remove(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 411
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppUninstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V

    return-void

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppUninstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V

    .line 414
    throw v0
.end method


# virtual methods
.method public addVisibleOutsidePackage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mVisibleOutsidePackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearAppRequestListener()V
    .locals 1

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mAppRequestListener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-void
.end method

.method public clearPackage(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 357
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->get()Lcom/lody/virtual/server/am/BroadcastSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/am/BroadcastSystem;->stopApp(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAppByPkg(Ljava/lang/String;I)V

    .line 360
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 361
    invoke-static {v4, p1}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 362
    invoke-static {v4, p1}, Lcom/lody/virtual/os/VEnvironment;->getVirtualPrivateStorageDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public clearPackageAsUser(ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 333
    :cond_0
    invoke-static {p2}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/pm/VAppManagerService;->getPackageInstalledUsers(Ljava/lang/String;)[I

    move-result-object v2

    .line 336
    invoke-static {v2, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 339
    :cond_1
    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 340
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/pm/VAppManagerService;->clearPackage(Ljava/lang/String;)Z

    goto :goto_0

    .line 343
    :cond_2
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAppByPkg(Ljava/lang/String;I)V

    .line 344
    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 345
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->save()V

    .line 346
    invoke-static {p1, p2}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 347
    invoke-static {p1, p2}, Lcom/lody/virtual/os/VEnvironment;->getVirtualPrivateStorageDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    :goto_0
    return v3

    :cond_3
    return v1
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 0

    .line 608
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 609
    iget p1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getAppRequestListener()Lcom/lody/virtual/server/interfaces/IAppRequestListener;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mAppRequestListener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-object v0
.end method

.method public getInstalledAppCount()I
    .locals 1

    .line 461
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;
    .locals 0

    .line 583
    const-class p2, Lcom/lody/virtual/server/pm/PackageCacheManager;

    monitor-enter p2

    if-eqz p1, :cond_0

    .line 585
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/PackageSetting;->getAppInfo()Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object p1

    monitor-exit p2

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 590
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 591
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInstalledApps(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/VAppManagerService;->getInstalledAppCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 437
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 438
    invoke-virtual {v1}, Lcom/lody/virtual/server/pm/PackageSetting;->getAppInfo()Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getInstalledAppsAsUser(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/VAppManagerService;->getInstalledAppCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 447
    iget-object v2, v2, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 448
    invoke-virtual {v2, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->isInstalled(I)Z

    move-result v3

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    .line 449
    invoke-virtual {v2, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->isHidden(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_0

    .line 453
    invoke-virtual {v2}, Lcom/lody/virtual/server/pm/PackageSetting;->getAppInfo()Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPackageInstalledUsers(Ljava/lang/String;)[I
    .locals 6

    .line 419
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 421
    new-instance v1, Lcom/lody/virtual/helper/collection/IntArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/lody/virtual/helper/collection/IntArray;-><init>(I)V

    .line 422
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v2

    .line 423
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 424
    invoke-virtual {p1, v4}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/lody/virtual/server/pm/PackageUserState;->installed:Z

    if-eqz v5, :cond_0

    .line 425
    invoke-virtual {v1, v4}, Lcom/lody/virtual/helper/collection/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v1}, Lcom/lody/virtual/helper/collection/IntArray;->getAll()[I

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v0, [I

    return-object p1
.end method

.method public installPackage(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstallResult;
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1, p2, v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->installPackage(Ljava/lang/String;IZ)Lcom/lody/virtual/remote/InstallResult;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized installPackage(Ljava/lang/String;IZ)Lcom/lody/virtual/remote/InstallResult;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez v2, :cond_0

    const-string v0, "path = NULL"

    .line 151
    invoke-static {v0}, Lcom/lody/virtual/remote/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/remote/InstallResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 153
    :cond_0
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v7, 0x0

    .line 159
    :try_start_2
    invoke-static {v6}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->parsePackage(Ljava/io/File;)Lcom/lody/virtual/server/pm/parser/VPackage;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 161
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_16

    .line 163
    iget-object v0, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    goto/16 :goto_a

    .line 166
    :cond_2
    new-instance v9, Lcom/lody/virtual/remote/InstallResult;

    invoke-direct {v9}, Lcom/lody/virtual/remote/InstallResult;-><init>()V

    .line 167
    iget-object v0, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    iput-object v0, v9, Lcom/lody/virtual/remote/InstallResult;->packageName:Ljava/lang/String;

    .line 169
    iget-object v0, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/PackageCacheManager;->get(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v7, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/lody/virtual/server/pm/PackageSetting;

    :cond_3
    const/4 v10, 0x1

    if-eqz v0, :cond_6

    and-int/lit8 v11, v3, 0x10

    if-eqz v11, :cond_4

    .line 173
    iput-boolean v10, v9, Lcom/lody/virtual/remote/InstallResult;->isUpdate:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    monitor-exit p0

    return-object v9

    .line 176
    :cond_4
    :try_start_4
    invoke-direct {v1, v0, v8, v3}, Lcom/lody/virtual/server/pm/VAppManagerService;->canUpdate(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/parser/VPackage;I)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v0, "Can not update the package (such as version downrange)."

    .line 177
    invoke-static {v0}, Lcom/lody/virtual/remote/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/remote/InstallResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 179
    :cond_5
    :try_start_5
    iput-boolean v10, v9, Lcom/lody/virtual/remote/InstallResult;->isUpdate:Z

    .line 181
    :cond_6
    iget-object v11, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 182
    new-instance v12, Ljava/io/File;

    const-string v13, "lib"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    iget-boolean v13, v9, Lcom/lody/virtual/remote/InstallResult;->isUpdate:Z

    const/4 v14, -0x1

    if-eqz v13, :cond_7

    .line 184
    invoke-static {v12}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 185
    iget-object v13, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/lody/virtual/os/VEnvironment;->getOdexFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 186
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v13

    iget-object v15, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAppByPkg(Ljava/lang/String;I)V

    .line 188
    :cond_7
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_8

    const-string v0, "Unable to create lib dir."

    .line 189
    invoke-static {v0}, Lcom/lody/virtual/remote/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/remote/InstallResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_8
    and-int/lit8 v3, v3, 0x20

    const/4 v13, 0x0

    if-eqz v3, :cond_9

    .line 192
    :try_start_6
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    iget-object v15, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsideInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    if-eqz v7, :cond_a

    .line 194
    iget-boolean v15, v7, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    if-eqz v15, :cond_a

    const/4 v3, 0x0

    .line 198
    :cond_a
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v12}, Lcom/lody/virtual/helper/compat/NativeLibraryHelperCompat;->copyNativeBinaries(Ljava/io/File;Ljava/io/File;)I

    if-nez v3, :cond_d

    .line 200
    new-instance v2, Ljava/io/File;

    const-string v15, "base.apk"

    invoke-direct {v2, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 202
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_b

    .line 203
    sget-object v11, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning: unable to create folder : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v11, v10, v15}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 204
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_c

    .line 205
    sget-object v10, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Warning: unable to delete file : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v15}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 208
    :cond_c
    :goto_2
    :try_start_7
    invoke-static {v6, v2}, Lcom/lody/virtual/helper/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v6, v2

    goto :goto_3

    .line 210
    :catch_0
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v0, "Unable to copy the package file."

    .line 211
    invoke-static {v0}, Lcom/lody/virtual/remote/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/remote/InstallResult;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    .line 216
    :try_start_9
    iget-object v0, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/PackageCacheManager;->remove(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 218
    :cond_e
    invoke-direct {v1, v6}, Lcom/lody/virtual/server/pm/VAppManagerService;->chmodPackageDictionary(Ljava/io/File;)V

    if-eqz v7, :cond_f

    goto :goto_4

    .line 223
    :cond_f
    new-instance v7, Lcom/lody/virtual/server/pm/PackageSetting;

    invoke-direct {v7}, Lcom/lody/virtual/server/pm/PackageSetting;-><init>()V

    .line 225
    :goto_4
    iput-boolean v3, v7, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    .line 226
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    .line 227
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lody/virtual/server/pm/PackageSetting;->libPath:Ljava/lang/String;

    .line 228
    iget-object v0, v8, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    .line 229
    iget-object v0, v1, Lcom/lody/virtual/server/pm/VAppManagerService;->mUidSystem:Lcom/lody/virtual/server/am/UidSystem;

    invoke-virtual {v0, v8}, Lcom/lody/virtual/server/am/UidSystem;->getOrCreateUid(Lcom/lody/virtual/server/pm/parser/VPackage;)I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    iput v0, v7, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    .line 230
    iget-boolean v0, v9, Lcom/lody/virtual/remote/InstallResult;->isUpdate:Z

    if-eqz v0, :cond_10

    .line 231
    iput-wide v4, v7, Lcom/lody/virtual/server/pm/PackageSetting;->lastUpdateTime:J

    goto :goto_7

    .line 233
    :cond_10
    iput-wide v4, v7, Lcom/lody/virtual/server/pm/PackageSetting;->firstInstallTime:J

    .line 234
    iput-wide v4, v7, Lcom/lody/virtual/server/pm/PackageSetting;->lastUpdateTime:J

    .line 235
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_12

    aget v5, v0, v4

    if-nez v5, :cond_11

    const/4 v6, 0x1

    goto :goto_6

    :cond_11
    const/4 v6, 0x0

    .line 237
    :goto_6
    invoke-virtual {v7, v5, v13, v13, v6}, Lcom/lody/virtual/server/pm/PackageSetting;->setUserState(IZZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 240
    :cond_12
    :goto_7
    invoke-static {v8}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->savePackageCache(Lcom/lody/virtual/server/pm/parser/VPackage;)V

    .line 241
    invoke-static {v8, v7}, Lcom/lody/virtual/server/pm/PackageCacheManager;->put(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/PackageSetting;)V

    .line 242
    iget-object v0, v1, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->save()V

    if-nez v3, :cond_14

    .line 245
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->isArt()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_13

    .line 247
    :try_start_a
    iget-object v0, v7, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    iget-object v2, v7, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lody/virtual/os/VEnvironment;->getOdexFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lody/virtual/helper/ArtDexOptimizer;->compileDex2Oat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v0, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 249
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_13
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_14

    .line 257
    :try_start_c
    iget-object v0, v7, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    iget-object v2, v7, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lody/virtual/os/VEnvironment;->getOdexFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v13}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_9

    :catch_2
    move-exception v0

    .line 259
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :cond_14
    :goto_9
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->get()Lcom/lody/virtual/server/am/BroadcastSystem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/lody/virtual/server/am/BroadcastSystem;->startApp(Lcom/lody/virtual/server/pm/parser/VPackage;)V

    if-eqz p3, :cond_15

    .line 265
    invoke-direct {v1, v7, v14}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppInstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V

    :cond_15
    const/4 v2, 0x1

    .line 267
    iput-boolean v2, v9, Lcom/lody/virtual/remote/InstallResult;->isSuccess:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 268
    monitor-exit p0

    return-object v9

    :cond_16
    :goto_a
    :try_start_e
    const-string v0, "Unable to parse the package."

    .line 164
    invoke-static {v0}, Lcom/lody/virtual/remote/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/remote/InstallResult;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_17
    :goto_b
    :try_start_f
    const-string v0, "Package File is not exist."

    .line 155
    invoke-static {v0}, Lcom/lody/virtual/remote/InstallResult;->makeFailure(Ljava/lang/String;)Lcom/lody/virtual/remote/InstallResult;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized installPackageAsUser(ILjava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 274
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {p2}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p2, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->isInstalled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p2, p1, v0}, Lcom/lody/virtual/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 279
    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppInstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V

    .line 280
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 285
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 466
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppInstalledAsUser(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 471
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {p2}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 478
    :cond_1
    invoke-virtual {p2, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->isInstalled(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isBooting()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBooting:Z

    return v0
.end method

.method public isOutsidePackageVisible(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mVisibleOutsidePackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPackageLaunched(ILjava/lang/String;)Z
    .locals 0

    .line 595
    invoke-static {p2}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 596
    invoke-virtual {p2, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->isLaunched(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method declared-synchronized loadPackage(Lcom/lody/virtual/server/pm/PackageSetting;)V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->loadPackageInnerLocked(Lcom/lody/virtual/server/pm/PackageSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->cleanUpResidualFiles(Lcom/lody/virtual/server/pm/PackageSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V
    .locals 1

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeVisibleOutsidePackage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mVisibleOutsidePackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method restoreFactoryState()V
    .locals 3

    .line 614
    sget-object v0, Lcom/lody/virtual/server/pm/VAppManagerService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Warning: Restore the factory state..."

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDalvikCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 616
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 617
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public savePersistenceData()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->save()V

    return-void
.end method

.method public scanApps()V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBooting:Z

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 77
    :try_start_0
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBooting:Z

    .line 78
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->read()V

    .line 79
    invoke-static {}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->get()Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->performOptimizeAllApps()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mBooting:Z

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppRequestListener(Lcom/lody/virtual/server/interfaces/IAppRequestListener;)V
    .locals 2

    .line 560
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mAppRequestListener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    if-eqz p1, :cond_0

    .line 563
    :try_start_0
    invoke-interface {p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/server/pm/VAppManagerService$1;

    invoke-direct {v1, p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService$1;-><init>(Lcom/lody/virtual/server/pm/VAppManagerService;Lcom/lody/virtual/server/interfaces/IAppRequestListener;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 571
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPackageHidden(ILjava/lang/String;Z)V
    .locals 1

    .line 600
    invoke-static {p2}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 601
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p2, p1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->setHidden(IZ)V

    .line 603
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->save()V

    :cond_0
    return-void
.end method

.method public declared-synchronized uninstallPackage(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->uninstallPackageFully(Lcom/lody/virtual/server/pm/PackageSetting;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 323
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 325
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uninstallPackageAsUser(Ljava/lang/String;I)Z
    .locals 4

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 373
    monitor-exit p0

    return v1

    .line 375
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/lody/virtual/server/pm/PackageCacheManager;->getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->getPackageInstalledUsers(Ljava/lang/String;)[I

    move-result-object v2

    .line 378
    invoke-static {v2, p2}, Lcom/lody/virtual/helper/utils/ArrayUtils;->contains([II)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 379
    monitor-exit p0

    return v1

    .line 381
    :cond_1
    :try_start_2
    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 382
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VAppManagerService;->uninstallPackageFully(Lcom/lody/virtual/server/pm/PackageSetting;)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/lody/virtual/server/am/VActivityManagerService;->killAppByPkg(Ljava/lang/String;I)V

    .line 386
    invoke-virtual {v0, p2, v1}, Lcom/lody/virtual/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 387
    invoke-direct {p0, v0, p2}, Lcom/lody/virtual/server/pm/VAppManagerService;->notifyAppUninstalled(Lcom/lody/virtual/server/pm/PackageSetting;I)V

    .line 388
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mPersistenceLayer:Lcom/lody/virtual/server/pm/PackagePersistenceLayer;

    invoke-virtual {v0}, Lcom/lody/virtual/server/pm/PackagePersistenceLayer;->save()V

    .line 389
    invoke-static {p2, p1}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 390
    invoke-static {p2, p1}, Lcom/lody/virtual/os/VEnvironment;->getVirtualPrivateStorageDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/lody/virtual/helper/utils/FileUtils;->deleteDir(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    :goto_0
    monitor-exit p0

    return v3

    .line 394
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V
    .locals 1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
