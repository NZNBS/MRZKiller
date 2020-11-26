.class public Lcom/lody/virtual/server/am/BroadcastSystem;
.super Ljava/lang/Object;
.source "BroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;,
        Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;,
        Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;,
        Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;
    }
.end annotation


# static fields
.field private static final BROADCAST_TIME_OUT:I = 0x2134

.field private static final TAG:Ljava/lang/String; = "BroadcastSystem"

.field private static gDefault:Lcom/lody/virtual/server/am/BroadcastSystem;


# instance fields
.field private final mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;

.field private final mApp:Lcom/lody/virtual/server/pm/VAppManagerService;

.field private final mBroadcastRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScheduler:Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;

.field private final mTimeoutHandler:Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/pm/VAppManagerService;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mApp:Lcom/lody/virtual/server/pm/VAppManagerService;

    .line 62
    iput-object p2, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;

    .line 63
    new-instance p1, Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;-><init>(Lcom/lody/virtual/server/am/BroadcastSystem$1;)V

    iput-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mScheduler:Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;

    .line 64
    new-instance p1, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;

    invoke-direct {p1, p0, p2}, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;-><init>(Lcom/lody/virtual/server/am/BroadcastSystem;Lcom/lody/virtual/server/am/BroadcastSystem$1;)V

    iput-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mTimeoutHandler:Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;

    .line 65
    invoke-direct {p0}, Lcom/lody/virtual/server/am/BroadcastSystem;->fuckHuaWeiVerifier()V

    return-void
.end method

.method static synthetic access$300(Lcom/lody/virtual/server/am/BroadcastSystem;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/lody/virtual/server/am/BroadcastSystem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lody/virtual/server/am/BroadcastSystem;)Lcom/lody/virtual/server/pm/VAppManagerService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mApp:Lcom/lody/virtual/server/pm/VAppManagerService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lody/virtual/server/am/BroadcastSystem;)Lcom/lody/virtual/server/am/VActivityManagerService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mAMS:Lcom/lody/virtual/server/am/VActivityManagerService;

    return-object p0
.end method

.method public static attach(Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/pm/VAppManagerService;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/lody/virtual/server/am/BroadcastSystem;->gDefault:Lcom/lody/virtual/server/am/BroadcastSystem;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/lody/virtual/server/am/BroadcastSystem;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/lody/virtual/server/am/BroadcastSystem;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/pm/VAppManagerService;)V

    sput-object v0, Lcom/lody/virtual/server/am/BroadcastSystem;->gDefault:Lcom/lody/virtual/server/am/BroadcastSystem;

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private fuckHuaWeiVerifier()V
    .locals 4

    .line 94
    sget-object v0, Lmirror/android/app/LoadedApkHuaWei;->mReceiverResource:Lmirror/RefObject;

    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Lmirror/android/app/ContextImpl;->mPackageInfo:Lmirror/RefObject;

    iget-object v1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    sget-object v1, Lmirror/android/app/LoadedApkHuaWei;->mReceiverResource:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 100
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceN;->mWhiteList:Lmirror/RefObject;

    if-eqz v1, :cond_3

    .line 101
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceN;->mWhiteList:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v3, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_0
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceN;->mWhiteList:Lmirror/RefObject;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceM;->mWhiteList:Lmirror/RefObject;

    if-eqz v1, :cond_2

    .line 113
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceM;->mWhiteList:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 114
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 115
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceM;->mWhiteList:Lmirror/RefObject;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_2
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceLP;->mResourceConfig:Lmirror/RefObject;

    if-eqz v1, :cond_3

    .line 121
    sget-object v1, Lmirror/android/rms/resource/ReceiverResourceLP;->mResourceConfig:Lmirror/RefObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static get()Lcom/lody/virtual/server/am/BroadcastSystem;
    .locals 1

    .line 76
    sget-object v0, Lcom/lody/virtual/server/am/BroadcastSystem;->gDefault:Lcom/lody/virtual/server/am/BroadcastSystem;

    return-object v0
.end method


# virtual methods
.method broadcastFinish(Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    iget-object v2, p1, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 181
    sget-object v1, Lcom/lody/virtual/server/am/BroadcastSystem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find the BroadcastRecord by token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mTimeoutHandler:Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;

    iget-object v1, p1, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;->removeMessages(ILjava/lang/Object;)V

    .line 185
    invoke-virtual {p1}, Lcom/lody/virtual/remote/PendingResultData;->finish()V

    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method broadcastSent(ILandroid/content/pm/ActivityInfo;Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 2

    .line 189
    new-instance v0, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;-><init>(ILandroid/content/pm/ActivityInfo;Lcom/lody/virtual/remote/PendingResultData;)V

    .line 190
    iget-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    monitor-enter p1

    .line 191
    :try_start_0
    iget-object p2, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    iget-object v1, p3, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 194
    iget-object p2, p3, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object p2, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mTimeoutHandler:Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;

    const-wide/16 v0, 0x2134

    invoke-virtual {p2, p1, v0, v1}, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception p2

    .line 192
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public startApp(Lcom/lody/virtual/server/pm/parser/VPackage;)V
    .locals 14

    .line 130
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 131
    iget-object v1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 132
    iget-object v9, v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    .line 133
    iget-object v3, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;

    iget-object v4, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v4, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;

    iget-object v5, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v10, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 138
    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "_VA_%s_%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v12, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;

    iget v5, v0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, p0

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;-><init>(Lcom/lody/virtual/server/am/BroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;Lcom/lody/virtual/server/am/BroadcastSystem$1;)V

    .line 141
    iget-object v3, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mScheduler:Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v11, v13, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 144
    new-instance v11, Landroid/content/IntentFilter;

    iget-object v3, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-direct {v11, v3}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 145
    invoke-static {v11}, Lcom/lody/virtual/client/env/SpecialComponentList;->protectIntentFilter(Landroid/content/IntentFilter;)V

    .line 146
    new-instance v12, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;

    iget v5, v0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, p0

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;-><init>(Lcom/lody/virtual/server/am/BroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;Lcom/lody/virtual/server/am/BroadcastSystem$1;)V

    .line 147
    iget-object v3, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mScheduler:Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;

    invoke-virtual {v3, v12, v11, v13, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 148
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public stopApp(Ljava/lang/String;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mBroadcastRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;

    .line 160
    iget-object v3, v2, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;->receiverInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v2, v2, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;->pendingResult:Lcom/lody/virtual/remote/PendingResultData;

    invoke-virtual {v2}, Lcom/lody/virtual/remote/PendingResultData;->finish()V

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 165
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    iget-object v1, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v1

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 170
    iget-object v3, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem;->mReceivers:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 165
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
