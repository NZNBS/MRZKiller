.class public Lorg/jdeferred/android/AndroidDeferredObject;
.super Lorg/jdeferred/impl/DeferredObject;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;,
        Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/impl/DeferredObject<",
        "TD;TF;TP;>;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_ALWAYS:I = 0x4

.field private static final MESSAGE_POST_DONE:I = 0x1

.field private static final MESSAGE_POST_FAIL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final sHandler:Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;


# instance fields
.field private final defaultAndroidExecutionScope:Lorg/jdeferred/android/AndroidExecutionScope;

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;

    invoke-direct {v0}, Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;-><init>()V

    sput-object v0, Lorg/jdeferred/android/AndroidDeferredObject;->sHandler:Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    invoke-direct {p0, p1, v0}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    .line 40
    const-class v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/android/AndroidDeferredObject;->log:Lorg/slf4j/Logger;

    .line 51
    iput-object p2, p0, Lorg/jdeferred/android/AndroidDeferredObject;->defaultAndroidExecutionScope:Lorg/jdeferred/android/AndroidExecutionScope;

    .line 52
    new-instance p2, Lorg/jdeferred/android/AndroidDeferredObject$3;

    invoke-direct {p2, p0}, Lorg/jdeferred/android/AndroidDeferredObject$3;-><init>(Lorg/jdeferred/android/AndroidDeferredObject;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lorg/jdeferred/android/AndroidDeferredObject$2;

    invoke-direct {p2, p0}, Lorg/jdeferred/android/AndroidDeferredObject$2;-><init>(Lorg/jdeferred/android/AndroidDeferredObject;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lorg/jdeferred/android/AndroidDeferredObject$1;

    invoke-direct {p2, p0}, Lorg/jdeferred/android/AndroidDeferredObject$1;-><init>(Lorg/jdeferred/android/AndroidDeferredObject;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method protected determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;
    .locals 1

    .line 146
    instance-of v0, p1, Lorg/jdeferred/android/AndroidExecutionScopeable;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lorg/jdeferred/android/AndroidExecutionScopeable;

    invoke-interface {p1}, Lorg/jdeferred/android/AndroidExecutionScopeable;->getExecutionScope()Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lorg/jdeferred/android/AndroidDeferredObject;->defaultAndroidExecutionScope:Lorg/jdeferred/android/AndroidExecutionScope;

    :cond_1
    return-object p1
.end method

.method protected executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Callback:",
            "Ljava/lang/Object;",
            ">(ITCallback;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;TP;)V"
        }
    .end annotation

    .line 138
    sget-object v0, Lorg/jdeferred/android/AndroidDeferredObject;->sHandler:Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;

    new-instance v8, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;-><init>(Lorg/jdeferred/Deferred;Ljava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v8}, Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/AlwaysCallback<",
            "TD;TF;>;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 129
    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jdeferred/impl/DeferredObject;->triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 101
    sget-object v5, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/impl/DeferredObject;->triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;TF;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x3

    .line 110
    sget-object v5, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/impl/DeferredObject;->triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected triggerProgress(Lorg/jdeferred/ProgressCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;TP;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x2

    .line 119
    sget-object v5, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/impl/DeferredObject;->triggerProgress(Lorg/jdeferred/ProgressCallback;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
