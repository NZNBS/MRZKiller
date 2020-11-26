.class public abstract Lorg/jdeferred/DeferredRunnable;
.super Ljava/lang/Object;
.source "DeferredRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final deferred:Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Deferred<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field private final startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/DeferredRunnable;->deferred:Lorg/jdeferred/Deferred;

    .line 20
    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lorg/jdeferred/DeferredRunnable;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/DeferredRunnable;->deferred:Lorg/jdeferred/Deferred;

    .line 24
    iput-object p1, p0, Lorg/jdeferred/DeferredRunnable;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method protected getDeferred()Lorg/jdeferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Deferred<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/jdeferred/DeferredRunnable;->deferred:Lorg/jdeferred/Deferred;

    return-object v0
.end method

.method public getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/jdeferred/DeferredRunnable;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method protected notify(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/jdeferred/DeferredRunnable;->deferred:Lorg/jdeferred/Deferred;

    invoke-interface {v0, p1}, Lorg/jdeferred/Deferred;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method
