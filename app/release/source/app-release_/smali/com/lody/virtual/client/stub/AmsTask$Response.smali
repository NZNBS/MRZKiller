.class Lcom/lody/virtual/client/stub/AmsTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AmsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/AmsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/stub/AmsTask;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/stub/AmsTask;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/stub/AmsTask;Lcom/lody/virtual/client/stub/AmsTask$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/stub/AmsTask$Response;-><init>(Lcom/lody/virtual/client/stub/AmsTask;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    invoke-static {v0, p1, p2}, Lcom/lody/virtual/client/stub/AmsTask;->access$100(Lcom/lody/virtual/client/stub/AmsTask;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lody/virtual/client/stub/AmsTask;->access$200(Lcom/lody/virtual/client/stub/AmsTask;Ljava/lang/Throwable;)V

    return-void

    .line 160
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/lody/virtual/client/stub/AmsTask;->cancel(Z)Z

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "intent"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    iget-object v1, v1, Lcom/lody/virtual/client/stub/AmsTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    iget-object p1, p1, Lcom/lody/virtual/client/stub/AmsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "retry"

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :try_start_0
    iget-object p1, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    invoke-virtual {p1}, Lcom/lody/virtual/client/stub/AmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/stub/AmsTask$Response;->this$0:Lcom/lody/virtual/client/stub/AmsTask;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/stub/AmsTask;->set(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
