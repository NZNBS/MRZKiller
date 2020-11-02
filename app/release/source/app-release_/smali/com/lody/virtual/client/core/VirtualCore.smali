.class public final Lcom/lody/virtual/client/core/VirtualCore;
.super Ljava/lang/Object;
.source "VirtualCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/core/VirtualCore$VirtualInitializer;,
        Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;,
        Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;,
        Lcom/lody/virtual/client/core/VirtualCore$ProcessType;,
        Lcom/lody/virtual/client/core/VirtualCore$PackageObserver;,
        Lcom/lody/virtual/client/core/VirtualCore$UiCallback;
    }
.end annotation


# static fields
.field public static final GET_HIDDEN_APP:I = 0x1

.field public static final TAICHI_PACKAGE:Ljava/lang/String; = "me.weishu.exp"

.field private static gCore:Lcom/lody/virtual/client/core/VirtualCore;


# instance fields
.field private componentDelegate:Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

.field private context:Landroid/content/Context;

.field private hostPkgInfo:Landroid/content/pm/PackageInfo;

.field private hostPkgName:Ljava/lang/String;

.field private initLock:Landroid/os/ConditionVariable;

.field private isStartUp:Z

.field private mService:Lcom/lody/virtual/server/IAppManager;

.field private mainProcessName:Ljava/lang/String;

.field private mainThread:Ljava/lang/Object;

.field private final myUid:I

.field private phoneInfoDelegate:Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

.field private processName:Ljava/lang/String;

.field private processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field private systemPid:I

.field private taskDescriptionDelegate:Lcom/lody/virtual/client/hook/delegate/TaskDescriptionDelegate;

.field private unHookPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore;

    invoke-direct {v0}, Lcom/lody/virtual/client/core/VirtualCore;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore;->gCore:Lcom/lody/virtual/client/core/VirtualCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->myUid:I

    .line 101
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    return-void
.end method

.method private static createDeskShortcutAboveO(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z
    .locals 6

    .line 577
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 581
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 586
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v2

    .line 588
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 589
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    sget v2, Lcom/lody/virtual/R$string;->create_shortcut_already_exist:I

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    .line 597
    invoke-virtual {v0, p1, p0}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method private static createShortcutAboveN(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z
    .locals 4

    .line 548
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 553
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v1

    .line 554
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v2

    .line 555
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_1

    .line 556
    new-instance v1, Lcom/lody/virtual/client/core/VirtualCore$1;

    invoke-direct {v1}, Lcom/lody/virtual/client/core/VirtualCore$1;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 564
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 565
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 568
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method private detectProcessType()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgName:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainProcessName:Ljava/lang/String;

    .line 253
    sget-object v0, Lmirror/android/app/ActivityThread;->getProcessName:Lmirror/RefMethod;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainThread:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    sget-object v1, Lcom/lody/virtual/client/env/Constants;->SERVER_PROCESS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->isAppProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    goto :goto_0

    .line 261
    :cond_2
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getSystemPid()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->systemPid:I

    :cond_3
    return-void
.end method

.method public static get()Lcom/lody/virtual/client/core/VirtualCore;
    .locals 1

    .line 110
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore;->gCore:Lcom/lody/virtual/client/core/VirtualCore;

    return-object v0
.end method

.method public static getPM()Landroid/content/pm/PackageManager;
    .locals 1

    .line 114
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private getService()Lcom/lody/virtual/server/IAppManager;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/server/IAppManager;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/server/IAppManager;

    invoke-interface {v0}, Lcom/lody/virtual/server/IAppManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    monitor-enter p0

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getStubInterface()Ljava/lang/Object;

    move-result-object v0

    .line 273
    const-class v1, Lcom/lody/virtual/server/IAppManager;

    invoke-static {v1, v0}, Lcom/lody/virtual/client/ipc/LocalProxyUtils;->genProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/IAppManager;

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/server/IAppManager;

    .line 274
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mService:Lcom/lody/virtual/server/IAppManager;

    return-object v0

    :catchall_0
    move-exception v0

    .line 274
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStubInterface()Ljava/lang/Object;
    .locals 1

    const-string v0, "app"

    .line 281
    invoke-static {v0}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/server/IAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    return-object v0
.end method

.method public static getUiCallback(Landroid/content/Intent;)Lcom/lody/virtual/server/interfaces/IUiCallback;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 662
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "_VA_|_sender_"

    .line 666
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "_VA_|_ui_callback_"

    .line 668
    invoke-static {p0, v1}, Lcom/lody/virtual/helper/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 669
    invoke-static {p0}, Lcom/lody/virtual/server/interfaces/IUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IUiCallback;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method public static mainThread()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v0, v0, Lcom/lody/virtual/client/core/VirtualCore;->mainThread:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addVisibleOutsidePackage(Ljava/lang/String;)V
    .locals 1

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->addVisibleOutsidePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public clearAppRequestListener()V
    .locals 1

    .line 785
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IAppManager;->clearAppRequestListener()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 787
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearPackage(Ljava/lang/String;)Z
    .locals 1

    .line 362
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->clearPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 364
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public clearPackageAsUser(ILjava/lang/String;)Z
    .locals 1

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->clearPackageAsUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 372
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public createShortcut(ILjava/lang/String;Landroid/content/Intent;Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;)Z
    .locals 6

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p2, v0}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 476
    :cond_0
    invoke-virtual {v1, p1}, Lcom/lody/virtual/remote/InstalledAppInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 483
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_2

    .line 489
    invoke-interface {p4, v4}, Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v4, v2

    .line 493
    :cond_1
    invoke-interface {p4, v1}, Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;->getIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_2

    move-object v1, p4

    .line 498
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/lody/virtual/client/core/VirtualCore;->getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    .line 502
    :cond_3
    new-instance p4, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {p4, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 504
    invoke-virtual {p4, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_4

    .line 506
    invoke-virtual {p3, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "_VA_|_splash_"

    invoke-virtual {p4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string p3, "_VA_|_intent_"

    .line 508
    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "_VA_|_uri_"

    invoke-virtual {p4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_VA_|_user_id_"

    .line 510
    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-lt p1, p2, :cond_5

    .line 514
    invoke-virtual {p4, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 516
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 517
    new-instance p2, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object p3, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-direct {p2, p3, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    .line 519
    invoke-virtual {p2, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    .line 520
    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 521
    invoke-virtual {p1, p4}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 525
    iget-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/lody/virtual/client/core/VirtualCore;->createShortcutAboveN(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z

    .line 527
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_5

    .line 528
    iget-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/lody/virtual/client/core/VirtualCore;->createDeskShortcutAboveO(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    return p1

    .line 533
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.extra.shortcut.INTENT"

    .line 534
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 535
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON"

    .line 536
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 537
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    :try_start_1
    iget-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    return v0
.end method

.method public createShortcut(ILjava/lang/String;Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lody/virtual/client/core/VirtualCore;->createShortcut(ILjava/lang/String;Landroid/content/Intent;Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;)Z

    move-result p1

    return p1
.end method

.method public getAppRequestListener()Lcom/lody/virtual/server/interfaces/IAppRequestListener;
    .locals 1

    .line 801
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IAppManager;->getAppRequestListener()Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 803
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-object v0
.end method

.method public getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->componentDelegate:Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->EMPTY:Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEngineProcessName()Ljava/lang/String;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    sget v1, Lcom/lody/virtual/R$string;->engine_process_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGids()[I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->gids:[I

    return-object v0
.end method

.method public getHostPkg()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitLock()Landroid/os/ConditionVariable;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public getInstalledAppCount()I
    .locals 1

    .line 686
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IAppManager;->getInstalledAppCount()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 688
    invoke-static {v0}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;
    .locals 1

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 680
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/InstalledAppInfo;

    return-object p1
.end method

.method public getInstalledApps(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .line 769
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->getInstalledApps(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 771
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getInstalledAppsAsUser(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lody/virtual/remote/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .line 777
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->getInstalledAppsAsUser(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 779
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 6

    .line 429
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    .line 430
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.INFO"

    .line 431
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v3, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 436
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 438
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 439
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    iget-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v4, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    :cond_1
    const/4 p1, 0x0

    if-eqz v3, :cond_6

    .line 443
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 449
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v2, :cond_3

    .line 451
    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_4
    if-nez p1, :cond_5

    .line 457
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 460
    :cond_5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    .line 461
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p2

    :cond_6
    :goto_0
    return-object p1
.end method

.method public getMainProcessName()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInstalledUsers(Ljava/lang/String;)[I
    .locals 1

    .line 870
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->getPackageInstalledUsers(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 872
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneInfoDelegate()Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->phoneInfoDelegate:Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 717
    sget-object p1, Lmirror/android/content/res/AssetManager;->ctor:Lmirror/RefConstructor;

    invoke-virtual {p1}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetManager;

    .line 718
    sget-object v2, Lmirror/android/content/res/AssetManager;->addAssetPath:Lmirror/RefMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/lody/virtual/remote/InstalledAppInfo;->apkPath:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-virtual {v2, p1, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 720
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v1

    .line 722
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemPid()I
    .locals 1

    .line 906
    iget v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->systemPid:I

    return v0
.end method

.method public getTaskDescriptionDelegate()Lcom/lody/virtual/client/hook/delegate/TaskDescriptionDelegate;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->taskDescriptionDelegate:Lcom/lody/virtual/client/hook/delegate/TaskDescriptionDelegate;

    return-object v0
.end method

.method public getUnHookPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public initialize(Lcom/lody/virtual/client/core/VirtualCore$VirtualInitializer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 231
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$3;->$SwitchMap$com$lody$virtual$client$core$VirtualCore$ProcessType:[I

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore$VirtualInitializer;->onChildProcess()V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore$VirtualInitializer;->onServerProcess()V

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore$VirtualInitializer;->onVirtualProcess()V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1}, Lcom/lody/virtual/client/core/VirtualCore$VirtualInitializer;->onMainProcess()V

    :goto_0
    return-void

    .line 229
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Initializer = NULL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public installPackage(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstallResult;
    .locals 1

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->installPackage(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstallResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 356
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/remote/InstallResult;

    return-object p1
.end method

.method public installPackageAsUser(ILjava/lang/String;)Z
    .locals 1

    .line 854
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->installPackageAsUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 856
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 416
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 418
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isAppInstalledAsUser(ILjava/lang/String;)Z
    .locals 1

    .line 862
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->isAppInstalledAsUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 864
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isAppRunning(Ljava/lang/String;I)Z
    .locals 1

    .line 349
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/client/ipc/VActivityManager;->isAppRunning(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isChildProcess()Z
    .locals 2

    .line 302
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEngineLaunched()Z
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getEngineProcessName()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 215
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 216
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isMainProcess()Z
    .locals 2

    .line 295
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutsideInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isOutsidePackageVisible(Ljava/lang/String;)Z
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->isXposedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 396
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1

    .line 404
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->isOutsidePackageVisible(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 406
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isPackageLaunchable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/lody/virtual/remote/InstalledAppInfo;->getInstalledUsers()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/lody/virtual/client/core/VirtualCore;->getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPackageLaunched(ILjava/lang/String;)Z
    .locals 1

    .line 838
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->isPackageLaunched(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 840
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isServerProcess()Z
    .locals 2

    .line 309
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartup()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->isStartUp:Z

    return v0
.end method

.method public isVAppProcess()Z
    .locals 2

    .line 288
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore;->processType:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isXposedEnabled()Z
    .locals 2

    .line 411
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".disable_xposed"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public killAllApps()V
    .locals 1

    .line 764
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/ipc/VActivityManager;->killAllApps()V

    return-void
.end method

.method public killApp(Ljava/lang/String;I)V
    .locals 1

    .line 760
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/client/ipc/VActivityManager;->killAppByPkg(Ljava/lang/String;I)V

    return-void
.end method

.method public myUid()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->myUid:I

    return v0
.end method

.method public myUserId()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->myUid:I

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public preOpt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public registerObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V
    .locals 1

    .line 881
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->registerObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 883
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public removeShortcut(ILjava/lang/String;Landroid/content/Intent;Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;)Z
    .locals 3

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0, p2, v0}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 609
    :cond_0
    invoke-virtual {v1, p1}, Lcom/lody/virtual/remote/InstalledAppInfo;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 610
    iget-object v2, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 613
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 614
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    .line 619
    invoke-interface {p4, v1}, Lcom/lody/virtual/client/core/VirtualCore$OnEmitShortcutListener;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    move-object v1, p4

    .line 624
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/lody/virtual/client/core/VirtualCore;->getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 628
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 629
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object p4

    sget-object v2, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {p2, p4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "android.intent.category.DEFAULT"

    .line 630
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_3

    .line 632
    invoke-virtual {p3, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "_VA_|_splash_"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string p3, "_VA_|_intent_"

    .line 634
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "_VA_|_uri_"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result p1

    const-string p3, "_VA_|_user_id_"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "android.intent.extra.shortcut.INTENT"

    .line 639
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 640
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 641
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    iget-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    return v0
.end method

.method public removeVisibleOutsidePackage(Ljava/lang/String;)V
    .locals 1

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->removeVisibleOutsidePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public resolveActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    .line 747
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 727
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 728
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3, v2, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    .line 730
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 731
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 737
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 738
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 740
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 752
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/lody/virtual/client/ipc/VPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 754
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public scanApps()V
    .locals 1

    .line 793
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/lody/virtual/server/IAppManager;->scanApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAppRequestListener(Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;)V
    .locals 1

    .line 808
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore$2;

    invoke-direct {v0, p0, p1}, Lcom/lody/virtual/client/core/VirtualCore$2;-><init>(Lcom/lody/virtual/client/core/VirtualCore;Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;)V

    .line 830
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/lody/virtual/server/IAppManager;->setAppRequestListener(Lcom/lody/virtual/server/interfaces/IAppRequestListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 832
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setComponentDelegate(Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->componentDelegate:Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    return-void
.end method

.method public setCrashHandler(Lcom/lody/virtual/client/core/CrashHandler;)V
    .locals 1

    .line 150
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/VClientImpl;->setCrashHandler(Lcom/lody/virtual/client/core/CrashHandler;)V

    return-void
.end method

.method public setPackageHidden(ILjava/lang/String;Z)V
    .locals 1

    .line 846
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lody/virtual/server/IAppManager;->setPackageHidden(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 848
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPhoneInfoDelegate(Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->phoneInfoDelegate:Lcom/lody/virtual/client/hook/delegate/PhoneInfoDelegate;

    return-void
.end method

.method public setTaskDescriptionDelegate(Lcom/lody/virtual/client/hook/delegate/TaskDescriptionDelegate;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->taskDescriptionDelegate:Lcom/lody/virtual/client/hook/delegate/TaskDescriptionDelegate;

    return-void
.end method

.method public setUiCallback(Landroid/content/Intent;Lcom/lody/virtual/server/interfaces/IUiCallback;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    invoke-interface {p2}, Lcom/lody/virtual/server/interfaces/IUiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v1, "_VA_|_ui_callback_"

    invoke-static {v0, v1, p2}, Lcom/lody/virtual/helper/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p2, "_VA_|_sender_"

    .line 653
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public startup(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 183
    iget-boolean v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->isStartUp:Z

    if-nez v0, :cond_1

    .line 184
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 187
    invoke-static {p1}, Lme/weishu/reflection/Reflection;->unseal(Landroid/content/Context;)I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "virtual_stub_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP_AUTHORITY:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "virtual.service.BinderProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->SERVICE_CP_AUTH:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->context:Landroid/content/Context;

    .line 192
    sget-object v0, Lmirror/android/app/ActivityThread;->currentActivityThread:Lmirror/RefStaticMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->mainThread:Ljava/lang/Object;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->unHookPackageManager:Landroid/content/pm/PackageManager;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore;->hostPkgInfo:Landroid/content/pm/PackageInfo;

    .line 195
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->detectProcessType()V

    .line 196
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->init()V

    .line 198
    invoke-virtual {v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->injectAll()V

    .line 199
    invoke-static {p1}, Lcom/lody/virtual/client/fixer/ContextFixer;->fixContext(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->isStartUp:Z

    .line 201
    iget-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore;->initLock:Landroid/os/ConditionVariable;

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "VirtualCore.startup() must called in main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)Z
    .locals 1

    .line 707
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->uninstallPackage(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)Z
    .locals 1

    .line 698
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/server/IAppManager;->uninstallPackageAsUser(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V
    .locals 1

    .line 889
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/client/core/VirtualCore;->getService()Lcom/lody/virtual/server/IAppManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lody/virtual/server/IAppManager;->unregisterObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 891
    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public waitForEngine()V
    .locals 0

    .line 209
    invoke-static {}, Lcom/lody/virtual/client/ipc/ServiceManagerNative;->ensureServerStarted()V

    return-void
.end method
