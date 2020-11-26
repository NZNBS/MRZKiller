.class public Lorg/jdeferred/impl/FilteredPromise;
.super Lorg/jdeferred/impl/DeferredObject;
.source "FilteredPromise.java"

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;,
        Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;,
        Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;
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
        "D_OUT:",
        "Ljava/lang/Object;",
        "F_OUT:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/impl/DeferredObject<",
        "TD_OUT;TF_OUT;TP_OUT;>;",
        "Lorg/jdeferred/Promise<",
        "TD_OUT;TF_OUT;TP_OUT;>;"
    }
.end annotation


# static fields
.field protected static final NO_OP_DONE_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

.field protected static final NO_OP_FAIL_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

.field protected static final NO_OP_PROGRESS_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;


# instance fields
.field private final doneFilter:Lorg/jdeferred/DoneFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;"
        }
    .end annotation
.end field

.field private final failFilter:Lorg/jdeferred/FailFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;"
        }
    .end annotation
.end field

.field private final progressFilter:Lorg/jdeferred/ProgressFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/ProgressFilter<",
            "TP;TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

    invoke-direct {v0}, Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;-><init>()V

    sput-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_DONE_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

    .line 29
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

    invoke-direct {v0}, Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;-><init>()V

    sput-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_FAIL_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

    .line 30
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;

    invoke-direct {v0}, Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;-><init>()V

    sput-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_PROGRESS_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;",
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;",
            "Lorg/jdeferred/ProgressFilter<",
            "TP;TP_OUT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    if-nez p2, :cond_0

    .line 37
    sget-object p2, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_DONE_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

    :cond_0
    iput-object p2, p0, Lorg/jdeferred/impl/FilteredPromise;->doneFilter:Lorg/jdeferred/DoneFilter;

    if-nez p3, :cond_1

    .line 38
    sget-object p3, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_FAIL_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

    :cond_1
    iput-object p3, p0, Lorg/jdeferred/impl/FilteredPromise;->failFilter:Lorg/jdeferred/FailFilter;

    if-nez p4, :cond_2

    .line 39
    sget-object p4, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_PROGRESS_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;

    :cond_2
    iput-object p4, p0, Lorg/jdeferred/impl/FilteredPromise;->progressFilter:Lorg/jdeferred/ProgressFilter;

    .line 41
    new-instance p2, Lorg/jdeferred/impl/FilteredPromise$3;

    invoke-direct {p2, p0}, Lorg/jdeferred/impl/FilteredPromise$3;-><init>(Lorg/jdeferred/impl/FilteredPromise;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lorg/jdeferred/impl/FilteredPromise$2;

    invoke-direct {p2, p0}, Lorg/jdeferred/impl/FilteredPromise$2;-><init>(Lorg/jdeferred/impl/FilteredPromise;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lorg/jdeferred/impl/FilteredPromise$1;

    invoke-direct {p2, p0}, Lorg/jdeferred/impl/FilteredPromise$1;-><init>(Lorg/jdeferred/impl/FilteredPromise;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    return-void
.end method

.method static synthetic access$000(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/ProgressFilter;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/jdeferred/impl/FilteredPromise;->progressFilter:Lorg/jdeferred/ProgressFilter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/FailFilter;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/jdeferred/impl/FilteredPromise;->failFilter:Lorg/jdeferred/FailFilter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/DoneFilter;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/jdeferred/impl/FilteredPromise;->doneFilter:Lorg/jdeferred/DoneFilter;

    return-object p0
.end method
