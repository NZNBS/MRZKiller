.class public final Lcom/lody/virtual/client/stub/DaemonService$InnerService;
.super Landroid/app/Service;
.source "DaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/DaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 69
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/client/stub/DaemonService$InnerService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/stub/DaemonService$InnerService;->stopForeground(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/DaemonService$InnerService;->stopSelf()V

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
