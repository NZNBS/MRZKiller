.class public Lorg/jdeferred/impl/DeferredObject;
.super Lorg/jdeferred/impl/AbstractPromise;
.source "DeferredObject.java"

# interfaces
.implements Lorg/jdeferred/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/impl/AbstractPromise<",
        "TD;TF;TP;>;",
        "Lorg/jdeferred/Deferred<",
        "TD;TF;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/jdeferred/impl/AbstractPromise;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/DeferredObject;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/DeferredObject;->triggerProgress(Ljava/lang/Object;)V

    .line 85
    monitor-exit p0

    return-object p0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deferred object already finished, cannot notify progress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public promise()Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    return-object p0
.end method

.method public reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/DeferredObject;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    iput-object v0, p0, Lorg/jdeferred/impl/DeferredObject;->state:Lorg/jdeferred/Promise$State;

    .line 95
    iput-object p1, p0, Lorg/jdeferred/impl/DeferredObject;->rejectResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 98
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/DeferredObject;->triggerFail(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v1, p0, Lorg/jdeferred/impl/DeferredObject;->state:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v1, v0, p1}, Lorg/jdeferred/impl/DeferredObject;->triggerAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v1

    .line 100
    iget-object v2, p0, Lorg/jdeferred/impl/DeferredObject;->state:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v2, v0, p1}, Lorg/jdeferred/impl/DeferredObject;->triggerAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deferred object already finished, cannot reject again"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 102
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/DeferredObject;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    iput-object v0, p0, Lorg/jdeferred/impl/DeferredObject;->state:Lorg/jdeferred/Promise$State;

    .line 67
    iput-object p1, p0, Lorg/jdeferred/impl/DeferredObject;->resolveResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 70
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/DeferredObject;->triggerDone(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object v1, p0, Lorg/jdeferred/impl/DeferredObject;->state:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v1, p1, v0}, Lorg/jdeferred/impl/DeferredObject;->triggerAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v1

    .line 72
    iget-object v2, p0, Lorg/jdeferred/impl/DeferredObject;->state:Lorg/jdeferred/Promise$State;

    invoke-virtual {p0, v2, p1, v0}, Lorg/jdeferred/impl/DeferredObject;->triggerAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deferred object already finished, cannot resolve again"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 74
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
