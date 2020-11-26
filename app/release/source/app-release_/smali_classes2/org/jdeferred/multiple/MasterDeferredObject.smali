.class public Lorg/jdeferred/multiple/MasterDeferredObject;
.super Lorg/jdeferred/impl/DeferredObject;
.source "MasterDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdeferred/impl/DeferredObject<",
        "Lorg/jdeferred/multiple/MultipleResults;",
        "Lorg/jdeferred/multiple/OneReject;",
        "Lorg/jdeferred/multiple/MasterProgress;",
        ">;",
        "Lorg/jdeferred/Promise<",
        "Lorg/jdeferred/multiple/MultipleResults;",
        "Lorg/jdeferred/multiple/OneReject;",
        "Lorg/jdeferred/multiple/MasterProgress;",
        ">;"
    }
.end annotation


# instance fields
.field private final doneCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final failCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfPromises:I

.field private final results:Lorg/jdeferred/multiple/MultipleResults;


# direct methods
.method public varargs constructor <init>([Lorg/jdeferred/Promise;)V
    .locals 7

    .line 55
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->doneCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->failCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    .line 56
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 58
    array-length v0, p1

    iput v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->numberOfPromises:I

    .line 59
    new-instance v1, Lorg/jdeferred/multiple/MultipleResults;

    invoke-direct {v1, v0}, Lorg/jdeferred/multiple/MultipleResults;-><init>(I)V

    iput-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->results:Lorg/jdeferred/multiple/MultipleResults;

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    .line 64
    new-instance v5, Lorg/jdeferred/multiple/MasterDeferredObject$3;

    invoke-direct {v5, p0, v2, v3}, Lorg/jdeferred/multiple/MasterDeferredObject$3;-><init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V

    invoke-interface {v3, v5}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object v5

    new-instance v6, Lorg/jdeferred/multiple/MasterDeferredObject$2;

    invoke-direct {v6, p0, v2, v3}, Lorg/jdeferred/multiple/MasterDeferredObject$2;-><init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V

    invoke-interface {v5, v6}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    move-result-object v5

    new-instance v6, Lorg/jdeferred/multiple/MasterDeferredObject$1;

    invoke-direct {v6, p0, v2, v3}, Lorg/jdeferred/multiple/MasterDeferredObject$1;-><init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V

    invoke-interface {v5, v6}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Promises is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jdeferred/multiple/MasterDeferredObject;)Lorg/jdeferred/multiple/MultipleResults;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->results:Lorg/jdeferred/multiple/MultipleResults;

    return-object p0
.end method

.method static synthetic access$100(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->doneCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->failCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$300(Lorg/jdeferred/multiple/MasterDeferredObject;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->numberOfPromises:I

    return p0
.end method
