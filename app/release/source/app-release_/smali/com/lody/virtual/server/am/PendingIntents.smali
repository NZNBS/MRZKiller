.class public final Lcom/lody/virtual/server/am/PendingIntents;
.super Ljava/lang/Object;
.source "PendingIntents.java"


# instance fields
.field private final mLruHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/remote/PendingIntentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/am/PendingIntents;)Ljava/util/Map;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method final addPendingIntent(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Lcom/lody/virtual/server/am/PendingIntents$1;

    invoke-direct {v1, p0, p1}, Lcom/lody/virtual/server/am/PendingIntents$1;-><init>(Lcom/lody/virtual/server/am/PendingIntents;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 36
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/remote/PendingIntentData;

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    new-instance v2, Lcom/lody/virtual/remote/PendingIntentData;

    invoke-direct {v2, p2, p1}, Lcom/lody/virtual/remote/PendingIntentData;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_0
    iput-object p2, v1, Lcom/lody/virtual/remote/PendingIntentData;->creator:Ljava/lang/String;

    .line 44
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final getPendingIntent(Landroid/os/IBinder;)Lcom/lody/virtual/remote/PendingIntentData;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/PendingIntentData;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final removePendingIntent(Landroid/os/IBinder;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/PendingIntents;->mLruHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
