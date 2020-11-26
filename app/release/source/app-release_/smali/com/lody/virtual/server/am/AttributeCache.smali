.class public final Lcom/lody/virtual/server/am/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/AttributeCache$Entry;,
        Lcom/lody/virtual/server/am/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/lody/virtual/server/am/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/am/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    .line 40
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 43
    iput-object p1, p0, Lcom/lody/virtual/server/am/AttributeCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lody/virtual/server/am/AttributeCache;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/am/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    :cond_0
    return-void
.end method

.method public static instance()Lcom/lody/virtual/server/am/AttributeCache;
    .locals 1

    .line 53
    sget-object v0, Lcom/lody/virtual/server/am/AttributeCache;->sInstance:Lcom/lody/virtual/server/am/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[I)Lcom/lody/virtual/server/am/AttributeCache$Entry;
    .locals 4

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/AttributeCache$Package;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0}, Lcom/lody/virtual/server/am/AttributeCache$Package;->access$000(Lcom/lody/virtual/server/am/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/AttributeCache$Entry;

    if-eqz v2, :cond_2

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 94
    :try_start_2
    monitor-exit p0

    return-object v1

    .line 99
    :cond_1
    new-instance v2, Lcom/lody/virtual/server/am/AttributeCache$Package;

    invoke-direct {v2, v0}, Lcom/lody/virtual/server/am/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    move-object v0, v2

    :cond_2
    if-nez p1, :cond_3

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-static {v0}, Lcom/lody/virtual/server/am/AttributeCache$Package;->access$000(Lcom/lody/virtual/server/am/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :cond_3
    :try_start_3
    new-instance v2, Lcom/lody/virtual/server/am/AttributeCache$Entry;

    iget-object v3, v0, Lcom/lody/virtual/server/am/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/lody/virtual/server/am/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/lody/virtual/server/am/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 110
    invoke-virtual {p1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    monitor-exit p0

    return-object v2

    .line 112
    :catch_0
    monitor-exit p0

    return-object v1

    .line 97
    :catch_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const v0, -0x400000a1    # -1.9999808f

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/lody/virtual/server/am/AttributeCache;->mPackages:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
