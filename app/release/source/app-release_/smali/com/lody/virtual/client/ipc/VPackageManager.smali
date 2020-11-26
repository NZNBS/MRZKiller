.class public Lcom/lody/virtual/client/ipc/VPackageManager;
.super Ljava/lang/Object;
.source "VPackageManager.java"


# static fields
.field private static final sMgr:Lcom/lody/virtual/client/ipc/VPackageManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/server/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/lody/virtual/client/ipc/VPackageManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VPackageManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VPackageManager;->sMgr:Lcom/lody/virtual/client/ipc/VPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VPackageManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/lody/virtual/client/ipc/VPackageManager;->sMgr:Lcom/lody/virtual/client/ipc/VPackageManager;

    return-object v0
.end method

.method private getRemoteInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "package"

    .line 48
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/lody/virtual/server/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 238
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 161
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p2, "/system/framework/org.apache.http.legacy.boot.jar"

    .line 189
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    const-string p2, "/system/framework/org.apache.http.legacy.jar"

    .line 192
    :cond_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_3

    iget p3, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt p3, v0, :cond_3

    .line 194
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_2

    new-array p3, v1, [Ljava/lang/String;

    aput-object p2, p3, v0

    goto :goto_0

    .line 197
    :cond_2
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length p3, p3

    add-int/2addr p3, v1

    .line 198
    new-array v2, p3, [Ljava/lang/String;

    .line 199
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    sub-int/2addr p3, v1

    invoke-static {v3, v0, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    aput-object p2, v2, p3

    move-object p3, v2

    .line 202
    :goto_0
    iput-object p3, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 206
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IPackageManager;->getInstalledApplications(II)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/remote/VParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IPackageManager;->getInstalledPackages(II)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/remote/VParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getInterface()Lcom/lody/virtual/server/IPackageManager;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VPackageManager;->mRemote:Lcom/lody/virtual/server/IPackageManager;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/lody/virtual/server/IPackageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const-class v0, Lcom/lody/virtual/client/ipc/VPackageManager;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getRemoteInterface()Ljava/lang/Object;

    move-result-object v1

    .line 41
    const-class v2, Lcom/lody/virtual/server/IPackageManager;

    invoke-static {v2, v1}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/IPackageManager;

    iput-object v1, p0, Lcom/lody/virtual/client/ipc/VPackageManager;->mRemote:Lcom/lody/virtual/server/IPackageManager;

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VPackageManager;->mRemote:Lcom/lody/virtual/server/IPackageManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 279
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method public getPackageInstaller()Lcom/lody/virtual/server/IPackageInstaller;
    .locals 1

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IPackageManager;->getPackageInstaller()Lcom/lody/virtual/server/IPackageInstaller;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 288
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IPackageInstaller;

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 1

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 271
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 263
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PermissionGroupInfo;

    return-object p1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 137
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PermissionInfo;

    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 230
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 113
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 222
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ServiceInfo;

    return-object p1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/remote/VParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 247
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 105
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 177
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 129
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public querySharedPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IPackageManager;->querySharedPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 255
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 214
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    return-object p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VPackageManager;->getInterface()Lcom/lody/virtual/server/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1
.end method
