.class public interface abstract Lorg/jdeferred/DeferredManager;
.super Ljava/lang/Object;
.source "DeferredManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/DeferredManager$StartPolicy;
    }
.end annotation


# virtual methods
.method public abstract when(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract when(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract when(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract when(Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DeferredCallable<",
            "TD;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end method

.method public abstract when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DeferredFutureTask<",
            "TD;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end method

.method public abstract when(Lorg/jdeferred/DeferredRunnable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DeferredRunnable<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end method

.method public abstract when(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end method

.method public varargs abstract when([Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract when([Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract when([Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract when([Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/DeferredCallable<",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract when([Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/DeferredFutureTask<",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract when([Lorg/jdeferred/DeferredRunnable;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/DeferredRunnable<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/Promise;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation
.end method
