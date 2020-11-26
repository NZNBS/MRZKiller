.class final Lde/robv/android/xposed/XposedInit;
.super Ljava/lang/Object;
.source "XposedInit.java"


# static fields
.field private static final BASE_DIR:Ljava/lang/String;

.field private static final INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "de.robv.android.xposed.installer"

.field private static final INSTANT_RUN_CLASS:Ljava/lang/String; = "com.android.tools.fd.runtime.BootstrapApplication"

.field private static final TAG:Ljava/lang/String; = "Xposed"

.field private static final XRESOURCES_CONFLICTING_PACKAGES:[Ljava/lang/String;

.field private static disableResources:Z

.field private static final startClassName:Ljava/lang/String;

.field private static final startsSystemServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->startsSystemServer()Z

    move-result v0

    sput-boolean v0, Lde/robv/android/xposed/XposedInit;->startsSystemServer:Z

    .line 67
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->getStartClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/XposedInit;->startClassName:Ljava/lang/String;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "/data/user_de/0/de.robv.android.xposed.installer/"

    goto :goto_0

    :cond_0
    const-string v0, "/data/data/de.robv.android.xposed.installer/"

    :goto_0
    sput-object v0, Lde/robv/android/xposed/XposedInit;->BASE_DIR:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lde/robv/android/xposed/XposedInit;->disableResources:Z

    const-string v0, "com.sygic.aura"

    .line 77
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/XposedInit;->XRESOURCES_CONFLICTING_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 63
    invoke-static {p0}, Lde/robv/android/xposed/XposedInit;->hookXposedInstaller(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$100(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)Landroid/content/res/XResources;
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedInit;->cloneToXResources(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)Landroid/content/res/XResources;

    move-result-object p0

    return-object p0
.end method

.method private static cloneToXResources(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)Landroid/content/res/XResources;
    .locals 3

    .line 385
    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 386
    instance-of v1, v0, Landroid/content/res/XResources;

    if-nez v1, :cond_2

    sget-object v1, Lde/robv/android/xposed/XposedInit;->XRESOURCES_CONFLICTING_PACKAGES:[Ljava/lang/String;

    .line 387
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    const-class v1, Landroid/content/res/XResources;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->cloneToSubclass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    .line 393
    invoke-virtual {v0, p1}, Landroid/content/res/XResources;->initObject(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Landroid/content/res/XResources;->isFirstLoad()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {v0}, Landroid/content/res/XResources;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 398
    new-instance v1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;

    sget-object v2, Lde/robv/android/xposed/XposedBridge;->sInitPackageResourcesCallbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v1, v2}, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;-><init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    .line 399
    iput-object p1, v1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    .line 400
    iput-object v0, v1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    .line 401
    invoke-static {v1}, Lde/robv/android/xposed/callbacks/XCallback;->callAll(Lde/robv/android/xposed/callbacks/XCallback$Param;)V

    .line 404
    :cond_1
    invoke-virtual {p0, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static hookResources()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 243
    invoke-static {}, Lde/robv/android/xposed/SELinuxHelper;->getAppDataFileService()Lde/robv/android/xposed/services/BaseService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/robv/android/xposed/XposedInit;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "conf/disable_resources"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/services/BaseService;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "Xposed"

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "conf/disable_resources, not hooking resources"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sput-boolean v1, Lde/robv/android/xposed/XposedInit;->disableResources:Z

    return-void

    .line 249
    :cond_0
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->initXResourcesNative()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cannot hook resources"

    .line 250
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sput-boolean v1, Lde/robv/android/xposed/XposedInit;->disableResources:Z

    return-void

    .line 266
    :cond_1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 268
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_2

    .line 269
    const-class v1, Landroid/app/ActivityThread;

    const-string v2, "android.app.ActivityThread$ResourcesKey"

    .line 270
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v1, "android.app.ResourcesManager"

    .line 272
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.content.res.ResourcesKey"

    .line 273
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 276
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    .line 277
    new-instance v3, Lde/robv/android/xposed/XposedInit$7;

    invoke-direct {v3, v2}, Lde/robv/android/xposed/XposedInit$7;-><init>(Ljava/lang/Class;)V

    const-string v2, "getOrCreateResources"

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    goto :goto_1

    .line 304
    :cond_3
    new-instance v3, Lde/robv/android/xposed/XposedInit$8;

    invoke-direct {v3, v0}, Lde/robv/android/xposed/XposedInit$8;-><init>(Ljava/lang/ThreadLocal;)V

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 311
    new-instance v2, Lde/robv/android/xposed/XposedInit$9;

    invoke-direct {v2, v0}, Lde/robv/android/xposed/XposedInit$9;-><init>(Ljava/lang/ThreadLocal;)V

    const-string v3, "getTopLevelResources"

    invoke-static {v1, v3, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 346
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    .line 348
    new-instance v2, Lde/robv/android/xposed/XposedInit$10;

    invoke-direct {v2}, Lde/robv/android/xposed/XposedInit$10;-><init>()V

    const-string v3, "getTopLevelThemedResources"

    invoke-static {v1, v3, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 359
    :cond_4
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_5

    .line 360
    const-class v1, Landroid/content/res/XResources$XTypedArray;

    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->getOverriddenMethods(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 361
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Member;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Member;

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->invalidateCallersNative([Ljava/lang/reflect/Member;)V

    .line 365
    :cond_5
    const-class v1, Landroid/content/res/TypedArray;

    new-instance v2, Lde/robv/android/xposed/XposedInit$11;

    invoke-direct {v2}, Lde/robv/android/xposed/XposedInit$11;-><init>()V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 377
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-class v2, Landroid/content/res/XResources;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->cloneToSubclass(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/XResources;

    const/4 v2, 0x0

    .line 378
    invoke-virtual {v1, v2}, Landroid/content/res/XResources;->initObject(Ljava/lang/String;)V

    .line 379
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mSystem"

    invoke-static {v2, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-static {v0}, Landroid/content/res/XResources;->init(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method private static hookXposedInstaller(Ljava/lang/ClassLoader;)V
    .locals 6

    const-string v0, "de.robv.android.xposed.installer.XposedApp"

    :try_start_0
    const-string v1, "getActiveXposedVersion"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 428
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->getXposedVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 427
    invoke-static {v0, p0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const-string v1, "onCreate"

    new-array v2, v2, [Ljava/lang/Object;

    .line 430
    new-instance v3, Lde/robv/android/xposed/XposedInit$12;

    invoke-direct {v3}, Lde/robv/android/xposed/XposedInit$12;-><init>()V

    aput-object v3, v2, v5

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Xposed"

    const-string v1, "Could not hook Xposed Installer"

    .line 442
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static initForZygote()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    invoke-static {}, Lde/robv/android/xposed/XposedInit;->needsToCloseFilesForFork()Z

    move-result v0

    const-string v1, "com.android.internal.os.Zygote"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lde/robv/android/xposed/XposedInit$1;

    invoke-direct {v0}, Lde/robv/android/xposed/XposedInit$1;-><init>()V

    .line 98
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "nativeForkAndSpecialize"

    .line 99
    invoke-static {v3, v4, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    const-string v4, "nativeForkSystemServer"

    .line 100
    invoke-static {v3, v4, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 103
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 106
    const-class v4, Landroid/app/ActivityThread;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "android.app.ActivityThread.AppBindData"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lde/robv/android/xposed/XposedInit$2;

    invoke-direct {v7, v0}, Lde/robv/android/xposed/XposedInit$2;-><init>(Ljava/util/HashSet;)V

    aput-object v7, v6, v3

    const-string v7, "handleBindApplication"

    invoke-static {v4, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 142
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_2

    .line 143
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v4, v6, :cond_1

    const-string v4, "run"

    goto :goto_0

    :cond_1
    const-string v4, "initAndLoop"

    :goto_0
    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Lde/robv/android/xposed/XposedInit$3;

    invoke-direct {v7, v0}, Lde/robv/android/xposed/XposedInit$3;-><init>(Ljava/util/HashSet;)V

    aput-object v7, v6, v8

    const-string v7, "com.android.server.ServerThread"

    invoke-static {v7, v2, v4, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_1

    .line 159
    :cond_2
    sget-boolean v4, Lde/robv/android/xposed/XposedInit;->startsSystemServer:Z

    if-eqz v4, :cond_3

    .line 160
    const-class v4, Landroid/app/ActivityThread;

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Lde/robv/android/xposed/XposedInit$4;

    invoke-direct {v7, v0}, Lde/robv/android/xposed/XposedInit$4;-><init>(Ljava/util/HashSet;)V

    aput-object v7, v6, v8

    const-string v7, "systemMain"

    invoke-static {v4, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 194
    :cond_3
    :goto_1
    const-class v4, Landroid/app/LoadedApk;

    new-instance v6, Lde/robv/android/xposed/XposedInit$5;

    invoke-direct {v6, v0}, Lde/robv/android/xposed/XposedInit$5;-><init>(Ljava/util/HashSet;)V

    invoke-static {v4, v6}, Lde/robv/android/xposed/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    new-array v0, v5, [Ljava/lang/Object;

    .line 217
    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v0, v8

    new-instance v4, Lde/robv/android/xposed/XposedInit$6;

    invoke-direct {v4}, Lde/robv/android/xposed/XposedInit$6;-><init>()V

    aput-object v4, v0, v3

    const-string v3, "android.app.ApplicationPackageManager"

    const-string v4, "getResourcesForApplication"

    invoke-static {v3, v2, v4, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 228
    const-class v0, Lcom/android/internal/os/ZygoteInit;

    const-string v3, "BOOT_START_TIME"

    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->findFieldIfExists(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 229
    const-class v0, Lcom/android/internal/os/ZygoteInit;

    sget-wide v4, Lde/robv/android/xposed/XposedBridge;->BOOT_START_TIME:J

    invoke-static {v0, v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticLongField(Ljava/lang/Class;Ljava/lang/String;J)V

    .line 233
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_5

    .line 234
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "isEnhancedZygoteASLREnabled"

    .line 236
    invoke-static {v0, v1, v8}, Lde/robv/android/xposed/XposedHelpers;->setStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private static loadModule(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 8

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading modules from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Xposed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "  File does not exist"

    .line 479
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 485
    :cond_0
    :try_start_0
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v2, "com.android.tools.fd.runtime.BootstrapApplication"

    .line 491
    invoke-virtual {v0, v2, p1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string p0, "  Cannot load module, please disable \"Instant Run\" in Android Studio."

    .line 492
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    return-void

    .line 497
    :cond_1
    const-class v2, Lde/robv/android/xposed/XposedBridge;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p0, "  Cannot load module:"

    .line 498
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "  The Xposed API classes are compiled into the module\'s APK."

    .line 499
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "  This may cause strange issues and must be fixed by the module developer."

    .line 500
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "  For details, see: http://api.xposed.info/using.html"

    .line 501
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    return-void

    .line 506
    :cond_2
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    const/4 p1, 0x0

    .line 511
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string p1, "assets/xposed_init"

    .line 512
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "  assets/xposed_init not found in the APK"

    .line 514
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    return-void

    .line 518
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 525
    new-instance v2, Ldalvik/system/PathClassLoader;

    sget-object v3, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-direct {v2, p0, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 526
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 529
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 530
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_5

    goto :goto_0

    .line 535
    :cond_5
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Loading class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 538
    const-class v6, Lde/robv/android/xposed/IXposedMod;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v5, "    This class doesn\'t implement any sub-interface of IXposedMod, skipping it"

    .line 539
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :cond_6
    sget-boolean v6, Lde/robv/android/xposed/XposedInit;->disableResources:Z

    if-eqz v6, :cond_7

    const-class v6, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "    This class requires resource-related hooks (which are disabled), skipping it."

    .line 542
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 547
    sget-boolean v6, Lde/robv/android/xposed/XposedBridge;->isZygote:Z

    if-eqz v6, :cond_a

    .line 548
    instance-of v6, v5, Lde/robv/android/xposed/IXposedHookZygoteInit;

    if-eqz v6, :cond_8

    .line 549
    new-instance v6, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    invoke-direct {v6}, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;-><init>()V

    .line 550
    iput-object p0, v6, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    .line 551
    sget-boolean v7, Lde/robv/android/xposed/XposedInit;->startsSystemServer:Z

    iput-boolean v7, v6, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->startsSystemServer:Z

    .line 552
    move-object v7, v5

    check-cast v7, Lde/robv/android/xposed/IXposedHookZygoteInit;

    invoke-interface {v7, v6}, Lde/robv/android/xposed/IXposedHookZygoteInit;->initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V

    .line 555
    :cond_8
    instance-of v6, v5, Lde/robv/android/xposed/IXposedHookLoadPackage;

    if-eqz v6, :cond_9

    .line 556
    new-instance v6, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;

    move-object v7, v5

    check-cast v7, Lde/robv/android/xposed/IXposedHookLoadPackage;

    invoke-direct {v6, v7}, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;-><init>(Lde/robv/android/xposed/IXposedHookLoadPackage;)V

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->hookLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage;)V

    .line 558
    :cond_9
    instance-of v6, v5, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    if-eqz v6, :cond_4

    .line 559
    new-instance v6, Lde/robv/android/xposed/IXposedHookInitPackageResources$Wrapper;

    check-cast v5, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    invoke-direct {v6, v5}, Lde/robv/android/xposed/IXposedHookInitPackageResources$Wrapper;-><init>(Lde/robv/android/xposed/IXposedHookInitPackageResources;)V

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->hookInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources;)V

    goto/16 :goto_0

    .line 561
    :cond_a
    instance-of v6, v5, Lde/robv/android/xposed/IXposedHookCmdInit;

    if-eqz v6, :cond_4

    .line 562
    new-instance v6, Lde/robv/android/xposed/IXposedHookCmdInit$StartupParam;

    invoke-direct {v6}, Lde/robv/android/xposed/IXposedHookCmdInit$StartupParam;-><init>()V

    .line 563
    iput-object p0, v6, Lde/robv/android/xposed/IXposedHookCmdInit$StartupParam;->modulePath:Ljava/lang/String;

    .line 564
    sget-object v7, Lde/robv/android/xposed/XposedInit;->startClassName:Ljava/lang/String;

    iput-object v7, v6, Lde/robv/android/xposed/IXposedHookCmdInit$StartupParam;->startClassName:Ljava/lang/String;

    .line 565
    check-cast v5, Lde/robv/android/xposed/IXposedHookCmdInit;

    invoke-interface {v5, v6}, Lde/robv/android/xposed/IXposedHookCmdInit;->initCmdApp(Lde/robv/android/xposed/IXposedHookCmdInit$StartupParam;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 569
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    Failed to load class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 575
    :cond_b
    :goto_1
    invoke-static {p1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 576
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 573
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Failed to load module from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    .line 575
    :goto_3
    invoke-static {p1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 576
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    throw p0

    :catch_1
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_4
    const-string v0, "  Cannot read assets/xposed_init in the APK"

    .line 520
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    invoke-static {p1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    return-void

    :catch_3
    move-exception p0

    const-string p1, "  Cannot load module"

    .line 487
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static loadModules()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lde/robv/android/xposed/XposedInit;->BASE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "conf/modules.list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {}, Lde/robv/android/xposed/SELinuxHelper;->getAppDataFileService()Lde/robv/android/xposed/services/BaseService;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v0}, Lde/robv/android/xposed/services/BaseService;->checkFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load any modules because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not found"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Xposed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 456
    :cond_0
    sget-object v2, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 458
    :goto_0
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v1, v0}, Lde/robv/android/xposed/services/BaseService;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 463
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 465
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedInit;->loadModule(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method private static needsToCloseFilesForFork()Z
    .locals 4

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    return v1

    .line 411
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 415
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "lib/libandroid_runtime.so"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "Unable to construct file descriptor table"

    .line 417
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->fileContains(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 419
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not check whether "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has security patch level 5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Xposed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
