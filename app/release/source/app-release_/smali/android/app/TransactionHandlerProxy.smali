.class public Landroid/app/TransactionHandlerProxy;
.super Landroid/app/ClientTransactionHandler;
.source "TransactionHandlerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransactionHandlerProxy"


# instance fields
.field private originalHandler:Landroid/app/ClientTransactionHandler;


# direct methods
.method public constructor <init>(Landroid/app/ClientTransactionHandler;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    return-void
.end method


# virtual methods
.method public countLaunchingActivities(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1}, Landroid/app/ClientTransactionHandler;->countLaunchingActivities(I)V

    return-void
.end method

.method public getActivitiesToBeDestroyed()Ljava/util/Map;
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActivityClient : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransactionHandlerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0}, Landroid/app/ClientTransactionHandler;->getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v0

    return-object v0
.end method

.method public handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1}, Landroid/app/ClientTransactionHandler;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V
    .locals 6

    .line 66
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V

    return-void
.end method

.method public handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 16

    move-object/from16 v0, p1

    .line 127
    sget-object v1, Lmirror/android/app/ActivityThread$ActivityClientRecord;->intent:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 128
    new-instance v2, Lcom/lody/virtual/remote/StubActivityRecord;

    invoke-direct {v2, v1}, Lcom/lody/virtual/remote/StubActivityRecord;-><init>(Landroid/content/Intent;)V

    .line 129
    iget-object v1, v2, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "TransactionHandlerProxy"

    if-nez v1, :cond_0

    const-string v0, "save instance intent is null, return"

    .line 130
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 133
    :cond_0
    iget-object v1, v2, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    .line 134
    iget-object v7, v2, Lcom/lody/virtual/remote/StubActivityRecord;->caller:Landroid/content/ComponentName;

    .line 135
    sget-object v5, Lmirror/android/app/ActivityThread$ActivityClientRecord;->token:Lmirror/RefObject;

    invoke-virtual {v5, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/os/IBinder;

    .line 136
    iget-object v15, v2, Lcom/lody/virtual/remote/StubActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 137
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lody/virtual/client/VClientImpl;->getToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 138
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "install app info is null, return"

    .line 140
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 143
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v1

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v2, v2, Lcom/lody/virtual/remote/StubActivityRecord;->userId:I

    invoke-virtual {v1, v3, v5, v2}, Lcom/lody/virtual/client/ipc/VActivityManager;->processRestarted(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "restart process, return"

    .line 145
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual/range {p0 .. p3}, Landroid/app/TransactionHandlerProxy;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 148
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v2

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1}, Lcom/lody/virtual/client/VClientImpl;->bindApplicationForActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v1, "rebound application, return"

    .line 151
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p0 .. p3}, Landroid/app/TransactionHandlerProxy;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 154
    :cond_3
    sget-object v2, Lmirror/android/app/IActivityManager;->getTaskForActivity:Lmirror/RefMethod;

    sget-object v4, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v5, v6, [Ljava/lang/Object;

    .line 155
    invoke-virtual {v4, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const/4 v9, 0x1

    .line 157
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    .line 154
    invoke-virtual {v2, v4, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 160
    sget-object v2, Lmirror/android/app/ActivityThread$ActivityClientRecord;->packageInfo:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v2, Lmirror/android/app/ActivityThread$ActivityClientRecord;->packageInfo:Lmirror/RefObject;

    invoke-virtual {v2, v0, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v5

    invoke-static {v15}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v15}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v11

    iget v13, v15, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v14, v15, Landroid/content/pm/ActivityInfo;->flags:I

    move-object v9, v15

    move-object v10, v1

    invoke-virtual/range {v5 .. v14}, Lcom/lody/virtual/client/ipc/VActivityManager;->onActivityCreate(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;III)Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    .line 165
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v2

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/lody/virtual/client/VClientImpl;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 167
    sget-object v2, Lmirror/android/app/ActivityThread$ActivityClientRecord;->intent:Lmirror/RefObject;

    invoke-virtual {v2, v0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    sget-object v1, Lmirror/android/app/ActivityThread$ActivityClientRecord;->activityInfo:Lmirror/RefObject;

    invoke-virtual {v1, v0, v15}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p0

    .line 170
    iget-object v2, v1, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)V

    return-void
.end method

.method public handleNewIntent(Landroid/os/IBinder;Ljava/util/List;Z)V
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handleNewIntent(Landroid/os/IBinder;Ljava/util/List;Z)V

    return-void
.end method

.method public handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .locals 7

    .line 71
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    return-void
.end method

.method public handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method public handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V

    return-void
.end method

.method public handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method public handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .locals 7

    .line 81
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    return-void
.end method

.method public handleTopResumedActivityChanged(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ClientTransactionHandler;->handleTopResumedActivityChanged(Landroid/os/IBinder;ZLjava/lang/String;)V

    return-void
.end method

.method public handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public performRestartActivity(Landroid/os/IBinder;Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->performRestartActivity(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7

    .line 196
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/ClientTransactionHandler;->prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p1

    return-object p1
.end method

.method public reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method public reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1}, Landroid/app/ClientTransactionHandler;->reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/app/TransactionHandlerProxy;->originalHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v0, p1, p2}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    return-void
.end method
