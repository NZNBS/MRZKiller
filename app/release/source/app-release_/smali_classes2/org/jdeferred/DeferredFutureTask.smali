.class public Lorg/jdeferred/DeferredFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "DeferredFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TD;>;"
    }
.end annotation


# instance fields
.field protected final deferred:Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Deferred<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field protected final startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 55
    new-instance p1, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {p1}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object p1, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 56
    sget-object p1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object p1, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TD;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 49
    new-instance p1, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {p1}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object p1, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 50
    sget-object p1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object p1, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DeferredCallable<",
            "TD;TP;>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 61
    invoke-virtual {p1}, Lorg/jdeferred/DeferredCallable;->getDeferred()Lorg/jdeferred/Deferred;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 62
    invoke-virtual {p1}, Lorg/jdeferred/DeferredCallable;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object p1

    iput-object p1, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DeferredRunnable<",
            "TP;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lorg/jdeferred/DeferredRunnable;->getDeferred()Lorg/jdeferred/Deferred;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 69
    invoke-virtual {p1}, Lorg/jdeferred/DeferredRunnable;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object p1

    iput-object p1, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/DeferredFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jdeferred/Deferred;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/jdeferred/DeferredFutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    invoke-interface {v1, v0}, Lorg/jdeferred/Deferred;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jdeferred/Deferred;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    :catch_1
    :goto_0
    return-void
.end method

.method public getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method public promise()Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    invoke-interface {v0}, Lorg/jdeferred/Deferred;->promise()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method
