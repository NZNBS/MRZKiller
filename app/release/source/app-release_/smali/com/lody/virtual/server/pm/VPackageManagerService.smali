.class public Lcom/lody/virtual/server/pm/VPackageManagerService;
.super Lcom/lody/virtual/server/IPackageManager$Stub;
.source "VPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;,
        Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final gService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/lody/virtual/server/pm/VPackageManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

.field private final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/pm/parser/VPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

.field private final mProvidersByAuthority:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->sResolvePrioritySorter:Ljava/util/Comparator;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$2;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$2;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Lcom/lody/virtual/server/IPackageManager$Stub;-><init>()V

    .line 85
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    .line 86
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    .line 87
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    new-instance v1, Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-direct {v1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    .line 96
    sget-object v0, Lcom/lody/virtual/server/pm/PackageCacheManager;->PACKAGE_CACHE:Lcom/lody/virtual/helper/collection/ArrayMap;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->RESOLVER_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method private checkUserId(I)V
    .locals 3

    .line 278
    invoke-static {}, Lcom/lody/virtual/server/pm/VUserManagerService;->get()Lcom/lody/virtual/server/pm/VUserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p4, :cond_4

    .line 386
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 388
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_0
    if-le v0, v1, :cond_4

    .line 392
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 393
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 396
    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v4, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    iget v9, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/lody/virtual/server/pm/VPackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 409
    :cond_2
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    .line 398
    :cond_3
    :goto_0
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method private generatePackageInfo(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;
    .locals 8

    .line 252
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result v1

    .line 253
    iget-wide v2, p2, Lcom/lody/virtual/server/pm/PackageSetting;->firstInstallTime:J

    iget-wide v4, p2, Lcom/lody/virtual/server/pm/PackageSetting;->lastUpdateTime:J

    .line 254
    invoke-virtual {p2, p4}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v6

    move-object v0, p1

    move v7, p4

    .line 253
    invoke-static/range {v0 .. v7}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generatePackageInfo(Lcom/lody/virtual/server/pm/parser/VPackage;IJJLcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static get()Lcom/lody/virtual/server/pm/VPackageManagerService;
    .locals 1

    .line 112
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/VPackageManagerService;

    return-object v0
.end method

.method public static systemReady()V
    .locals 5

    .line 106
    new-instance v0, Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/VPackageManagerService;-><init>()V

    .line 107
    new-instance v1, Lcom/lody/virtual/server/pm/VUserManagerService;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [C

    iget-object v4, v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/lody/virtual/server/pm/VUserManagerService;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    sget-object v1, Lcom/lody/virtual/server/pm/VPackageManagerService;->gService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateFlagsNought(I)I
    .locals 2

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return p1

    :cond_0
    const/high16 v0, 0xc0000

    and-int v1, p1, v0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    or-int/2addr p1, v0

    :goto_0
    return p1
.end method


# virtual methods
.method public activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 11

    .line 304
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-static {v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$200(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 307
    monitor-exit v0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 309
    :goto_0
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 310
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    const-string v10, "PackageManager"

    move-object v6, p3

    .line 310
    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 312
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method analyzePackageLocked(Lcom/lody/virtual/server/pm/parser/VPackage;)V
    .locals 9

    .line 117
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 119
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 120
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 121
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-virtual {v4, v3, v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->addActivity(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 127
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    .line 128
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 129
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 131
    :cond_2
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-virtual {v4, v3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->addService(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 135
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 136
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 137
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 139
    :cond_4
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v5, "receiver"

    invoke-virtual {v4, v3, v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->addActivity(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    :cond_5
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_a

    .line 144
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    .line 145
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 146
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 148
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_7

    .line 149
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-virtual {v4, v3}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->addProvider(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;)V

    .line 151
    :cond_7
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 152
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    .line 153
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 154
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 157
    :cond_9
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 160
    :cond_a
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_b

    .line 162
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;

    .line 163
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->className:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 165
    :cond_b
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_c

    .line 167
    iget-object v2, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    .line 168
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->className:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 232
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/core/VirtualCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method cleanUpUser(I)V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 800
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 801
    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method createNewUser(ILjava/io/File;)V
    .locals 1

    .line 792
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 793
    iget-object v0, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 794
    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->modifyUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    goto :goto_0

    :cond_0
    return-void
.end method

.method deletePackageLocked(Ljava/lang/String;)V
    .locals 9

    .line 173
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 179
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 180
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-virtual {v4, v3, v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->removeActivity(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 184
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    .line 185
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-virtual {v4, v3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->removeService(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 189
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 190
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    const-string v5, "receiver"

    invoke-virtual {v4, v3, v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->removeActivity(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    :cond_3
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 195
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    .line 196
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_4

    .line 197
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-virtual {v4, v3}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->removeProvider(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;)V

    .line 199
    :cond_4
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 200
    array-length v5, v4

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 201
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 203
    :cond_5
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 206
    :cond_6
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_7

    .line 208
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;

    .line 209
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 211
    :cond_7
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_8

    .line 213
    iget-object v2, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    .line 214
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->className:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 285
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 286
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p2

    .line 287
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 291
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$200(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v2

    invoke-static {p1, p2, v2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateActivityInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 294
    invoke-static {v1, p1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/server/pm/PackageSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 295
    monitor-exit v0

    return-object p1

    .line 298
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 673
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    .line 674
    new-instance v3, Landroid/content/pm/PermissionGroupInfo;

    iget-object v2, v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    :cond_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    .line 677
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 702
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 703
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p2

    .line 704
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p1, :cond_0

    .line 707
    iget-object v1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 708
    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 710
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInstalledApplications(II)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lody/virtual/remote/VParceledListSlice<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 626
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 627
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p1

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 631
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 632
    invoke-virtual {v4, p2}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v4

    invoke-static {v3, p1, v4, p2}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 633
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 635
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    new-instance p1, Lcom/lody/virtual/remote/VParceledListSlice;

    invoke-direct {p1, v0}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 635
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getInstalledPackages(II)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/lody/virtual/remote/VParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 610
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 614
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 615
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->generatePackageInfo(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 617
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    new-instance p1, Lcom/lody/virtual/remote/VParceledListSlice;

    invoke-direct {p1, v0}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 620
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 4

    .line 745
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p1

    .line 746
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 748
    iget-object v2, v2, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 749
    iget v3, v2, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    if-ne v3, p1, :cond_0

    .line 750
    iget-object p1, v2, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 753
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 754
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 240
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 241
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p1, :cond_0

    .line 244
    iget-object v1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 245
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->generatePackageInfo(Lcom/lody/virtual/server/pm/parser/VPackage;Lcom/lody/virtual/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 247
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackageInstaller()Lcom/lody/virtual/server/IPackageInstaller;
    .locals 1

    .line 788
    invoke-static {}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->get()Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 2

    .line 732
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 733
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p1, :cond_0

    .line 736
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 737
    iget p1, p1, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    invoke-static {p2, p1}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 739
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 740
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 5

    .line 716
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    .line 717
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 718
    monitor-enter p0

    .line 719
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 720
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 721
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 722
    iget v4, v4, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    invoke-static {v0, v4}, Lcom/lody/virtual/os/VUserHandle;->getUid(II)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 723
    iget-object v3, v3, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 726
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 727
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    .line 659
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p2

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    if-eqz p1, :cond_0

    .line 662
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    monitor-exit p2

    return-object v0

    .line 664
    :cond_0
    monitor-exit p2

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    .line 641
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p2

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;

    if-eqz p1, :cond_0

    .line 644
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    monitor-exit p2

    return-object v0

    .line 646
    :cond_0
    monitor-exit p2

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 3

    .line 359
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 360
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p2

    .line 361
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 365
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v2

    invoke-static {p1, p2, v2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateProviderInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 368
    invoke-static {v1, p1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/server/pm/PackageSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 369
    monitor-exit v0

    return-object p1

    .line 372
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 321
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 322
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p2

    .line 323
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 327
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->access$200(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v2

    invoke-static {p1, p2, v2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateActivityInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 330
    invoke-static {v1, p1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/server/pm/PackageSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 331
    monitor-exit v0

    return-object p1

    .line 334
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 340
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 341
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p2

    .line 342
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 346
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-static {v2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->access$300(Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v2

    invoke-static {p1, p2, v2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateServiceInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 349
    invoke-static {v1, p1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/server/pm/PackageSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 350
    monitor-exit v0

    return-object p1

    .line 353
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSharedLibraries(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 220
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->usesLibraries:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 225
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 781
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 782
    throw p1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/lody/virtual/remote/VParceledListSlice<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 588
    invoke-static {p2}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    .line 589
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 590
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p3

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v2

    .line 594
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    .line 595
    iget-object v5, v4, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object v5, v5, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/lody/virtual/server/pm/PackageSetting;

    if-eqz p1, :cond_1

    .line 596
    iget v6, v5, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    invoke-static {p2}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, v4, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 597
    :cond_1
    invoke-virtual {v5, v0}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v5

    invoke-static {v4, p3, v5, v0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateProviderInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 598
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 603
    sget-object p1, Lcom/lody/virtual/server/pm/VPackageManagerService;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 605
    :cond_3
    new-instance p1, Lcom/lody/virtual/remote/VParceledListSlice;

    invoke-direct {p1, v1}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 601
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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

    .line 421
    invoke-direct {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 422
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result v3

    .line 423
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_0

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 428
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    :cond_0
    move-object v1, p1

    if-eqz p3, :cond_2

    .line 433
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    invoke-virtual {p0, p3, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 436
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 437
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 438
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 444
    :cond_2
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 445
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 447
    iget-object p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-virtual {p3, v1, p2, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p3, :cond_4

    .line 451
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mActivities:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    iget-object v4, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 453
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 454
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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

    .line 551
    invoke-direct {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 552
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result v3

    .line 553
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_0

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    :cond_0
    move-object v1, p1

    if-eqz p3, :cond_2

    .line 563
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    invoke-virtual {p0, p3, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 566
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 567
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 568
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 573
    :cond_2
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 574
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 576
    iget-object p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    invoke-virtual {p3, v1, p2, v3, p4}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p3, :cond_4

    .line 580
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProviders:Lcom/lody/virtual/server/pm/ProviderIntentResolver;

    iget-object v4, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 582
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 583
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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

    .line 459
    invoke-direct {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 460
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result v3

    .line 461
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_0

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 464
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    :cond_0
    move-object v1, p1

    if-eqz p3, :cond_2

    .line 471
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    invoke-virtual {p0, p3, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 474
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 475
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 476
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 482
    :cond_2
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 483
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 485
    iget-object p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    invoke-virtual {p3, v1, p2, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p3, :cond_4

    .line 489
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mReceivers:Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;

    iget-object v4, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 491
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 492
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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

    .line 512
    invoke-direct {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 513
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result v3

    .line 514
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_0

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 517
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 519
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    :cond_0
    move-object v1, p1

    if-eqz p3, :cond_2

    .line 524
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    invoke-virtual {p0, p3, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 527
    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 528
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 529
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 535
    :cond_2
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    .line 536
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 538
    iget-object p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    invoke-virtual {p3, v1, p2, v3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p3, :cond_4

    .line 542
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mServices:Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;

    iget-object v4, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 544
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 545
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
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

    .line 652
    iget-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter p1

    const/4 p2, 0x0

    .line 653
    :try_start_0
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 654
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public querySharedPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    .line 760
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage;

    if-eqz p1, :cond_3

    .line 762
    iget-object v1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 766
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 768
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    iget-object v5, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    iget-object v3, v3, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    :cond_2
    monitor-exit v0

    return-object v1

    .line 764
    :cond_3
    :goto_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 773
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2

    .line 682
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 683
    invoke-direct {p0, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p2

    .line 684
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    monitor-enter v0

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mProvidersByAuthority:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    if-eqz p1, :cond_0

    .line 687
    iget-object v1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 688
    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateProviderInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 690
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mPackages:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 691
    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast p2, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 692
    invoke-static {p2, p1, p3}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentInfo(Lcom/lody/virtual/server/pm/PackageSetting;Landroid/content/pm/ComponentInfo;I)V

    .line 693
    monitor-exit v0

    return-object p1

    .line 696
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 378
    invoke-direct {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 379
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p3

    const/4 p4, 0x0

    .line 380
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p4

    .line 381
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 497
    invoke-direct {p0, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->checkUserId(I)V

    .line 498
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->updateFlagsNought(I)I

    move-result p3

    .line 499
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 501
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_0

    const/4 p2, 0x0

    .line 504
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
