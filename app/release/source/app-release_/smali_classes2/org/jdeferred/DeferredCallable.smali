.class public abstract Lorg/jdeferred/DeferredCallable;
.super Ljava/lang/Object;
.source "DeferredCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final deferred:Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Deferred<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field private final startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/DeferredCallable;->deferred:Lorg/jdeferred/Deferred;

    .line 23
    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lorg/jdeferred/DeferredCallable;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/DeferredCallable;->deferred:Lorg/jdeferred/Deferred;

    .line 27
    iput-object p1, p0, Lorg/jdeferred/DeferredCallable;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method protected getDeferred()Lorg/jdeferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Deferred<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/jdeferred/DeferredCallable;->deferred:Lorg/jdeferred/Deferred;

    return-object v0
.end method

.method public getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/jdeferred/DeferredCallable;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method protected notify(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/jdeferred/DeferredCallable;->deferred:Lorg/jdeferred/Deferred;

    invoke-interface {v0, p1}, Lorg/jdeferred/Deferred;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method
