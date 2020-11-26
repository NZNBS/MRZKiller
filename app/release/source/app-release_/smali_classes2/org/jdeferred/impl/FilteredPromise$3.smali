.class Lorg/jdeferred/impl/FilteredPromise$3;
.super Ljava/lang/Object;
.source "FilteredPromise.java"

# interfaces
.implements Lorg/jdeferred/DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/impl/FilteredPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jdeferred/DoneCallback<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/impl/FilteredPromise;


# direct methods
.method constructor <init>(Lorg/jdeferred/impl/FilteredPromise;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/jdeferred/impl/FilteredPromise$3;->this$0:Lorg/jdeferred/impl/FilteredPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/jdeferred/impl/FilteredPromise$3;->this$0:Lorg/jdeferred/impl/FilteredPromise;

    invoke-static {v0}, Lorg/jdeferred/impl/FilteredPromise;->access$200(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/DoneFilter;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdeferred/DoneFilter;->filterDone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdeferred/impl/FilteredPromise;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method
