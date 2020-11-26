.class public Lcom/lody/virtual/client/stub/StubPendingService;
.super Landroid/app/Service;
.source "StubPendingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
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
    .locals 1

    if-eqz p1, :cond_0

    const-string p2, "_VA_|_intent_"

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const/4 p3, 0x0

    const-string v0, "_VA_|_user_id_"

    .line 25
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p2, :cond_0

    .line 27
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2, v0, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->startService(Landroid/os/IInterface;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubPendingService;->stopSelf()V

    const/4 p1, 0x2

    return p1
.end method
