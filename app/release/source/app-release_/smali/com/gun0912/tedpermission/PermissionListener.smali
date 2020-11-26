.class public interface abstract Lcom/gun0912/tedpermission/PermissionListener;
.super Ljava/lang/Object;
.source "PermissionListener.java"


# virtual methods
.method public abstract onPermissionDenied(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPermissionGranted()V
.end method
