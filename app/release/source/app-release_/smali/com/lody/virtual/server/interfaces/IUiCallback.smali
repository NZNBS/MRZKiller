.class public interface abstract Lcom/lody/virtual/server/interfaces/IUiCallback;
.super Ljava/lang/Object;
.source "IUiCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IUiCallback$Stub;,
        Lcom/lody/virtual/server/interfaces/IUiCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppOpened(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOpenFailed(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
