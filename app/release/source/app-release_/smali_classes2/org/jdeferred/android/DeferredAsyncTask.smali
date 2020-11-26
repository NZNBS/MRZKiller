.class public abstract Lorg/jdeferred/android/DeferredAsyncTask;
.super Landroid/os/AsyncTask;
.source "DeferredAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private final deferred:Lorg/jdeferred/impl/DeferredObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/impl/DeferredObject<",
            "TResult;",
            "Ljava/lang/Throwable;",
            "TProgress;>;"
        }
    .end annotation
.end field

.field protected final log:Lorg/slf4j/Logger;

.field private final startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    const-class v0, Lorg/jdeferred/android/DeferredAsyncTask;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->log:Lorg/slf4j/Logger;

    .line 42
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    .line 48
    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    const-class v0, Lorg/jdeferred/android/DeferredAsyncTask;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->log:Lorg/slf4j/Logger;

    .line 42
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    .line 52
    iput-object p1, p0, Lorg/jdeferred/android/DeferredAsyncTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/DeferredAsyncTask;->doInBackgroundSafe([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 87
    iput-object p1, p0, Lorg/jdeferred/android/DeferredAsyncTask;->throwable:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected varargs abstract doInBackgroundSafe([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method protected final notify(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 96
    invoke-virtual {p0, v0}, Lorg/jdeferred/android/DeferredAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final onCancelled()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jdeferred/impl/DeferredObject;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method

.method protected final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p1, v0}, Lorg/jdeferred/impl/DeferredObject;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 67
    iget-object p1, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    invoke-virtual {p1, v0}, Lorg/jdeferred/impl/DeferredObject;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    invoke-virtual {v0, p1}, Lorg/jdeferred/impl/DeferredObject;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    :goto_0
    return-void
.end method

.method protected final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 75
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 78
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->log:Lorg/slf4j/Logger;

    const-string v1, "There were multiple progress values.  Only the first one was used!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/jdeferred/impl/DeferredObject;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jdeferred/impl/DeferredObject;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    :cond_2
    :goto_1
    return-void
.end method

.method public promise()Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TResult;",
            "Ljava/lang/Throwable;",
            "TProgress;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/jdeferred/android/DeferredAsyncTask;->deferred:Lorg/jdeferred/impl/DeferredObject;

    invoke-virtual {v0}, Lorg/jdeferred/impl/DeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method
