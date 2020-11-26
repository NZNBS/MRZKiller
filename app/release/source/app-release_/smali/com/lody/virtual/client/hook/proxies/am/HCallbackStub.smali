.class public Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;
.super Ljava/lang/Object;
.source "HCallbackStub.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/lody/virtual/client/interfaces/IInjector;


# static fields
.field private static final CREATE_SERVICE:I

.field private static LAUNCH_ACTIVITY:I = -0x1

.field private static final SCHEDULE_CRASH:I

.field private static final TAG:Ljava/lang/String;

.field private static final sCallback:Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;


# instance fields
.field private mCalling:Z

.field private otherCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Lmirror/android/app/ActivityThread$H;->CREATE_SERVICE:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->CREATE_SERVICE:I

    .line 34
    sget-object v0, Lmirror/android/app/ActivityThread$H;->SCHEDULE_CRASH:Lmirror/RefStaticInt;

    if-eqz v0, :cond_0

    sget-object v0, Lmirror/android/app/ActivityThread$H;->SCHEDULE_CRASH:Lmirror/RefStaticInt;

    .line 35
    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->SCHEDULE_CRASH:I

    .line 37
    const-class v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->sCallback:Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 47
    sget-object v0, Lmirror/android/app/ActivityThread$H;->LAUNCH_ACTIVITY:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->LAUNCH_ACTIVITY:I

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    return-void
.end method

.method public static getDefault()Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;
    .locals 1

    .line 54
    sget-object v0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->sCallback:Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;

    return-object v0
.end method

.method private static getH()Landroid/os/Handler;
    .locals 2

    .line 58
    sget-object v0, Lmirror/android/app/ActivityThread;->mH:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private static getHCallback()Landroid/os/Handler$Callback;
    .locals 2

    .line 63
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getH()Landroid/os/Handler;

    move-result-object v0

    .line 64
    sget-object v1, Lmirror/android/os/Handler;->mCallback:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private handleLaunchActivity(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v0, p1

    .line 104
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    sget-object v2, Lmirror/android/app/ActivityThread$ActivityClientRecord;->intent:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 106
    new-instance v3, Lcom/lody/virtual/remote/StubActivityRecord;

    invoke-direct {v3, v2}, Lcom/lody/virtual/remote/StubActivityRecord;-><init>(Landroid/content/Intent;)V

    .line 107
    iget-object v2, v3, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    const/4 v4, 0x1

    if-nez v2, :cond_0

    return v4

    .line 110
    :cond_0
    iget-object v2, v3, Lcom/lody/virtual/remote/StubActivityRecord;->intent:Landroid/content/Intent;

    .line 111
    iget-object v7, v3, Lcom/lody/virtual/remote/StubActivityRecord;->caller:Landroid/content/ComponentName;

    .line 112
    sget-object v5, Lmirror/android/app/ActivityThread$ActivityClientRecord;->token:Lmirror/RefObject;

    invoke-virtual {v5, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/os/IBinder;

    .line 113
    iget-object v15, v3, Lcom/lody/virtual/remote/StubActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 114
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lody/virtual/client/VClientImpl;->getToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 115
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v4

    .line 119
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v1

    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v3, v3, Lcom/lody/virtual/remote/StubActivityRecord;->userId:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/lody/virtual/client/ipc/VActivityManager;->processRestarted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getH()Landroid/os/Handler;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return v6

    .line 123
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v1

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v15, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcom/lody/virtual/client/VClientImpl;->bindApplicationForActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 125
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getH()Landroid/os/Handler;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return v6

    .line 128
    :cond_3
    sget-object v0, Lmirror/android/app/IActivityManager;->getTaskForActivity:Lmirror/RefMethod;

    sget-object v3, Lmirror/android/app/ActivityManagerNative;->getDefault:Lmirror/RefStaticMethod;

    new-array v5, v6, [Ljava/lang/Object;

    .line 129
    invoke-virtual {v3, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v6

    .line 131
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 128
    invoke-virtual {v0, v3, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 133
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v5

    invoke-static {v15}, Lcom/lody/virtual/helper/utils/ComponentUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v15}, Lcom/lody/virtual/helper/utils/ComponentUtils;->getTaskAffinity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v11

    iget v13, v15, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v14, v15, Landroid/content/pm/ActivityInfo;->flags:I

    move-object v9, v15

    move-object v10, v2

    invoke-virtual/range {v5 .. v14}, Lcom/lody/virtual/client/ipc/VActivityManager;->onActivityCreate(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;III)Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    .line 134
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/lody/virtual/client/VClientImpl;->getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 136
    sget-object v0, Lmirror/android/app/ActivityThread$ActivityClientRecord;->intent:Lmirror/RefObject;

    invoke-virtual {v0, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    sget-object v0, Lmirror/android/app/ActivityThread$ActivityClientRecord;->activityInfo:Lmirror/RefObject;

    invoke-virtual {v0, v1, v15}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    .line 76
    :try_start_0
    sget v2, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->LAUNCH_ACTIVITY:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->handleLaunchActivity(Landroid/os/Message;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 97
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    return v0

    .line 80
    :cond_0
    :try_start_1
    sget v2, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->CREATE_SERVICE:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 81
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v2, "info"

    invoke-virtual {v0, v2}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 83
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    sget v2, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->SCHEDULE_CRASH:I

    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    .line 97
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    return v0

    .line 89
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->otherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_3

    .line 90
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    .line 91
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    return p1

    .line 94
    :cond_3
    :try_start_3
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->mCalling:Z

    .line 98
    throw p1

    :cond_4
    :goto_1
    return v1
.end method

.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->otherCallback:Landroid/os/Handler$Callback;

    .line 144
    sget-object v0, Lmirror/android/os/Handler;->mCallback:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getH()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isEnvBad()Z
    .locals 6

    .line 149
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 152
    sget-object v3, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HCallback has bad, other callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method
