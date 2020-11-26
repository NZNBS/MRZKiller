.class Lorg/jdeferred/android/AndroidDeferredObject$3;
.super Ljava/lang/Object;
.source "AndroidDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V
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
.field final synthetic this$0:Lorg/jdeferred/android/AndroidDeferredObject;


# direct methods
.method constructor <init>(Lorg/jdeferred/android/AndroidDeferredObject;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/jdeferred/android/AndroidDeferredObject$3;->this$0:Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/jdeferred/android/AndroidDeferredObject$3;->this$0:Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-virtual {v0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    return-void
.end method
