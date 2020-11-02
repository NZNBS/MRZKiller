.class public abstract Landroid/app/ClientTransactionHandler;
.super Ljava/lang/Object;
.source "ClientTransactionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract countLaunchingActivities(I)V
.end method

.method public executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 0

    return-void
.end method

.method public abstract getActivitiesToBeDestroyed()Ljava/util/Map;
.end method

.method public abstract getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
.end method

.method public abstract getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
.end method

.method public abstract getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
.end method

.method abstract getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
.end method

.method public abstract handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
.end method

.method public abstract handleConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V
.end method

.method public abstract handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
.end method

.method public abstract handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
.end method

.method public abstract handleNewIntent(Landroid/os/IBinder;Ljava/util/List;)V
.end method

.method public abstract handleNewIntent(Landroid/os/IBinder;Ljava/util/List;Z)V
.end method

.method public abstract handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
.end method

.method public abstract handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
.end method

.method public abstract handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V
.end method

.method public abstract handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V
.end method

.method public abstract handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
.end method

.method public abstract handleTopResumedActivityChanged(Landroid/os/IBinder;ZLjava/lang/String;)V
.end method

.method public abstract handleWindowVisibility(Landroid/os/IBinder;Z)V
.end method

.method public abstract performRestartActivity(Landroid/os/IBinder;Z)V
.end method

.method public abstract prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
.end method

.method public abstract reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public abstract reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 0

    return-void
.end method

.method abstract sendMessage(ILjava/lang/Object;)V
.end method

.method public abstract updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
.end method

.method public abstract updatePendingConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract updateProcessState(IZ)V
.end method
