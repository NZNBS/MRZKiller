.class public Lorg/jdeferred/impl/DeferredPromise;
.super Ljava/lang/Object;
.source "DeferredPromise.java"

# interfaces
.implements Lorg/jdeferred/Promise;


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
        "Ljava/lang/Object;",
        "Lorg/jdeferred/Promise<",
        "TD;TF;TP;>;"
    }
.end annotation


# instance fields
.field protected final deferred:Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end field

.field private final promise:Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jdeferred/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/jdeferred/impl/DeferredPromise;->deferred:Lorg/jdeferred/Deferred;

    .line 37
    invoke-interface {p1}, Lorg/jdeferred/Deferred;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    iput-object p1, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method public always(Lorg/jdeferred/AlwaysCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/AlwaysCallback<",
            "TD;TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->always(Lorg/jdeferred/AlwaysCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public isPending()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->isPending()Z

    move-result v0

    return v0
.end method

.method public isRejected()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->isRejected()Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->isResolved()Z

    move-result v0

    return v0
.end method

.method public progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public state()Lorg/jdeferred/Promise$State;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->state()Lorg/jdeferred/Promise$State;

    move-result-object v0

    return-object v0
.end method

.method public then(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DoneCallback;Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DoneCallback;Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DoneCallback;Lorg/jdeferred/FailCallback;Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DoneCallback;Lorg/jdeferred/FailCallback;Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DoneFilter;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DoneFilter;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;",
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;",
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;",
            "Lorg/jdeferred/ProgressFilter<",
            "TP;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DonePipe;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DonePipe;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/FailPipe<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/FailPipe<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/ProgressPipe<",
            "TP;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdeferred/Promise;->then(Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public waitSafely()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->waitSafely()V

    return-void
.end method

.method public waitSafely(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/jdeferred/impl/DeferredPromise;->promise:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->waitSafely(J)V

    return-void
.end method
