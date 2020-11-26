.class public Lcom/lody/virtual/server/accounts/VAccountManagerService;
.super Lcom/lody/virtual/server/IAccountManager$Stub;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;,
        Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;
    }
.end annotation


# static fields
.field private static final CHECK_IN_TIME:J = 0x2932e00L

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountsByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/lody/virtual/server/accounts/VAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field private final authTokenRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

.field private lastAccountChangeTime:J

.field private mContext:Landroid/content/Context;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    const-class v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/lody/virtual/server/IAccountManager$Stub;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 73
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Lcom/lody/virtual/server/accounts/VAccountManagerService$1;)V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    .line 74
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/lody/virtual/server/accounts/VAccountManagerService;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    return-void
.end method

.method static synthetic access$400(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedList;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lody/virtual/server/accounts/VAccountManagerService;ILandroid/accounts/Account;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->removeAccountInternal(ILandroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lody/virtual/server/accounts/VAccountManagerService;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private broadcastCheckInNowIfNeed(I)V
    .locals 7

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 888
    iget-wide v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 889
    iput-wide v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    .line 890
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 891
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN_NOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    new-instance v2, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v2, p1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    :cond_0
    return-void
.end method

.method private generateServicesMap(Ljava/util/List;Ljava/util/Map;Lcom/lody/virtual/server/accounts/RegisteredServicesParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;",
            ">;",
            "Lcom/lody/virtual/server/accounts/RegisteredServicesParser;",
            ")V"
        }
    .end annotation

    .line 1001
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1002
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.accounts.AccountAuthenticator"

    invoke-virtual {p3, v1, v2, v3}, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;->getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1006
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1008
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "account-authenticator"

    .line 1011
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1013
    invoke-virtual {p3, v1, v3}, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1012
    invoke-static {v1, v3, v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    new-instance v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, p0, v1, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1020
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static get()Lcom/lody/virtual/server/accounts/VAccountManagerService;
    .locals 1

    .line 79
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;

    return-object v0
.end method

.method private getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;
    .locals 1

    .line 849
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    return-object p1
.end method

.method private getAccount(ILjava/lang/String;Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccount;
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 978
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/accounts/VAccount;

    .line 979
    iget-object v1, v0, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAccountList(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 175
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/accounts/VAccount;

    if-eqz p2, :cond_1

    .line 179
    iget-object v3, v2, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    :cond_1
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, v2, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iget-object v2, v2, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 843
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 844
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getCustomAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 814
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;-><init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 817
    iget-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter p3

    .line 818
    :try_start_0
    iget-object p4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v1, 0x0

    .line 819
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 820
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 821
    iget-wide v3, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->expiryEpochMillis:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    iget-wide v3, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->expiryEpochMillis:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    .line 822
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 823
    :cond_1
    invoke-virtual {v0, v2}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    iget-object v1, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authToken:Ljava/lang/String;

    goto :goto_0

    .line 827
    :cond_2
    monitor-exit p3

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private insertAccountIntoDatabase(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 857
    :try_start_0
    new-instance v1, Lcom/lody/virtual/server/accounts/VAccount;

    invoke-direct {v1, p1, p2}, Lcom/lody/virtual/server/accounts/VAccount;-><init>(ILandroid/accounts/Account;)V

    .line 858
    iput-object p3, v1, Lcom/lody/virtual/server/accounts/VAccount;->password:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 861
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 862
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 863
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 864
    iget-object v3, v1, Lcom/lody/virtual/server/accounts/VAccount;->userDatas:Ljava/util/Map;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 868
    :cond_2
    iget-object p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_3

    .line 870
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 871
    iget-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 873
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 875
    iget p1, v1, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    const/4 p1, 0x1

    .line 876
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 877
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 833
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 837
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static parseAuthenticatorDescription(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 8

    .line 91
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 93
    :try_start_0
    sget-object p2, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_accountType:Lmirror/RefStaticInt;

    invoke-virtual {p2}, Lmirror/RefStaticInt;->get()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    sget-object p2, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_label:Lmirror/RefStaticInt;

    invoke-virtual {p2}, Lmirror/RefStaticInt;->get()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 95
    sget-object p2, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_icon:Lmirror/RefStaticInt;

    invoke-virtual {p2}, Lmirror/RefStaticInt;->get()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 96
    sget-object p2, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_smallIcon:Lmirror/RefStaticInt;

    invoke-virtual {p2}, Lmirror/RefStaticInt;->get()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 97
    sget-object p2, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_accountPreferences:Lmirror/RefStaticInt;

    invoke-virtual {p2}, Lmirror/RefStaticInt;->get()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 98
    sget-object p2, Lmirror/com/android/internal/R_Hide$styleable;->AccountAuthenticator_customTokens:Lmirror/RefStaticInt;

    invoke-virtual {p2}, Lmirror/RefStaticInt;->get()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    .line 102
    :cond_0
    :try_start_1
    new-instance p2, Landroid/accounts/AuthenticatorDescription;

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    throw p1
.end method

.method private readAllAccounts()V
    .locals 9

    .line 929
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getAccountConfigFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 930
    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->refreshAuthenticatorCache(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 932
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 935
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [B

    .line 937
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 938
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-ne v4, v0, :cond_3

    .line 942
    invoke-virtual {v1, v3, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 943
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_2

    .line 948
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccount;

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/accounts/VAccount;-><init>(Landroid/os/Parcel;)V

    .line 949
    sget-object v6, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading account : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    iget-object v6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v6, v6, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    iget-object v7, v0, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    if-eqz v6, :cond_1

    .line 952
    iget-object v6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    iget v7, v0, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_0

    .line 954
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 955
    iget-object v7, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    iget v8, v0, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 957
    :cond_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    .line 962
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    if-eqz v3, :cond_4

    .line 964
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    goto :goto_2

    .line 940
    :cond_3
    new-instance v3, Ljava/io/IOException;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Expect length %d, but got %d."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 967
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw v0

    :cond_5
    :goto_4
    return-void
.end method

.method private removeAccountInternal(ILandroid/accounts/Account;)Z
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 711
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 712
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/accounts/VAccount;

    .line 714
    iget v2, v1, Lcom/lody/virtual/server/accounts/VAccount;->userId:I

    if-ne p1, v2, :cond_0

    iget-object v2, v1, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 715
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    .line 716
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 718
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 719
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private renameAccountInternal(ILandroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 779
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 781
    iget-object v2, v1, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/lody/virtual/server/accounts/VAccount;->previousName:Ljava/lang/String;

    .line 782
    iput-object p3, v1, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    .line 783
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 784
    new-instance p3, Landroid/accounts/Account;

    iget-object v2, v1, Lcom/lody/virtual/server/accounts/VAccount;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-direct {p3, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 786
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 787
    iget v4, v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v4, p1, :cond_0

    iget-object v4, v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    iput-object p3, v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    goto :goto_0

    .line 791
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :try_start_2
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 793
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p3

    :catchall_0
    move-exception p1

    .line 791
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 795
    :cond_2
    monitor-exit v0

    return-object p2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private saveAllAccounts()V
    .locals 6

    .line 900
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getAccountConfigFile()Ljava/io/File;

    move-result-object v0

    .line 901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x1

    .line 903
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 905
    :goto_0
    iget-object v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 906
    iget-object v5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    .line 908
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 911
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/server/accounts/VAccount;

    .line 913
    invoke-virtual {v4, v1, v3}, Lcom/lody/virtual/server/accounts/VAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 915
    :cond_2
    iget-wide v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->lastAccountChangeTime:J

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 916
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 918
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 920
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 922
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3

    .line 881
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    new-instance v2, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v2, p1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    .line 883
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->broadcastCheckInNowIfNeed(I)V

    return-void
.end method

.method private setPasswordInternal(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 335
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 337
    iput-object p3, v1, Lcom/lody/virtual/server/accounts/VAccount;->password:Ljava/lang/String;

    .line 338
    iget-object p3, v1, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 339
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 340
    iget-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    :try_start_1
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 344
    iget v3, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v3, p1, :cond_0

    iget-object v2, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 348
    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :try_start_2
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 348
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 351
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static systemReady()V
    .locals 2

    .line 83
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;-><init>()V

    .line 84
    invoke-direct {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->readAllAccounts()V

    .line 85
    sget-object v1, Lcom/lody/virtual/server/accounts/VAccountManagerService;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accountAuthenticated(ILandroid/accounts/Account;)Z
    .locals 3

    if-eqz p2, :cond_1

    .line 733
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 734
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/lody/virtual/server/accounts/VAccount;->lastAuthenticatedTime:J

    .line 737
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    const/4 p1, 0x1

    .line 738
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 740
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 741
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 731
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAccount(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p0

    if-eqz v0, :cond_2

    if-eqz v14, :cond_1

    .line 590
    invoke-direct {v15, v14}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x7

    :try_start_0
    const-string v2, "account.type does not exist"

    .line 593
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 599
    :cond_0
    new-instance v16, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v6, p6

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p7

    move-object/from16 v14, p3

    invoke-direct/range {v1 .. v14}, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {v16 .. v16}, Lcom/lody/virtual/server/accounts/VAccountManagerService$7;->bind()V

    return-void

    .line 589
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountExplicitly(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 624
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->insertAccountIntoDatabase(ILandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 623
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearPassword(ILandroid/accounts/Account;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->setPasswordInternal(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-void

    .line 704
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public confirmCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    if-eqz v0, :cond_2

    if-eqz v11, :cond_1

    .line 564
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v13, p0

    invoke-direct {p0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x7

    :try_start_0
    const-string v2, "account.type does not exist"

    .line 567
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 569
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 573
    :cond_0
    new-instance v14, Lcom/lody/virtual/server/accounts/VAccountManagerService$6;

    const/4 v7, 0x1

    iget-object v8, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/lody/virtual/server/accounts/VAccountManagerService$6;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 580
    invoke-virtual {v14}, Lcom/lody/virtual/server/accounts/VAccountManagerService$6;->bind()V

    return-void

    :cond_1
    move-object v13, p0

    .line 563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v13, p0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public editProperties(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 10

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 499
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p1, 0x7

    :try_start_0
    const-string p3, "account.type does not exist"

    .line 502
    invoke-interface {p2, p1, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 504
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 508
    :cond_0
    new-instance v9, Lcom/lody/virtual/server/accounts/VAccountManagerService$4;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v5, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService$4;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v9}, Lcom/lody/virtual/server/accounts/VAccountManagerService$4;->bind()V

    return-void

    .line 498
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccountList(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/accounts/Account;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    return-object p1
.end method

.method public getAccountsByFeatures(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 127
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    const-string v0, "accounts"

    if-nez v4, :cond_0

    .line 129
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x0

    new-array p3, p3, [Landroid/accounts/Account;

    .line 130
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 132
    :try_start_0
    invoke-interface {p2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_2

    .line 139
    array-length v1, p4

    if-nez v1, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    new-instance p3, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;[Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V

    goto :goto_2

    .line 140
    :cond_2
    :goto_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 141
    invoke-virtual {p0, p1, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 143
    :try_start_1
    invoke-interface {p2, p4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 145
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void

    .line 126
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAuthToken(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 18

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-nez v9, :cond_0

    .line 205
    :try_start_0
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    const-string v4, "getAuthToken called with null account"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "account is null"

    .line 206
    invoke-interface {v3, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-nez v10, :cond_1

    .line 210
    sget-object v0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    const-string v4, "getAuthToken called with null authTokenType"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "authTokenType is null"

    .line 211
    invoke-interface {v3, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 215
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    .line 218
    :cond_1
    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v15, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    if-nez v5, :cond_2

    :try_start_1
    const-string v0, "account.type does not exist"

    .line 221
    invoke-interface {v3, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    const-string v1, "androidPackageName"

    .line 228
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 229
    iget-object v1, v5, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-boolean v13, v1, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    const-string v1, "callerUid"

    .line 231
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callerPid"

    .line 232
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p5, :cond_3

    const-string v1, "notifyOnAuthFailure"

    const/4 v2, 0x1

    .line 234
    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-nez v13, :cond_5

    .line 238
    iget-object v1, v15, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 239
    :try_start_2
    invoke-direct {v15, v0, v9}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object v2

    .line 240
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 241
    iget-object v1, v2, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authtoken"

    .line 244
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authAccount"

    .line 245
    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountType"

    .line 246
    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {v15, v3, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    .line 240
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    if-eqz v13, :cond_6

    .line 252
    invoke-direct {v15, v0, v9, v10, v14}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getCustomAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authtoken"

    .line 255
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authAccount"

    .line 256
    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountType"

    .line 257
    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {v15, v3, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 262
    :cond_6
    new-instance v16, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;

    const/4 v7, 0x0

    iget-object v8, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v6, p6

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move/from16 v12, p5

    move-object/from16 v17, v14

    move/from16 v14, p1

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/String;)V

    .line 323
    invoke-virtual/range {v16 .. v16}, Lcom/lody/virtual/server/accounts/VAccountManagerService$1;->bind()V

    return-void

    .line 201
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthTokenLabel(ILandroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 531
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p1, 0x7

    :try_start_0
    const-string p3, "account.type does not exist"

    .line 534
    invoke-interface {p2, p1, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 536
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance p3, Lcom/lody/virtual/server/accounts/VAccountManagerService$5;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/accounts/VAccountManagerService$5;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService$5;->bind()V

    return-void

    .line 530
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authTokenType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 4

    .line 112
    iget-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    monitor-enter p1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/AuthenticatorDescription;

    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v2, v2, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    .line 116
    iget-object v3, v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPassword(ILandroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 472
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 473
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 475
    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VAccount;->password:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 477
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 471
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPreviousName(ILandroid/accounts/Account;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object v1, p1, Lcom/lody/virtual/server/accounts/VAccount;->previousName:Ljava/lang/String;

    .line 161
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 154
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUserData(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 485
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 486
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VAccount;->userDatas:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 490
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 484
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFeatures(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 11

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 389
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x7

    :try_start_0
    const-string p3, "account.type does not exist"

    .line 392
    invoke-interface {p2, p1, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 398
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$2;->bind()V

    return-void

    .line 388
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "features is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidateAuthToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 748
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 752
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/accounts/VAccount;

    .line 753
    iget-object v4, v3, Lcom/lody/virtual/server/accounts/VAccount;->type:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    iget-object v2, v3, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 759
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 762
    :cond_2
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 763
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->authTokenRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 764
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 765
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 766
    iget v4, v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v4, p1, :cond_3

    invoke-static {v3}, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->access$700(Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authToken:Ljava/lang/String;

    .line 767
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 771
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 771
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 772
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 747
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authToken is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 746
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    throw p1
.end method

.method public peekAuthToken(ILandroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 803
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 804
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 806
    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 808
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 809
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 802
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authTokenType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 801
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public refreshAuthenticatorCache(Ljava/lang/String;)V
    .locals 4

    .line 989
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    :cond_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->cache:Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;

    iget-object v0, v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorCache;->authenticators:Ljava/util/Map;

    new-instance v1, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;

    invoke-direct {v1}, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;-><init>()V

    .line 994
    invoke-direct {p0, p1, v0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->generateServicesMap(Ljava/util/List;Ljava/util/Map;Lcom/lody/virtual/server/accounts/RegisteredServicesParser;)V

    return-void
.end method

.method public removeAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 11

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 651
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 p1, 0x7

    :try_start_0
    const-string p3, "account.type does not exist"

    .line 654
    invoke-interface {p2, p1, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 656
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 662
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/accounts/VAccountManagerService$8;

    const/4 v7, 0x1

    iget-object v8, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move v6, p4

    move-object v9, p3

    move v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/lody/virtual/server/accounts/VAccountManagerService$8;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;I)V

    .line 698
    invoke-virtual {v0}, Lcom/lody/virtual/server/accounts/VAccountManagerService$8;->bind()V

    return-void

    .line 650
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 649
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAccountExplicitly(ILandroid/accounts/Account;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 629
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->removeAccountInternal(ILandroid/accounts/Account;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public renameAccount(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 635
    invoke-direct {p0, p1, p3, p4}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->renameAccountInternal(ILandroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    .line 636
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 637
    iget-object p4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v0, "authAccount"

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p4, "accountType"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :try_start_0
    invoke-interface {p2, p3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 642
    sget-object p2, Lcom/lody/virtual/server/accounts/VAccountManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 634
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthToken(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 358
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VAccount;->authTokens:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 365
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authTokenType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPassword(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->setPasswordInternal(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserData(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAccount(ILandroid/accounts/Account;)Lcom/lody/virtual/server/accounts/VAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 375
    iget-object p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService;->accountsByUserId:Landroid/util/SparseArray;

    monitor-enter p2

    .line 376
    :try_start_0
    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VAccount;->userDatas:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-direct {p0}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->saveAllAccounts()V

    .line 378
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateCredentials(ILandroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    if-eqz v0, :cond_3

    if-eqz v9, :cond_2

    if-eqz p4, :cond_1

    .line 441
    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v12, p0

    invoke-direct {p0, v1}, Lcom/lody/virtual/server/accounts/VAccountManagerService;->getAuthenticatorInfo(Ljava/lang/String;)Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x7

    :try_start_0
    const-string v2, "account.type does not exist"

    .line 444
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v13, Lcom/lody/virtual/server/accounts/VAccountManagerService$3;

    const/4 v7, 0x0

    iget-object v8, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p2

    move v4, p1

    move/from16 v6, p5

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/lody/virtual/server/accounts/VAccountManagerService$3;-><init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;ZZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 466
    invoke-virtual {v13}, Lcom/lody/virtual/server/accounts/VAccountManagerService$3;->bind()V

    return-void

    :cond_1
    move-object v12, p0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, p0

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v12, p0

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
