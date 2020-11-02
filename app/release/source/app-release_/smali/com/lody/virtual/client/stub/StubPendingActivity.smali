.class public Lcom/lody/virtual/client/stub/StubPendingActivity;
.super Landroid/app/Activity;
.source "StubPendingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubPendingActivity;->finish()V

    .line 20
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubPendingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/lody/virtual/remote/StubActivityRecord;

    invoke-direct {v0, p1}, Lcom/lody/virtual/remote/StubActivityRecord;-><init>(Landroid/content/Intent;)V

    .line 22
    iget-object p1, v0, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p1, v0, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object p1

    iget-object v1, v0, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    iget v0, v0, Lcom/lody/virtual/remote/StubActivityRecord;->userId:I

    invoke-virtual {p1, v1, v0}, Lcom/lody/virtual/client/ipc/VActivityManager;->startActivity(Landroid/content/Intent;I)I

    return-void
.end method
