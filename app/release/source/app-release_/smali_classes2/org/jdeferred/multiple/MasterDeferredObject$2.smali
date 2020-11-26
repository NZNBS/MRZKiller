.class Lorg/jdeferred/multiple/MasterDeferredObject$2;
.super Ljava/lang/Object;
.source "MasterDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/multiple/MasterDeferredObject;-><init>([Lorg/jdeferred/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

.field final synthetic val$index:I

.field final synthetic val$promise:Lorg/jdeferred/Promise;


# direct methods
.method constructor <init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    iput p2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->val$index:I

    iput-object p3, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->val$promise:Lorg/jdeferred/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/Object;)V
    .locals 10

    .line 81
    iget-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-virtual {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->isPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    monitor-exit v0

    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    new-instance v9, Lorg/jdeferred/multiple/OneProgress;

    invoke-static {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$100(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v2}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$200(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v2}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$300(Lorg/jdeferred/multiple/MasterDeferredObject;)I

    move-result v5

    iget v6, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->val$index:I

    iget-object v7, p0, Lorg/jdeferred/multiple/MasterDeferredObject$2;->val$promise:Lorg/jdeferred/Promise;

    move-object v2, v9

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/jdeferred/multiple/OneProgress;-><init>(IIIILorg/jdeferred/Promise;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Lorg/jdeferred/multiple/MasterDeferredObject;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
