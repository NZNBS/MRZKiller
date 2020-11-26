.class Lorg/jdeferred/impl/PipedPromise$1;
.super Ljava/lang/Object;
.source "PipedPromise.java"

# interfaces
.implements Lorg/jdeferred/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/impl/PipedPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jdeferred/ProgressCallback<",
        "TP;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/impl/PipedPromise;

.field final synthetic val$progressFilter:Lorg/jdeferred/ProgressPipe;


# direct methods
.method constructor <init>(Lorg/jdeferred/impl/PipedPromise;Lorg/jdeferred/ProgressPipe;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/jdeferred/impl/PipedPromise$1;->this$0:Lorg/jdeferred/impl/PipedPromise;

    iput-object p2, p0, Lorg/jdeferred/impl/PipedPromise$1;->val$progressFilter:Lorg/jdeferred/ProgressPipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/jdeferred/impl/PipedPromise$1;->val$progressFilter:Lorg/jdeferred/ProgressPipe;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jdeferred/impl/PipedPromise$1;->this$0:Lorg/jdeferred/impl/PipedPromise;

    invoke-interface {v0, p1}, Lorg/jdeferred/ProgressPipe;->pipeProgress(Ljava/lang/Object;)Lorg/jdeferred/Promise;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jdeferred/impl/PipedPromise;->pipe(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/PipedPromise$1;->this$0:Lorg/jdeferred/impl/PipedPromise;

    invoke-virtual {v0, p1}, Lorg/jdeferred/impl/PipedPromise;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    :goto_0
    return-void
.end method
