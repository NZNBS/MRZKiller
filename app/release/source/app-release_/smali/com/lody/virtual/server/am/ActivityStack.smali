.class Lcom/lody/virtual/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;,
        Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
    }
.end annotation


# instance fields
.field private final mAM:Landroid/app/ActivityManager;

.field private final mHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/lody/virtual/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/lody/virtual/server/am/VActivityManagerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/VActivityManagerService;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    .line 55
    iput-object p1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mService:Lcom/lody/virtual/server/am/VActivityManagerService;

    .line 56
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mAM:Landroid/app/ActivityManager;

    return-void
.end method

.method private static containFlags(Landroid/content/Intent;I)Z
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private deliverNewIntentLocked(Lcom/lody/virtual/server/am/ActivityRecord;Lcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "android"

    .line 86
    :goto_0
    :try_start_0
    iget-object v0, p2, Lcom/lody/virtual/server/am/ActivityRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    iget-object p2, p2, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/client/IVClient;->scheduleNewIntent(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private fetchStubActivity(ILandroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 519
    :try_start_0
    sget-object v1, Lmirror/com/android/internal/R_Hide$styleable;->Window:Lmirror/RefStaticObject;

    invoke-virtual {v1}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 520
    sget-object v2, Lmirror/com/android/internal/R_Hide$styleable;->Window_windowIsTranslucent:Lmirror/RefStaticInt;

    invoke-virtual {v2}, Lmirror/RefStaticInt;->get()I

    move-result v2

    .line 521
    sget-object v3, Lmirror/com/android/internal/R_Hide$styleable;->Window_windowIsFloating:Lmirror/RefStaticInt;

    invoke-virtual {v3}, Lmirror/RefStaticInt;->get()I

    move-result v3

    .line 522
    sget-object v4, Lmirror/com/android/internal/R_Hide$styleable;->Window_windowShowWallpaper:Lmirror/RefStaticInt;

    invoke-virtual {v4}, Lmirror/RefStaticInt;->get()I

    move-result v4

    .line 524
    invoke-static {}, Lcom/lody/virtual/server/am/AttributeCache;->instance()Lcom/lody/virtual/server/am/AttributeCache;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v7, p2, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v5, v6, v7, v1}, Lcom/lody/virtual/server/am/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/lody/virtual/server/am/AttributeCache$Entry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 526
    iget-object v6, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    if-eqz v6, :cond_0

    .line 527
    iget-object v1, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 528
    :try_start_1
    iget-object v4, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 529
    :try_start_2
    iget-object v4, v5, Lcom/lody/virtual/server/am/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_0

    .line 531
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lody/virtual/client/core/VirtualCore;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 533
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    iget v6, p2, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 535
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 536
    :try_start_4
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 537
    :try_start_5
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v1, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    move v1, v4

    goto :goto_1

    :catchall_3
    move-exception v3

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_2

    :catchall_4
    move-exception v3

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 542
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 v3, 0x0

    .line 546
    :goto_3
    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p2, p2, 0x20

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_4

    :cond_2
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_3

    .line 548
    invoke-static {p1}, Lcom/lody/virtual/client/stub/VASettings;->getStubExcludeFromRecentActivityName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 553
    invoke-static {p1}, Lcom/lody/virtual/client/stub/VASettings;->getStubDialogName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 555
    :cond_6
    invoke-static {p1}, Lcom/lody/virtual/client/stub/VASettings;->getStubActivityName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/TaskRecord;

    .line 119
    iget v3, v2, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    if-eq v3, p1, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    iget-object v3, v2, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3

    .line 123
    :try_start_0
    iget-object v2, v2, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 124
    iget-object v5, v4, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_1

    move-object v0, v4

    goto :goto_1

    .line 128
    :cond_2
    monitor-exit v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-object v0
.end method

.method private findTaskByAffinityLocked(ILjava/lang/String;)Lcom/lody/virtual/server/am/TaskRecord;
    .locals 3

    const/4 v0, 0x0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/TaskRecord;

    .line 97
    iget v2, v1, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_0

    iget-object v2, v1, Lcom/lody/virtual/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findTaskByIntentLocked(ILandroid/content/Intent;)Lcom/lody/virtual/server/am/TaskRecord;
    .locals 4

    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/TaskRecord;

    .line 107
    iget v2, v1, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    if-ne p1, v2, :cond_0

    iget-object v2, v1, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v1, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private markTaskByClearTarget(Lcom/lody/virtual/server/am/TaskRecord;Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;Landroid/content/ComponentName;)Z
    .locals 4

    .line 136
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/lody/virtual/server/am/ActivityStack$2;->$SwitchMap$com$lody$virtual$server$am$ActivityStack$ClearTarget:[I

    invoke-virtual {p2}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto/16 :goto_5

    .line 155
    :cond_0
    iget-object p2, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-lez p2, :cond_2

    .line 157
    iget-object p2, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 158
    iget-object p2, p2, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    :goto_2
    add-int/lit8 p2, v3, 0x1

    .line 164
    iget-object p3, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    if-ge v3, p3, :cond_6

    .line 165
    iget-object p3, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lody/virtual/server/am/ActivityRecord;

    iput-boolean v1, p3, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    move v3, p2

    goto :goto_2

    .line 146
    :cond_3
    iget-object p1, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 147
    iget-object v3, p2, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 148
    iput-boolean v1, p2, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    const/4 v2, 0x1

    goto :goto_3

    .line 139
    :cond_5
    iget-object p1, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 140
    iput-boolean v1, p2, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    const/4 v2, 0x1

    goto :goto_4

    .line 171
    :cond_6
    :goto_5
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private optimizeTasksLocked()V
    .locals 7

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mAM:Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/TaskRecord;

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    const/4 v4, 0x0

    .line 190
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 192
    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v6, v1, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    .line 194
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    :cond_1
    if-nez v4, :cond_2

    .line 199
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private realStartActivitiesLocked(Landroid/os/IBinder;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 460
    sget-object v0, Lmirror/android/app/IActivityManager;->startActivities:Lmirror/RefMethod;

    invoke-virtual {v0}, Lmirror/RefMethod;->paramList()[Ljava/lang/Class;

    move-result-object v0

    .line 461
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 462
    aget-object v3, v0, v2

    sget-object v4, Lmirror/android/app/IApplicationThread;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    .line 463
    sget-object v3, Lmirror/android/app/ActivityThread;->getApplicationThread:Lmirror/RefMethod;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 465
    :cond_0
    const-class v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    .line 466
    const-class v4, [Landroid/content/Intent;

    invoke-static {v0, v4}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v4

    .line 467
    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-static {v0, v5, v6}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v5

    .line 468
    const-class v6, Landroid/os/Bundle;

    invoke-static {v0, v6}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 471
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    .line 473
    :cond_1
    aput-object p2, v1, v4

    .line 474
    aput-object p1, v1, v5

    .line 475
    aput-object p3, v1, v7

    .line 476
    aput-object p4, v1, v6

    .line 477
    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/ClassUtils;->fixArgs([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 478
    sget-object p1, Lmirror/android/app/IActivityManager;->startActivities:Lmirror/RefMethod;

    sget-object p2, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private realStartActivityLocked(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9

    .line 484
    sget-object v0, Lmirror/android/app/IActivityManager;->startActivity:Lmirror/RefMethod;

    invoke-virtual {v0}, Lmirror/RefMethod;->paramList()[Ljava/lang/Class;

    move-result-object v0

    .line 485
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 486
    aget-object v3, v0, v2

    sget-object v4, Lmirror/android/app/IApplicationThread;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    .line 487
    sget-object v3, Lmirror/android/app/ActivityThread;->getApplicationThread:Lmirror/RefMethod;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 489
    :cond_0
    const-class v3, Landroid/content/Intent;

    invoke-static {v0, v3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    .line 490
    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-static {v0, v4, v5}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;I)I

    move-result v4

    .line 491
    const-class v5, Landroid/os/Bundle;

    invoke-static {v0, v5}, Lcom/lody/virtual/helper/utils/ArrayUtils;->protoIndexOf([Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v4, 0x2

    .line 496
    aput-object p2, v1, v3

    .line 497
    aput-object p1, v1, v4

    .line 498
    aput-object p3, v1, v7

    .line 499
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v8

    const/4 p1, -0x1

    if-eq v5, p1, :cond_1

    .line 501
    aput-object p5, v1, v5

    .line 503
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    .line 504
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    if-lt p1, p2, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 505
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 507
    :cond_2
    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/ClassUtils;->fixArgs([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 509
    sget-object p1, Lmirror/android/app/IActivityManager;->startActivity:Lmirror/RefMethod;

    sget-object p2, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static removeFlags(Landroid/content/Intent;I)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private scheduleFinishMarkedActivityLocked()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/TaskRecord;

    .line 430
    iget-object v0, v0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 431
    iget-boolean v3, v2, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 434
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/lody/virtual/server/am/ActivityStack$1;

    invoke-direct {v4, p0, v2}, Lcom/lody/virtual/server/am/ActivityStack$1;-><init>(Lcom/lody/virtual/server/am/ActivityStack;Lcom/lody/virtual/server/am/ActivityRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startActivitiesProcess(I[Landroid/content/Intent;[Landroid/content/pm/ActivityInfo;Lcom/lody/virtual/server/am/ActivityRecord;)[Landroid/content/Intent;
    .locals 4

    .line 260
    array-length v0, p2

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    .line 261
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 262
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-direct {p0, p1, p4, v2, v3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private startActivityFromSourceTask(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    .line 450
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    iget-object v1, p1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    :goto_0
    if-eqz v0, :cond_1

    .line 452
    iget p1, p1, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 453
    iget-object v2, v0, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/lody/virtual/server/am/ActivityStack;->realStartActivityLocked(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 p2, 0x10000000

    .line 407
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    .line 408
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x200000

    .line 409
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    const/high16 v0, 0x80000

    if-ge p2, p3, :cond_0

    .line 413
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_1

    .line 419
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 421
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 4

    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 561
    iget-object p3, p0, Lcom/lody/virtual/server/am/ActivityStack;->mService:Lcom/lody/virtual/server/am/VActivityManagerService;

    iget-object v1, p4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1, p1, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->startProcessIfNeedLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/lody/virtual/server/am/ProcessRecord;

    move-result-object p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return-object v1

    .line 565
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 566
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    iget p3, p3, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    invoke-direct {p0, p3, p4}, Lcom/lody/virtual/server/am/ActivityStack;->fetchStubActivity(ILandroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_1

    .line 569
    invoke-static {p4}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object p3

    .line 571
    :cond_1
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    new-instance p3, Lcom/lody/virtual/remote/StubActivityRecord;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    :cond_2
    invoke-direct {p3, v0, p4, v1, p1}, Lcom/lody/virtual/remote/StubActivityRecord;-><init>(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/ComponentName;I)V

    .line 574
    invoke-virtual {p3, v2}, Lcom/lody/virtual/remote/StubActivityRecord;->saveToIntent(Landroid/content/Intent;)V

    return-object v2
.end method

.method private static topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 70
    iget-object v2, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 71
    iget-boolean v3, v2, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v3, :cond_0

    .line 72
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 75
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method getActivityClassForToken(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 688
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 690
    iget-object p1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 692
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 693
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getCallingActivity(ILandroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 660
    iget-object p2, p1, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    :goto_0
    monitor-exit v0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 662
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCallingPackage(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 668
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 670
    iget-object p2, p1, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "android"

    :goto_0
    monitor-exit v0

    return-object p1

    :cond_1
    const-string p1, "android"

    .line 672
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 673
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getPackageForToken(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 648
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 650
    iget-object p1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 652
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/TaskRecord;

    if-eqz p1, :cond_0

    .line 680
    invoke-virtual {p1}, Lcom/lody/virtual/server/am/TaskRecord;->getAppTaskInfo()Lcom/lody/virtual/remote/AppTaskInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 682
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onActivityCreated(Lcom/lody/virtual/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;III)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p7

    .line 580
    iget-object v12, v1, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v12

    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 582
    iget-object v3, v1, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/am/TaskRecord;

    if-nez v3, :cond_0

    .line 584
    new-instance v3, Lcom/lody/virtual/server/am/TaskRecord;

    iget v4, v0, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    move-object/from16 v5, p5

    move-object/from16 v11, p6

    invoke-direct {v3, v2, v4, v11, v5}, Lcom/lody/virtual/server/am/TaskRecord;-><init>(IILjava/lang/String;Landroid/content/Intent;)V

    .line 585
    iget-object v4, v1, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p6

    :goto_0
    move-object v13, v3

    .line 587
    new-instance v14, Lcom/lody/virtual/server/am/ActivityRecord;

    iget v7, v0, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    move-object v2, v14

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/lody/virtual/server/am/ActivityRecord;-><init>(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;ILcom/lody/virtual/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 589
    iget-object v2, v13, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 590
    :try_start_1
    iget-object v0, v13, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 591
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 592
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method onActivityDestroyed(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 610
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 613
    iget-object p2, p1, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object p2, p2, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 614
    :try_start_1
    iget-object v1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v1, v1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 617
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 619
    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 620
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method onActivityResumed(ILandroid/os/IBinder;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 597
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 600
    iget-object p2, p1, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object p2, p2, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 601
    :try_start_1
    iget-object v1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v1, v1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 602
    iget-object v1, p1, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    iget-object v1, v1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 605
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method processDied(Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 7

    .line 624
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v0

    .line 625
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 626
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/am/TaskRecord;

    .line 629
    iget-object v3, v1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 630
    :try_start_1
    iget-object v4, v1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 631
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 632
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 633
    iget-object v5, v5, Lcom/lody/virtual/server/am/ActivityRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget v5, v5, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    iget v6, p1, Lcom/lody/virtual/server/am/ProcessRecord;->pid:I

    if-ne v5, v6, :cond_0

    .line 634
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 635
    iget-object v5, v1, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 636
    iget-object v5, p0, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    iget v6, v1, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 640
    :cond_1
    monitor-exit v3

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 643
    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method startActivitiesLocked(I[Landroid/content/Intent;[Landroid/content/pm/ActivityInfo;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 8

    .line 206
    invoke-direct {p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    .line 207
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const/4 v1, 0x0

    .line 208
    aget-object v2, p2, v1

    .line 209
    aget-object v3, p3, v1

    .line 210
    invoke-direct {p0, p1, p5}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p5

    const/high16 v4, 0x10000000

    if-eqz p5, :cond_0

    .line 211
    iget v5, p5, Lcom/lody/virtual/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 212
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/high16 v5, 0x4000000

    .line 214
    invoke-static {v2, v5}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x20000

    .line 215
    invoke-static {v2, v5}, Lcom/lody/virtual/server/am/ActivityStack;->removeFlags(Landroid/content/Intent;I)V

    :cond_1
    const v5, 0x8000

    .line 217
    invoke-static {v2, v5}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2, v4}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 218
    invoke-static {v2, v5}, Lcom/lody/virtual/server/am/ActivityStack;->removeFlags(Landroid/content/Intent;I)V

    .line 220
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    const/4 v7, 0x2

    if-lt v5, v6, :cond_5

    .line 221
    iget v5, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    if-eq v5, v7, :cond_3

    goto :goto_0

    .line 226
    :cond_3
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_0

    .line 223
    :cond_4
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 230
    :cond_5
    :goto_0
    invoke-static {v2, v4}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v4

    const/high16 v5, 0x8000000

    if-eqz v4, :cond_7

    .line 231
    invoke-static {v2, v5}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_1

    .line 232
    :cond_7
    iget v4, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v4, v7, :cond_9

    .line 233
    invoke-static {v2, v5}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    :cond_9
    :goto_1
    if-nez p5, :cond_a

    .line 235
    sget-object v4, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    if-ne v0, v4, :cond_a

    .line 236
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 238
    :cond_a
    invoke-static {v3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    .line 240
    sget-object v4, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const/4 v5, 0x0

    if-ne v0, v4, :cond_b

    .line 241
    invoke-direct {p0, p1, v3}, Lcom/lody/virtual/server/am/ActivityStack;->findTaskByAffinityLocked(ILjava/lang/String;)Lcom/lody/virtual/server/am/TaskRecord;

    move-result-object v0

    goto :goto_2

    .line 242
    :cond_b
    sget-object v3, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    if-ne v0, v3, :cond_c

    .line 243
    iget-object v0, p5, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    goto :goto_2

    .line 244
    :cond_c
    sget-object v3, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    if-ne v0, v3, :cond_d

    .line 245
    invoke-direct {p0, p1, v2}, Lcom/lody/virtual/server/am/ActivityStack;->findTaskByIntentLocked(ILandroid/content/Intent;)Lcom/lody/virtual/server/am/TaskRecord;

    move-result-object v0

    goto :goto_2

    :cond_d
    move-object v0, v5

    .line 247
    :goto_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/lody/virtual/server/am/ActivityStack;->startActivitiesProcess(I[Landroid/content/Intent;[Landroid/content/pm/ActivityInfo;Lcom/lody/virtual/server/am/ActivityRecord;)[Landroid/content/Intent;

    move-result-object p1

    if-nez v0, :cond_e

    .line 249
    invoke-direct {p0, v5, p1, p4, p6}, Lcom/lody/virtual/server/am/ActivityStack;->realStartActivitiesLocked(Landroid/os/IBinder;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 251
    :cond_e
    invoke-static {v0}, Lcom/lody/virtual/server/am/ActivityStack;->topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 253
    iget-object p2, p2, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, p2, p1, p4, p6}, Lcom/lody/virtual/server/am/ActivityStack;->realStartActivitiesLocked(Landroid/os/IBinder;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    :goto_3
    return v1
.end method

.method startActivityLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 17

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/server/am/ActivityStack;->optimizeTasksLocked()V

    move-object/from16 v2, p4

    .line 273
    invoke-direct {v8, v0, v2}, Lcom/lody/virtual/server/am/ActivityStack;->findActivityByToken(ILandroid/os/IBinder;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v5, v2, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 276
    :goto_0
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 277
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const/high16 v9, 0x4000000

    .line 278
    invoke-static {v1, v9}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v9

    const v10, 0x8000

    .line 279
    invoke-static {v1, v10}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v11

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_1

    .line 282
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    const/high16 v12, 0x10000000

    const/4 v13, 0x3

    if-eqz v2, :cond_2

    .line 284
    iget v14, v2, Lcom/lody/virtual/server/am/ActivityRecord;->launchMode:I

    if-ne v14, v13, :cond_2

    .line 285
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    const/high16 v14, 0x20000

    if-eqz v9, :cond_3

    .line 288
    invoke-static {v1, v14}, Lcom/lody/virtual/server/am/ActivityStack;->removeFlags(Landroid/content/Intent;I)V

    .line 289
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    :cond_3
    if-eqz v11, :cond_5

    .line 292
    invoke-static {v1, v12}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 293
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    goto :goto_1

    .line 295
    :cond_4
    invoke-static {v1, v10}, Lcom/lody/virtual/server/am/ActivityStack;->removeFlags(Landroid/content/Intent;I)V

    .line 298
    :cond_5
    :goto_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    const/4 v3, 0x2

    const/4 v14, 0x1

    if-lt v10, v15, :cond_8

    .line 299
    iget v10, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eq v10, v14, :cond_7

    if-eq v10, v3, :cond_6

    goto :goto_2

    .line 305
    :cond_6
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_2

    .line 301
    :cond_7
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 302
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 311
    :cond_8
    :goto_2
    iget v10, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/high16 v15, 0x8000000

    const/4 v12, 0x0

    if-eq v10, v14, :cond_d

    if-eq v10, v3, :cond_b

    if-eq v10, v13, :cond_9

    const/high16 v10, 0x20000000

    .line 336
    invoke-static {v1, v10}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    .line 331
    :cond_9
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 332
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    :goto_3
    const/4 v9, 0x0

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 323
    :cond_b
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 324
    invoke-static {v1, v15}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_3

    :cond_c
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_3

    :cond_d
    const/high16 v10, 0x10000000

    .line 314
    invoke-static {v1, v10}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 315
    invoke-static {v1, v15}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    goto :goto_4

    :cond_e
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    :cond_f
    :goto_4
    const/4 v10, 0x1

    .line 342
    :goto_5
    sget-object v15, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    if-ne v7, v15, :cond_10

    const/high16 v15, 0x20000

    .line 343
    invoke-static {v1, v15}, Lcom/lody/virtual/server/am/ActivityStack;->containFlags(Landroid/content/Intent;I)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 344
    sget-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    :cond_10
    if-nez v5, :cond_11

    .line 347
    sget-object v15, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    if-ne v6, v15, :cond_11

    .line 348
    sget-object v6, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    .line 351
    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v15

    .line 353
    sget-object v16, Lcom/lody/virtual/server/am/ActivityStack$2;->$SwitchMap$com$lody$virtual$server$am$ActivityStack$ReuseTarget:[I

    invoke-virtual {v6}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v14, :cond_14

    if-eq v6, v3, :cond_13

    if-eq v6, v13, :cond_12

    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    move-object v3, v5

    goto :goto_6

    .line 358
    :cond_13
    invoke-direct/range {p0 .. p2}, Lcom/lody/virtual/server/am/ActivityStack;->findTaskByIntentLocked(ILandroid/content/Intent;)Lcom/lody/virtual/server/am/TaskRecord;

    move-result-object v3

    goto :goto_6

    .line 355
    :cond_14
    invoke-direct {v8, v0, v15}, Lcom/lody/virtual/server/am/ActivityStack;->findTaskByAffinityLocked(ILjava/lang/String;)Lcom/lody/virtual/server/am/TaskRecord;

    move-result-object v3

    :goto_6
    if-nez v3, :cond_15

    move-object/from16 v13, p5

    .line 369
    invoke-direct {v8, v0, v1, v4, v13}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityInNewTaskLocked(ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/Bundle;)V

    goto/16 :goto_b

    :cond_15
    move-object/from16 v13, p5

    .line 372
    iget-object v5, v8, Lcom/lody/virtual/server/am/ActivityStack;->mAM:Landroid/app/ActivityManager;

    iget v6, v3, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, v12}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    if-nez v11, :cond_16

    if-nez v9, :cond_16

    .line 373
    iget-object v5, v3, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    invoke-static {v1, v5}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSameIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    .line 375
    :goto_7
    iget-boolean v6, v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->deliverIntent:Z

    if-nez v6, :cond_19

    if-eqz v10, :cond_17

    goto :goto_8

    :cond_17
    const/4 v6, 0x0

    :cond_18
    const/4 v14, 0x0

    goto :goto_9

    .line 376
    :cond_19
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v8, v3, v7, v6}, Lcom/lody/virtual/server/am/ActivityStack;->markTaskByClearTarget(Lcom/lody/virtual/server/am/TaskRecord;Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;Landroid/content/ComponentName;)Z

    move-result v6

    .line 377
    invoke-static {v3}, Lcom/lody/virtual/server/am/ActivityStack;->topActivityInTask(Lcom/lody/virtual/server/am/TaskRecord;)Lcom/lody/virtual/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v9, :cond_1a

    if-nez v10, :cond_1a

    if-eqz v7, :cond_1a

    if-eqz v6, :cond_1a

    .line 379
    iput-boolean v14, v7, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    :cond_1a
    if-eqz v7, :cond_18

    .line 382
    iget-boolean v9, v7, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v9, :cond_18

    iget-object v9, v7, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 383
    invoke-direct {v8, v2, v7, v1}, Lcom/lody/virtual/server/am/ActivityStack;->deliverNewIntentLocked(Lcom/lody/virtual/server/am/ActivityRecord;Lcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;)V

    :goto_9
    if-eqz v6, :cond_1b

    .line 388
    iget-object v6, v8, Lcom/lody/virtual/server/am/ActivityStack;->mHistory:Landroid/util/SparseArray;

    monitor-enter v6

    .line 389
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/server/am/ActivityStack;->scheduleFinishMarkedActivityLocked()V

    .line 390
    monitor-exit v6

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1b
    :goto_a
    if-nez v5, :cond_1c

    if-nez v14, :cond_1c

    .line 394
    invoke-direct {v8, v0, v2, v1, v4}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityProcess(ILcom/lody/virtual/server/am/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    .line 396
    invoke-direct/range {v1 .. v7}, Lcom/lody/virtual/server/am/ActivityStack;->startActivityFromSourceTask(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_1c
    :goto_b
    return v12
.end method
