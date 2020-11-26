.class public Lorg/jdeferred/impl/PipedPromise;
.super Lorg/jdeferred/impl/DeferredObject;
.source "PipedPromise.java"

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
        "D_OUT:",
        "Ljava/lang/Object;",
        "F_OUT:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/impl/DeferredObject<",
        "TD_OUT;TF_OUT;TP_OUT;>;",
        "Lorg/jdeferred/Promise<",
        "TD_OUT;TF_OUT;TP_OUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/FailPipe<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/ProgressPipe<",
            "TP;TD_OUT;TF_OUT;TP_OUT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    .line 29
    new-instance v0, Lorg/jdeferred/impl/PipedPromise$3;

    invoke-direct {v0, p0, p2}, Lorg/jdeferred/impl/PipedPromise$3;-><init>(Lorg/jdeferred/impl/PipedPromise;Lorg/jdeferred/DonePipe;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lorg/jdeferred/impl/PipedPromise$2;

    invoke-direct {p2, p0, p3}, Lorg/jdeferred/impl/PipedPromise$2;-><init>(Lorg/jdeferred/impl/PipedPromise;Lorg/jdeferred/FailPipe;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lorg/jdeferred/impl/PipedPromise$1;

    invoke-direct {p2, p0, p4}, Lorg/jdeferred/impl/PipedPromise$1;-><init>(Lorg/jdeferred/impl/PipedPromise;Lorg/jdeferred/ProgressPipe;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method protected pipe(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/jdeferred/impl/PipedPromise$6;

    invoke-direct {v0, p0}, Lorg/jdeferred/impl/PipedPromise$6;-><init>(Lorg/jdeferred/impl/PipedPromise;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/impl/PipedPromise$5;

    invoke-direct {v1, p0}, Lorg/jdeferred/impl/PipedPromise$5;-><init>(Lorg/jdeferred/impl/PipedPromise;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/impl/PipedPromise$4;

    invoke-direct {v1, p0}, Lorg/jdeferred/impl/PipedPromise$4;-><init>(Lorg/jdeferred/impl/PipedPromise;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    return-object p1
.end method
