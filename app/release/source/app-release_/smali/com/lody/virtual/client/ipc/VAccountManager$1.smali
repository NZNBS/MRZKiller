.class Lcom/lody/virtual/client/ipc/VAccountManager$1;
.super Lcom/lody/virtual/client/stub/AmsTask;
.source "VAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/ipc/VAccountManager;->addAccount(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/ipc/VAccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/ipc/VAccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->this$0:Lcom/lody/virtual/client/ipc/VAccountManager;

    iput p5, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$userId:I

    iput-object p6, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$accountType:Ljava/lang/String;

    iput-object p7, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$authTokenType:Ljava/lang/String;

    iput-object p8, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p9, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$activity:Landroid/app/Activity;

    iput-object p10, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$optionsIn:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3, p4}, Lcom/lody/virtual/client/stub/AmsTask;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->this$0:Lcom/lody/virtual/client/ipc/VAccountManager;

    iget v1, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$userId:I

    iget-object v2, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v3, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$authTokenType:Ljava/lang/String;

    iget-object v5, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v6, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$activity:Landroid/app/Activity;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/lody/virtual/client/ipc/VAccountManager$1;->val$optionsIn:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/ipc/VAccountManager;->addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method
