.class public Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameSharedAccountAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getPreviousName;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameAccount;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeSharedAccountAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getSharedAccountsAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addSharedAccountAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthTokenLabel;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$accountAuthenticated;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$confirmCredentialsAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$editProperties;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$updateCredentials;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccountAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccount;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthToken;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$updateAppPermission;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setUserData;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$clearPassword;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setPassword;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setAuthToken;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$peekAuthToken;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$invalidateAuthToken;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$copyAccountToUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccountExplicitly;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccountAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccount;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccountExplicitly;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsByFeatures;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$hasFeatures;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsAsUser;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsByTypeForPackage;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsForPackage;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccounts;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthenticatorTypes;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getUserData;,
        Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getPassword;
    }
.end annotation


# static fields
.field private static Mgr:Lcom/lody/virtual/client/ipc/VAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Lcom/lody/virtual/client/ipc/VAccountManager;->get()Lcom/lody/virtual/client/ipc/VAccountManager;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->Mgr:Lcom/lody/virtual/client/ipc/VAccountManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    sget-object v0, Lmirror/android/accounts/IAccountManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "account"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500()Lcom/lody/virtual/client/ipc/VAccountManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->Mgr:Lcom/lody/virtual/client/ipc/VAccountManager;

    return-object v0
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 30
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getPassword;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getPassword;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 31
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getUserData;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getUserData;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthenticatorTypes;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthenticatorTypes;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccounts;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccounts;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsForPackage;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsForPackage;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsByTypeForPackage;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsByTypeForPackage;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$hasFeatures;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$hasFeatures;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsByFeatures;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAccountsByFeatures;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccountExplicitly;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccountExplicitly;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccount;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 41
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccountExplicitly;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeAccountExplicitly;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$copyAccountToUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$copyAccountToUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$invalidateAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$invalidateAuthToken;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$peekAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$peekAuthToken;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 46
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setAuthToken;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 47
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setPassword;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setPassword;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$clearPassword;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$clearPassword;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setUserData;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$setUserData;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 50
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$updateAppPermission;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$updateAppPermission;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 51
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthToken;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthToken;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 52
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccount;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 53
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 54
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$updateCredentials;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$updateCredentials;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 55
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$editProperties;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$editProperties;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 56
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$confirmCredentialsAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$confirmCredentialsAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 57
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$accountAuthenticated;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$accountAuthenticated;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 58
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthTokenLabel;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getAuthTokenLabel;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 59
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addSharedAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$addSharedAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 60
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getSharedAccountsAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getSharedAccountsAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 61
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeSharedAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$removeSharedAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 62
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameAccount;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 63
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getPreviousName;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$getPreviousName;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 64
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameSharedAccountAsUser;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$renameSharedAccountAsUser;-><init>(Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
