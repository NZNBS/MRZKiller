.class public Lcom/lody/virtual/server/accounts/VContentService;
.super Ljava/lang/Object;
.source "VContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;
    }
.end annotation


# instance fields
.field private final mAppSyncAdapterInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;",
            "Lcom/lody/virtual/server/accounts/VSyncRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VContentService;->mRecords:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VContentService;->mAppSyncAdapterInfos:Ljava/util/Map;

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
            "Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;",
            ">;",
            "Lcom/lody/virtual/server/accounts/RegisteredServicesParser;",
            ")V"
        }
    .end annotation

    .line 133
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

    .line 134
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VContentService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.content.SyncAdapter"

    invoke-virtual {p3, v1, v2, v3}, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;->getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 139
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "sync-adapter"

    .line 142
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VContentService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 144
    invoke-virtual {p3, v1, v3}, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;->getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    invoke-direct {p0, v1, v2}, Lcom/lody/virtual/server/accounts/VContentService;->parseSyncAdapterType(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, p0, v1, v0}, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;-><init>(Lcom/lody/virtual/server/accounts/VContentService;Landroid/content/SyncAdapterType;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isAccountExist(ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/lody/virtual/server/accounts/VContentService;->mAppSyncAdapterInfos:Ljava/util/Map;

    monitor-enter p1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VContentService;->mAppSyncAdapterInfos:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;

    if-eqz p2, :cond_0

    .line 111
    invoke-static {}, Lcom/lody/virtual/server/pm/VAppManagerService;->get()Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object p3

    iget-object p2, p2, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/lody/virtual/server/pm/VAppManagerService;->isAppInstalled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 112
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private parseSyncAdapterType(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/SyncAdapterType;
    .locals 17

    .line 158
    sget-object v0, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    :try_start_0
    sget-object v2, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_contentAuthority:Lmirror/RefStaticInt;

    invoke-virtual {v2}, Lmirror/RefStaticInt;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    sget-object v3, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_accountType:Lmirror/RefStaticInt;

    invoke-virtual {v3}, Lmirror/RefStaticInt;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 166
    :cond_0
    sget-object v4, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_userVisible:Lmirror/RefStaticInt;

    invoke-virtual {v4}, Lmirror/RefStaticInt;->get()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 167
    sget-object v6, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_supportsUploading:Lmirror/RefStaticInt;

    invoke-virtual {v6}, Lmirror/RefStaticInt;->get()I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 168
    sget-object v7, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_isAlwaysSyncable:Lmirror/RefStaticInt;

    invoke-virtual {v7}, Lmirror/RefStaticInt;->get()I

    move-result v7

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 169
    sget-object v8, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_allowParallelSyncs:Lmirror/RefStaticInt;

    invoke-virtual {v8}, Lmirror/RefStaticInt;->get()I

    move-result v8

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 170
    sget-object v9, Lmirror/com/android/internal/R_Hide$styleable;->SyncAdapter_settingsActivity:Lmirror/RefStaticInt;

    invoke-virtual {v9}, Lmirror/RefStaticInt;->get()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 172
    sget-object v10, Lmirror/android/content/SyncAdapterTypeN;->ctor:Lmirror/RefConstructor;

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x0

    if-eqz v10, :cond_1

    .line 173
    sget-object v10, Lmirror/android/content/SyncAdapterTypeN;->ctor:Lmirror/RefConstructor;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v16

    aput-object v3, v1, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v12

    aput-object v9, v1, v11

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v10, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 177
    :cond_1
    sget-object v1, Lmirror/android/content/SyncAdapterType;->ctor:Lmirror/RefConstructor;

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v16

    aput-object v3, v10, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v15

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v14

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v13

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v12

    aput-object v9, v10, v11

    invoke-virtual {v1, v10}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 178
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 163
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 1

    .line 116
    new-instance v0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;

    invoke-direct {v0, p1, p2}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/lody/virtual/server/accounts/VContentService;->mRecords:Landroid/util/SparseArray;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object p2, p0, Lcom/lody/virtual/server/accounts/VContentService;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const/4 p3, -0x1

    if-nez p2, :cond_0

    .line 120
    monitor-exit p1

    return p3

    .line 122
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/accounts/VSyncRecord;

    if-nez p2, :cond_1

    .line 124
    monitor-exit p1

    return p3

    .line 126
    :cond_1
    iget p2, p2, Lcom/lody/virtual/server/accounts/VSyncRecord;->syncable:I

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 127
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public refreshServiceCache(Ljava/lang/String;)V
    .locals 4

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.SyncAdapter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    invoke-static {}, Lcom/lody/virtual/server/pm/VPackageManagerService;->get()Lcom/lody/virtual/server/pm/VPackageManagerService;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/lody/virtual/server/pm/VPackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VContentService;->mAppSyncAdapterInfos:Ljava/util/Map;

    new-instance v1, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;

    invoke-direct {v1}, Lcom/lody/virtual/server/accounts/RegisteredServicesParser;-><init>()V

    .line 57
    invoke-direct {p0, p1, v0, v1}, Lcom/lody/virtual/server/accounts/VContentService;->generateServicesMap(Ljava/util/List;Ljava/util/Map;Lcom/lody/virtual/server/accounts/RegisteredServicesParser;)V

    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .locals 10

    .line 67
    sget-object v0, Lmirror/android/content/SyncRequest;->mAccountToSync:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 68
    sget-object v1, Lmirror/android/content/SyncRequest;->mAuthority:Lmirror/RefObject;

    invoke-virtual {v1, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    sget-object v2, Lmirror/android/content/SyncRequest;->mExtras:Lmirror/RefObject;

    invoke-virtual {v2, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 70
    sget-object v3, Lmirror/android/content/SyncRequest;->mIsPeriodic:Lmirror/RefBoolean;

    invoke-virtual {v3, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v3

    .line 71
    sget-object v4, Lmirror/android/content/SyncRequest;->mSyncRunTimeSecs:Lmirror/RefLong;

    invoke-virtual {v4, p1}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v4

    .line 72
    invoke-direct {p0, p2, v0, v1}, Lcom/lody/virtual/server/accounts/VContentService;->isAccountExist(ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;

    invoke-direct {p1, v0, v1}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 76
    new-instance v6, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;

    invoke-direct {v6, v2}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;-><init>(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v0, v1, p2}, Lcom/lody/virtual/server/accounts/VContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v2

    .line 78
    iget-object v7, p0, Lcom/lody/virtual/server/accounts/VContentService;->mRecords:Landroid/util/SparseArray;

    monitor-enter v7

    .line 79
    :try_start_0
    iget-object v8, p0, Lcom/lody/virtual/server/accounts/VContentService;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_1

    .line 81
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget-object v9, p0, Lcom/lody/virtual/server/accounts/VContentService;->mRecords:Landroid/util/SparseArray;

    invoke-virtual {v9, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    :cond_1
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lody/virtual/server/accounts/VSyncRecord;

    if-nez v9, :cond_2

    .line 86
    new-instance v9, Lcom/lody/virtual/server/accounts/VSyncRecord;

    invoke-direct {v9, p2, v0, v1}, Lcom/lody/virtual/server/accounts/VSyncRecord;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 87
    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-gez v2, :cond_3

    .line 91
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "initialize"

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object p2, v9, Lcom/lody/virtual/server/accounts/VSyncRecord;->extras:Ljava/util/List;

    new-instance v0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;

    invoke-direct {v0, p1}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v3, :cond_4

    .line 96
    new-instance p1, Lcom/lody/virtual/server/accounts/VSyncRecord$PeriodicSyncConfig;

    invoke-direct {p1, v4, v5}, Lcom/lody/virtual/server/accounts/VSyncRecord$PeriodicSyncConfig;-><init>(J)V

    .line 97
    iget-object p2, v9, Lcom/lody/virtual/server/accounts/VSyncRecord;->configs:Ljava/util/Map;

    invoke-interface {p2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_4
    iget-object p1, v9, Lcom/lody/virtual/server/accounts/VSyncRecord;->extras:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
