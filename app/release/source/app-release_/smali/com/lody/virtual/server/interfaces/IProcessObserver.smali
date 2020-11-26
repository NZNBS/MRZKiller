.class public interface abstract Lcom/lody/virtual/server/interfaces/IProcessObserver;
.super Ljava/lang/Object;
.source "IProcessObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IProcessObserver$Stub;,
        Lcom/lody/virtual/server/interfaces/IProcessObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onProcessCreated(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessDied(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
