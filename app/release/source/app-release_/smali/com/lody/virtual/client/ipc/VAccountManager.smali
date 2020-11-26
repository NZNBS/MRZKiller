.class public Lcom/lody/virtual/client/ipc/VAccountManager;
.super Ljava/lang/Object;
.source "VAccountManager.java"


# static fields
.field private static sMgr:Lcom/lody/virtual/client/ipc/VAccountManager;


# instance fields
.field private mRemote:Lcom/lody/virtual/server/IAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/lody/virtual/client/ipc/VAccountManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/ipc/VAccountManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/ipc/VAccountManager;->sMgr:Lcom/lody/virtual/client/ipc/VAccountManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/client/ipc/VAccountManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/lody/virtual/client/ipc/VAccountManager;->sMgr:Lcom/lody/virtual/client/ipc/VAccountManager;

    return-object v0
.end method

.method private getStubInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "account"

    .line 48
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/server/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 2

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IAccountManager;->accountAuthenticated(ILandroid/accounts/Account;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 127
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public addAccount(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    if-eqz p2, :cond_1

    .line 275
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "androidPackageName"

    const-string v1, "android"

    .line 279
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v11, Lcom/lody/virtual/client/ipc/VAccountManager$1;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p7

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/lody/virtual/client/ipc/VAccountManager$1;-><init>(Lcom/lody/virtual/client/ipc/VAccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 287
    invoke-virtual {v11}, Lcom/lody/virtual/client/ipc/VAccountManager$1;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0

    .line 274
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/server/IAccountManager;->addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/server/IAccountManager;->addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->addAccountExplicitly(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 2

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IAccountManager;->clearPassword(ILandroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 6

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/lody/virtual/server/IAccountManager;->confirmCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 2

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->editProperties(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAccountManager;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 2

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IAccountManager;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->getAccountsByFeatures(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 8

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/lody/virtual/server/IAccountManager;->getAuthToken(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->getAuthTokenLabel(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 2

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lody/virtual/server/IAccountManager;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/Object;
    .locals 2

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IAccountManager;->getPassword(ILandroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 247
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IAccountManager;->getPreviousName(ILandroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRemote()Lcom/lody/virtual/server/IAccountManager;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VAccountManager;->mRemote:Lcom/lody/virtual/server/IAccountManager;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/lody/virtual/server/IAccountManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    const-class v0, Lcom/lody/virtual/client/ipc/VAccountManager;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getStubInterface()Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-class v2, Lcom/lody/virtual/server/IAccountManager;

    invoke-static {v2, v1}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/IAccountManager;

    iput-object v1, p0, Lcom/lody/virtual/client/ipc/VAccountManager;->mRemote:Lcom/lody/virtual/server/IAccountManager;

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/VAccountManager;->mRemote:Lcom/lody/virtual/server/IAccountManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/server/IAccountManager;->getUserData(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 255
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 2

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->hasFeatures(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/server/IAccountManager;->invalidateAuthToken(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/server/IAccountManager;->peekAuthToken(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 2

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->removeAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 2

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lody/virtual/server/IAccountManager;->removeAccountExplicitly(ILandroid/accounts/Account;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 183
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->renameAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->setAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/lody/virtual/server/IAccountManager;->setPassword(ILandroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/lody/virtual/server/IAccountManager;->setUserData(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 7

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/ipc/VAccountManager;->getRemote()Lcom/lody/virtual/server/IAccountManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/lody/virtual/server/IAccountManager;->updateCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
