.class public final Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;
.super Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;
.source "AppInstrumentation.java"

# interfaces
.implements Lcom/lody/virtual/client/interfaces/IInjector;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInstrumentation"

.field private static gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;-><init>(Landroid/app/Instrumentation;)V

    return-void
.end method

.method private callUiCallback(Landroid/content/Intent;Z)V
    .locals 1

    .line 184
    invoke-static {p1}, Lcom/lody/virtual/client/core/VirtualCore;->getUiCallback(Landroid/content/Intent;)Lcom/lody/virtual/server/interfaces/IUiCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 188
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/VClientImpl;->getCurrentPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/lody/virtual/server/interfaces/IUiCallback;->onAppOpened(Ljava/lang/String;I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/VClientImpl;->getCurrentPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/lody/virtual/server/interfaces/IUiCallback;->onOpenFailed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static create()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;
    .locals 2

    .line 53
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    .line 54
    instance-of v1, v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    return-object v0

    .line 57
    :cond_0
    new-instance v1, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    return-object v1
.end method

.method public static getDefault()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;
    .locals 2

    .line 42
    sget-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->create()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    move-result-object v1

    sput-object v1, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->gDefault:Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    return-object v0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 75
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/BundleCompat;->clearParcelledData(Landroid/os/Bundle;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->beforeActivityCreate(Landroid/app/Activity;)V

    .line 78
    sget-object v0, Lmirror/android/app/Activity;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 79
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iput-object p1, v0, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/lody/virtual/client/fixer/ContextFixer;->fixContext(Landroid/content/Context;)V

    .line 84
    invoke-static {p1}, Lcom/lody/virtual/client/fixer/ActivityFixer;->fixActivity(Landroid/app/Activity;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 87
    iget-object v1, v0, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    :cond_2
    if-eqz v1, :cond_4

    .line 90
    iget v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_3

    .line 91
    iget v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    iget v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v0, v2, :cond_4

    .line 95
    iget v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 99
    :cond_4
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->afterActivityCreate(Landroid/app/Activity;)V

    return-void

    :catchall_0
    move-exception p2

    .line 101
    sget-object v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "activity crashed when call onCreate, clearing"

    invoke-static {v0, v3, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0, v2}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->callUiCallback(Landroid/content/Intent;Z)V

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 108
    throw p2
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 142
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/BundleCompat;->clearParcelledData(Landroid/os/Bundle;)V

    .line 144
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    .line 161
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->beforeActivityDestroy(Landroid/app/Activity;)V

    .line 162
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 163
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->afterActivityDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1

    .line 168
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->beforeActivityPause(Landroid/app/Activity;)V

    .line 169
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnPause(Landroid/app/Activity;)V

    .line 170
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->afterActivityPause(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 1

    .line 149
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->beforeActivityResume(Landroid/app/Activity;)V

    .line 150
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->onActivityResumed(Landroid/app/Activity;)V

    .line 151
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callActivityOnResume(Landroid/app/Activity;)V

    .line 152
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->afterActivityResume(Landroid/app/Activity;)V

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->callUiCallback(Landroid/content/Intent;Z)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public inject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->base:Landroid/app/Instrumentation;

    .line 64
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isEnvBad()Z
    .locals 2

    .line 69
    sget-object v0, Lmirror/android/app/ActivityThread;->mInstrumentation:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-super/range {p0 .. p10}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 118
    sget-object p2, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p6, "activity crashed when call newActivity, clearing"

    invoke-static {p2, p6, p3}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0, p5, p4}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->callUiCallback(Landroid/content/Intent;Z)V

    .line 122
    throw p1
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/delegate/InstrumentationDelegate;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 131
    sget-object p2, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "activity crashed when call newActivity, clearing"

    invoke-static {p2, v2, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, p3, v1}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->callUiCallback(Landroid/content/Intent;Z)V

    .line 135
    throw p1
.end method
