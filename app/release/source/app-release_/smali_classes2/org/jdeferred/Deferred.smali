.class public interface abstract Lorg/jdeferred/Deferred;
.super Ljava/lang/Object;
.source "Deferred.java"

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


# virtual methods
.method public abstract notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end method

.method public abstract promise()Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end method

.method public abstract reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end method

.method public abstract resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lorg/jdeferred/Deferred<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end method
