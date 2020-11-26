.class public interface abstract Lcom/lody/virtual/server/interfaces/IIntentFilterObserver;
.super Ljava/lang/Object;
.source "IIntentFilterObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Stub;,
        Lcom/lody/virtual/server/interfaces/IIntentFilterObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract filter(Landroid/content/Intent;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallBack()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallBack(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
