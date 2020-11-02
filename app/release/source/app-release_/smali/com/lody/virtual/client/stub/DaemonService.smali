.class public Lcom/lody/virtual/client/stub/DaemonService;
.super Landroid/app/Service;
.source "DaemonService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/stub/DaemonService$InnerService;
    }
.end annotation


# static fields
.field private static final NOTIFY_ID:I = 0x3e9

.field static showNotification:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static startup(Landroid/content/Context;)V
    .locals 3

    .line 27
    sget-object v0, Lcom/lody/virtual/client/env/Constants;->NO_NOTIFICATION_FLAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/lody/virtual/client/stub/DaemonService;->showNotification:Z

    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lody/virtual/client/stub/DaemonService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {p0}, Lcom/lody/virtual/client/stub/DaemonJobService;->scheduleJob(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    sget-boolean v0, Lcom/lody/virtual/client/stub/DaemonService;->showNotification:Z

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lody/virtual/client/stub/DaemonService$InnerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/stub/DaemonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v0, 0x3e9

    .line 57
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/stub/DaemonService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    invoke-static {p0}, Lcom/lody/virtual/client/stub/DaemonService;->startup(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
