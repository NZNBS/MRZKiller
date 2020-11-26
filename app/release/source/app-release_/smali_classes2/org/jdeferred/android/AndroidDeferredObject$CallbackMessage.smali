.class Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;
.super Ljava/lang/Object;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/android/AndroidDeferredObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallback;"
        }
    .end annotation
.end field

.field final deferred:Lorg/jdeferred/Deferred;

.field final progress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field final rejected:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field final resolved:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final state:Lorg/jdeferred/Promise$State;


# direct methods
.method constructor <init>(Lorg/jdeferred/Deferred;Ljava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Deferred;",
            "TCallback;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;TP;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->deferred:Lorg/jdeferred/Deferred;

    .line 164
    iput-object p2, p0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    .line 165
    iput-object p3, p0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->state:Lorg/jdeferred/Promise$State;

    .line 166
    iput-object p4, p0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->resolved:Ljava/lang/Object;

    .line 167
    iput-object p5, p0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->rejected:Ljava/lang/Object;

    .line 168
    iput-object p6, p0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->progress:Ljava/lang/Object;

    return-void
.end method
