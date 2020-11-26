.class public Lorg/jdeferred/impl/DefaultDeferredManager;
.super Lorg/jdeferred/impl/AbstractDeferredManager;
.source "DefaultDeferredManager.java"


# static fields
.field public static final DEFAULT_AUTO_SUBMIT:Z = true


# instance fields
.field private autoSubmit:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/jdeferred/impl/AbstractDeferredManager;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->autoSubmit:Z

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/jdeferred/impl/AbstractDeferredManager;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->autoSubmit:Z

    .line 59
    iput-object p1, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public isAutoSubmit()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->autoSubmit:Z

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public setAutoSubmit(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->autoSubmit:Z

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected submit(Ljava/lang/Runnable;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected submit(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jdeferred/impl/DefaultDeferredManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
