.class public Lorg/jdeferred/android/AndroidDeferredManager;
.super Lorg/jdeferred/impl/DefaultDeferredManager;
.source "AndroidDeferredManager.java"


# static fields
.field private static EMPTY_PARAMS:[Ljava/lang/Void;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 51
    sput-object v0, Lorg/jdeferred/android/AndroidDeferredManager;->EMPTY_PARAMS:[Ljava/lang/Void;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/jdeferred/impl/DefaultDeferredManager;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/jdeferred/impl/DefaultDeferredManager;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;
    .locals 1
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

    .line 144
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-super {p0, p1}, Lorg/jdeferred/impl/DefaultDeferredManager;->when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lorg/jdeferred/android/AndroidDeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public when(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
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

    .line 153
    instance-of v0, p1, Lorg/jdeferred/android/AndroidDeferredObject;

    if-eqz v0, :cond_0

    return-object p1

    .line 156
    :cond_0
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-direct {v0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lorg/jdeferred/android/AndroidDeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public when(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)Lorg/jdeferred/Promise;
    .locals 1
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
            "TD;TF;TP;>;",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            ")",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 167
    instance-of v0, p1, Lorg/jdeferred/android/AndroidDeferredObject;

    if-eqz v0, :cond_0

    return-object p1

    .line 170
    :cond_0
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-direct {v0, p1, p2}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    invoke-virtual {v0}, Lorg/jdeferred/android/AndroidDeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs when(Lorg/jdeferred/android/AndroidExecutionScope;[Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            "[",
            "Lorg/jdeferred/Promise;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-super {p0, p2}, Lorg/jdeferred/impl/DefaultDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    invoke-virtual {v0}, Lorg/jdeferred/android/AndroidDeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs when(Lorg/jdeferred/android/AndroidExecutionScope;[Lorg/jdeferred/android/DeferredAsyncTask;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            "[",
            "Lorg/jdeferred/android/DeferredAsyncTask<",
            "Ljava/lang/Void;",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p2}, Lorg/jdeferred/android/AndroidDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 117
    array-length v0, p2

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    .line 118
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 119
    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/android/AndroidDeferredManager;->when(Lorg/jdeferred/android/DeferredAsyncTask;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/jdeferred/android/AndroidDeferredManager;->when(Lorg/jdeferred/android/AndroidExecutionScope;[Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public when(Lorg/jdeferred/android/DeferredAsyncTask;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/android/DeferredAsyncTask<",
            "Ljava/lang/Void;",
            "TProgress;TResult;>;)",
            "Lorg/jdeferred/Promise<",
            "TResult;",
            "Ljava/lang/Throwable;",
            "TProgress;>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lorg/jdeferred/android/DeferredAsyncTask;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jdeferred/android/DeferredAsyncTask;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/jdeferred/android/AndroidDeferredManager;->isAutoSubmit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lorg/jdeferred/android/AndroidDeferredManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidDeferredManager;->EMPTY_PARAMS:[Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lorg/jdeferred/android/DeferredAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lorg/jdeferred/android/AndroidDeferredManager;->EMPTY_PARAMS:[Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lorg/jdeferred/android/DeferredAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/jdeferred/android/DeferredAsyncTask;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
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

    .line 180
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-super {p0, p1}, Lorg/jdeferred/impl/DefaultDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lorg/jdeferred/android/AndroidDeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs when([Lorg/jdeferred/android/DeferredAsyncTask;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/android/DeferredAsyncTask<",
            "Ljava/lang/Void;",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 104
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 107
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/android/AndroidDeferredManager;->when(Lorg/jdeferred/android/DeferredAsyncTask;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdeferred/android/AndroidDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method
