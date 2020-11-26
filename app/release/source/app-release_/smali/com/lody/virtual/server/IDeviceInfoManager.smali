.class public interface abstract Lcom/lody/virtual/server/IDeviceInfoManager;
.super Ljava/lang/Object;
.source "IDeviceInfoManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/IDeviceInfoManager$Stub;,
        Lcom/lody/virtual/server/IDeviceInfoManager$Default;
    }
.end annotation


# virtual methods
.method public abstract getDeviceInfo(I)Lcom/lody/virtual/remote/VDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateDeviceInfo(ILcom/lody/virtual/remote/VDeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
