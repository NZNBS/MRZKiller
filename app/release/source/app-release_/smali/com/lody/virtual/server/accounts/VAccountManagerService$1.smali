.class Lcom/lody/virtual/server/accounts/VAccountManagerService$1;
.super Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthToken(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iput-object p8, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    iput-object p10, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$loginOptions:Landroid/os/Bundle;

    iput-boolean p11, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$notifyOnAuthFailure:Z

    iput-boolean p12, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    iput p13, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    iput-object p14, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$callerPkg:Ljava/lang/String;

    invoke-direct/range {p0 .. p7}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_6

    const-string v0, "authtoken"

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v0, "authAccount"

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountType"

    .line 284
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 290
    :cond_0
    iget-boolean v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    if-nez v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 292
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    iget v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    invoke-static {v3, v4, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$200(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v3

    if-nez v3, :cond_2

    .line 294
    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    :cond_1
    new-instance v4, Lcom/lody/virtual/server/accounts/VAccount;

    iget v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v7}, Lcom/lody/virtual/server/accounts/VAccount;-><init>(ILandroid/accounts/Account;)V

    .line 300
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$300(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V

    .line 303
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const-string v0, "android.accounts.expiry"

    const-wide/16 v1, 0x0

    .line 305
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 307
    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$customTokens:Z

    if-eqz v0, :cond_5

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v7, v0

    if-lez v2, :cond_5

    .line 309
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    iget v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$userId:I

    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    iget-object v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$callerPkg:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 310
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$400(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 311
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$400(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-static {v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->access$400(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x5

    const-string v0, "the type and name should not be empty"

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->onError(ILjava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const-string v0, "intent"

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 317
    iget-boolean v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$notifyOnAuthFailure:Z

    .line 321
    :cond_6
    invoke-super {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
