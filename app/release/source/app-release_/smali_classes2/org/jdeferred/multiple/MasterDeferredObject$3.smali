.class Lorg/jdeferred/multiple/MasterDeferredObject$3;
.super Ljava/lang/Object;
.source "MasterDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/FailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/multiple/MasterDeferredObject;-><init>([Lorg/jdeferred/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jdeferred/FailCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

.field final synthetic val$index:I

.field final synthetic val$promise:Lorg/jdeferred/Promise;


# direct methods
.method constructor <init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    iput p2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->val$index:I

    iput-object p3, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->val$promise:Lorg/jdeferred/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Object;)V
    .locals 6

    .line 66
    iget-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-virtual {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->isPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    monitor-exit v0

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$200(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 71
    iget-object v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    new-instance v3, Lorg/jdeferred/multiple/MasterProgress;

    invoke-static {v2}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$100(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v5}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$300(Lorg/jdeferred/multiple/MasterDeferredObject;)I

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Lorg/jdeferred/multiple/MasterProgress;-><init>(III)V

    invoke-virtual {v2, v3}, Lorg/jdeferred/multiple/MasterDeferredObject;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 76
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    new-instance v2, Lorg/jdeferred/multiple/OneReject;

    iget v3, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->val$index:I

    iget-object v4, p0, Lorg/jdeferred/multiple/MasterDeferredObject$3;->val$promise:Lorg/jdeferred/Promise;

    invoke-direct {v2, v3, v4, p1}, Lorg/jdeferred/multiple/OneReject;-><init>(ILorg/jdeferred/Promise;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/jdeferred/multiple/MasterDeferredObject;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
