.class Lorg/jdeferred/impl/PipedPromise$6;
.super Ljava/lang/Object;
.source "PipedPromise.java"

# interfaces
.implements Lorg/jdeferred/DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/impl/PipedPromise;->pipe(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jdeferred/DoneCallback<",
        "TD_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/impl/PipedPromise;


# direct methods
.method constructor <init>(Lorg/jdeferred/impl/PipedPromise;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/jdeferred/impl/PipedPromise$6;->this$0:Lorg/jdeferred/impl/PipedPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD_OUT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/jdeferred/impl/PipedPromise$6;->this$0:Lorg/jdeferred/impl/PipedPromise;

    invoke-virtual {v0, p1}, Lorg/jdeferred/impl/PipedPromise;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method
