.class Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;
.super Landroid/os/Handler;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/android/AndroidDeferredObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;

    .line 80
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast p1, Lorg/jdeferred/AlwaysCallback;

    iget-object v1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->state:Lorg/jdeferred/Promise$State;

    iget-object v2, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->resolved:Ljava/lang/Object;

    iget-object v0, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->rejected:Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v0}, Lorg/jdeferred/AlwaysCallback;->onAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast p1, Lorg/jdeferred/FailCallback;

    iget-object v0, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->rejected:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/jdeferred/FailCallback;->onFail(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast p1, Lorg/jdeferred/ProgressCallback;

    iget-object v0, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->progress:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/jdeferred/ProgressCallback;->onProgress(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast p1, Lorg/jdeferred/DoneCallback;

    iget-object v0, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->resolved:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lorg/jdeferred/DoneCallback;->onDone(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
