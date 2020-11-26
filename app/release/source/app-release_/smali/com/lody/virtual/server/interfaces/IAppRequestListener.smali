.class public interface abstract Lcom/lody/virtual/server/interfaces/IAppRequestListener;
.super Ljava/lang/Object;
.source "IAppRequestListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;,
        Lcom/lody/virtual/server/interfaces/IAppRequestListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRequestInstall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestUninstall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
