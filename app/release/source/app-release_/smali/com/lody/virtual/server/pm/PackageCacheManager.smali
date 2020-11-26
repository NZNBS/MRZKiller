.class public Lcom/lody/virtual/server/pm/PackageCacheManager;
.super Ljava/lang/Object;
.source "PackageCacheManager.java"


# static fields
.field static final PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/pm/parser/VPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;
    .locals 2

    .line 31
    const-class v0, Lcom/lody/virtual/server/pm/PackageCacheManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1, p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/server/pm/parser/VPackage;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getSetting(Ljava/lang/String;)Lcom/lody/virtual/server/pm/PackageSetting;
    .locals 2

    .line 37
    const-class v0, Lcom/lody/virtual/server/pm/PackageCacheManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1, p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast p0, Lcom/lody/virtual/server/pm/PackageSetting;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 42
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static put(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/PackageSetting;)V
    .locals 3

    .line 22
    const-class v0, Lcom/lody/virtual/server/pm/PackageCacheManager;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {p1, p0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->initApplicationInfoBase(Lcom/lody/virtual/server/pm/PackageSetting;Lcom/lody/virtual/server/pm/parser/VPackage;)V

    .line 24
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    .line 26
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->analyzePackageLocked(Lcom/lody/virtual/server/pm/parser/VPackage;)V

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static remove(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;
    .locals 2

    .line 47
    const-class v0, Lcom/lody/virtual/server/pm/PackageCacheManager;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->deletePackageLocked(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1, p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/server/pm/parser/VPackage;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static size()I
    .locals 2

    .line 16
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
