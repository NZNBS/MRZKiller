.class public Lcom/lody/virtual/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/ServiceRecord$DeathRecipient;,
        Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;
    }
.end annotation


# instance fields
.field public activeSince:J

.field public final bindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field public foregroundId:I

.field public foregroundNoti:Landroid/app/Notification;

.field public lastActivityTime:J

.field public process:Lcom/lody/virtual/server/am/ProcessRecord;

.field public serviceInfo:Landroid/content/pm/ServiceInfo;

.field public startId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addToBoundIntent(Landroid/content/Intent;Landroid/app/IServiceConnection;)V
    .locals 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/ServiceRecord;->peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    invoke-direct {v0}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;-><init>()V

    .line 66
    iput-object p1, v0, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    monitor-enter p1

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {v0, p2}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->addConnection(Landroid/app/IServiceConnection;)V

    return-void
.end method

.method public containConnection(Landroid/app/IServiceConnection;)Z
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 28
    invoke-virtual {v1, p1}, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->containConnection(Landroid/app/IServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getClientCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getConnectionCount()I
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 44
    iget-object v3, v3, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 46
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method peekBinding(Landroid/content/Intent;)Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ServiceRecord;->bindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 54
    iget-object v3, v2, Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    monitor-exit v0

    return-object v2

    .line 58
    :cond_1
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
