.class public Lcom/lody/virtual/client/ipc/ServiceManagerNative;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final APP:Ljava/lang/String; = "app"

.field public static final DEVICE:Ljava/lang/String; = "device"

.field public static final JOB:Ljava/lang/String; = "job"

.field public static final NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static SERVICE_CP_AUTH:Ljava/lang/String; = "virtual.service.BinderProvider"

.field public static final SERVICE_DEF_AUTH:Ljava/lang/String; = "virtual.service.BinderProvider"

.field private static final TAG:Ljava/lang/String; = "ServiceManagerNative"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final VIRTUAL_LOC:Ljava/lang/String; = "virtual-loc"

.field public static final VS:Ljava/lang/String; = "vs"

.field private static sFetcher:Lcom/lody/virtual/server/interfaces/IServiceFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 90
    invoke-static {}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getServiceFetcher()Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/lody/virtual/server/interfaces/IServiceFetcher;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static clearServerFetcher()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    return-void
.end method

.method public static ensureServerStarted()V
    .locals 3

    .line 52
    new-instance v0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->SERVICE_CP_AUTH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "ensure_created"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->methodName(Ljava/lang/String;)Lcom/lody/virtual/client/ipc/ProviderCall$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->call()Landroid/os/Bundle;

    return-void
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    .line 74
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/lody/virtual/server/ServiceCache;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getServiceFetcher()Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    :try_start_0
    invoke-interface {v0, p0}, Lcom/lody/virtual/server/interfaces/IServiceFetcher;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "GetService(%s) return null."

    invoke-static {v0, p0, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getServiceFetcher()Lcom/lody/virtual/server/interfaces/IServiceFetcher;
    .locals 4

    .line 37
    sget-object v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lody/virtual/server/interfaces/IServiceFetcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    :cond_0
    const-class v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;

    sget-object v3, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->SERVICE_CP_AUTH:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v2, v1}, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->methodName(Ljava/lang/String;)Lcom/lody/virtual/client/ipc/ProviderCall$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->call()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "_VA_|_binder_"

    .line 42
    invoke-static {v1, v2}, Lcom/lody/virtual/helper/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->linkBinderDied(Landroid/os/IBinder;)V

    .line 44
    invoke-static {v1}, Lcom/lody/virtual/server/interfaces/IServiceFetcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    move-result-object v1

    sput-object v1, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    .line 46
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_2
    sget-object v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->sFetcher:Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    return-object v0

    :catchall_0
    move-exception v1

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static linkBinderDied(Landroid/os/IBinder;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative$1;-><init>(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    .line 67
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static removeService(Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getServiceFetcher()Lcom/lody/virtual/server/interfaces/IServiceFetcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v0, p0}, Lcom/lody/virtual/server/interfaces/IServiceFetcher;->removeService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
