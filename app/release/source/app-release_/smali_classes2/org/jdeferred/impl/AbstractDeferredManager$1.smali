.class Lorg/jdeferred/impl/AbstractDeferredManager$1;
.super Lorg/jdeferred/DeferredCallable;
.source "AbstractDeferredManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/impl/AbstractDeferredManager;->when(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdeferred/DeferredCallable<",
        "TD;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/impl/AbstractDeferredManager;

.field final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lorg/jdeferred/impl/AbstractDeferredManager;Lorg/jdeferred/DeferredManager$StartPolicy;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/jdeferred/impl/AbstractDeferredManager$1;->this$0:Lorg/jdeferred/impl/AbstractDeferredManager;

    iput-object p3, p0, Lorg/jdeferred/impl/AbstractDeferredManager$1;->val$future:Ljava/util/concurrent/Future;

    invoke-direct {p0, p2}, Lorg/jdeferred/DeferredCallable;-><init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractDeferredManager$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 209
    :cond_0
    throw v0

    :catch_1
    move-exception v0

    .line 205
    throw v0
.end method
