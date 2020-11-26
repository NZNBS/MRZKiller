.class public final Lcom/lody/virtual/client/VClientImpl;
.super Lcom/lody/virtual/client/IVClient$Stub;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/VClientImpl$H;,
        Lcom/lody/virtual/client/VClientImpl$ReceiverData;,
        Lcom/lody/virtual/client/VClientImpl$AppBindData;,
        Lcom/lody/virtual/client/VClientImpl$NewIntentData;,
        Lcom/lody/virtual/client/VClientImpl$RootThreadGroup;
    }
.end annotation


# static fields
.field private static final NEW_INTENT:I = 0xb

.field private static final RECEIVER:I = 0xc

.field private static final TAG:Ljava/lang/String; = "VClientImpl"

.field private static final gClient:Lcom/lody/virtual/client/VClientImpl;


# instance fields
.field private crashHandler:Lcom/lody/virtual/client/core/CrashHandler;

.field private deviceInfo:Lcom/lody/virtual/remote/VDeviceInfo;

.field private mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

.field private final mH:Lcom/lody/virtual/client/VClientImpl$H;

.field private mInitialApplication:Landroid/app/Application;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mTempLock:Landroid/os/ConditionVariable;

.field private mUiCallback:Lcom/lody/virtual/server/interfaces/IUiCallback;

.field private token:Landroid/os/IBinder;

.field private vuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/lody/virtual/client/VClientImpl;

    invoke-direct {v0}, Lcom/lody/virtual/client/VClientImpl;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/VClientImpl;->gClient:Lcom/lody/virtual/client/VClientImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/lody/virtual/client/IVClient$Stub;-><init>()V

    .line 94
    new-instance v0, Lcom/lody/virtual/client/VClientImpl$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/VClientImpl$H;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mH:Lcom/lody/virtual/client/VClientImpl$H;

    .line 96
    invoke-static {}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->getDefault()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/VClientImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/lody/virtual/client/VClientImpl;->bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method

.method static synthetic access$500()Lcom/lody/virtual/client/VClientImpl;
    .locals 1

    .line 86
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->gClient:Lcom/lody/virtual/client/VClientImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lody/virtual/client/VClientImpl;)Lcom/lody/virtual/client/core/CrashHandler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/lody/virtual/client/VClientImpl;->crashHandler:Lcom/lody/virtual/client/core/CrashHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl;->handleNewIntent(Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$ReceiverData;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl;->handleReceiver(Lcom/lody/virtual/client/VClientImpl$ReceiverData;)V

    return-void
.end method

.method private bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/lody/virtual/client/VClientImpl;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object v4

    if-nez p2, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    .line 237
    :goto_0
    iput-object v3, v1, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    .line 239
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/client/VClientImpl;->setupUncaughtHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 241
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    :goto_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/client/VClientImpl;->fixInstalledProviders()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v0

    .line 246
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    :goto_2
    sget-object v0, Lmirror/android/os/Build;->SERIAL:Lmirror/RefStaticObject;

    iget-object v4, v4, Lcom/lody/virtual/remote/VDeviceInfo;->serial:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 249
    sget-object v0, Lmirror/android/os/Build;->DEVICE:Lmirror/RefStaticObject;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmirror/RefStaticObject;->set(Ljava/lang/Object;)V

    .line 250
    sget-object v0, Lmirror/android/app/ActivityThread;->mInitialApplication:Lmirror/RefObject;

    .line 251
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    .line 250
    invoke-virtual {v0, v4, v6}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    new-instance v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;

    invoke-direct {v4, v1, v6}, Lcom/lody/virtual/client/VClientImpl$AppBindData;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    .line 255
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/Exception;

    const-string v8, "App not exist!"

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 259
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 261
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    iget v8, v1, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-static {v8}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v0, v2, v7, v8}, Lcom/lody/virtual/client/ipc/VPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 262
    iput-object v5, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    .line 263
    iget-object v0, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v8

    const/16 v9, 0x80

    invoke-virtual {v0, v5, v8, v9}, Lcom/lody/virtual/client/ipc/VPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->providers:Ljava/util/List;

    .line 265
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v10, v9, v7

    iget-object v10, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string v10, "Binding application %s, (%s)"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lcom/lody/virtual/helper/utils/VLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iput-object v4, v1, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    .line 267
    iget-object v0, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    iget-object v9, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v9}, Lcom/lody/virtual/client/env/VirtualRuntime;->setupRuntime(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 268
    iget-object v0, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x9

    if-ge v0, v9, :cond_2

    .line 270
    new-instance v9, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 271
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 273
    :cond_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_3

    if-ge v0, v10, :cond_3

    .line 274
    sget-object v9, Lmirror/android/os/Message;->updateCheckRecycle:Lmirror/RefStaticMethod;

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-virtual {v9, v10}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_3
    sget-boolean v0, Lcom/lody/virtual/client/stub/VASettings;->ENABLE_IO_REDIRECT:Z

    if-eqz v0, :cond_4

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/lody/virtual/client/VClientImpl;->startIOUniformer()V

    .line 279
    :cond_4
    invoke-static {}, Lcom/lody/virtual/client/NativeEngine;->launchEngine()V

    .line 280
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v9

    .line 281
    invoke-static {}, Lcom/lody/virtual/client/NativeEngine;->startDexOverride()V

    .line 282
    iget-object v0, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/VClientImpl;->createPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v10

    .line 287
    :try_start_2
    const-class v0, Ljava/lang/System;

    const-string v12, "setProperty"

    new-array v13, v8, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v7

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v11

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v8, [Ljava/lang/Object;

    const-string v13, "java.io.tmpdir"

    aput-object v13, v12, v7

    .line 288
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v0, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 290
    sget-object v12, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v0, v13, v7

    const-string v0, "set tmp dir error:"

    invoke-static {v12, v0, v13}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v0, v12, :cond_5

    .line 295
    invoke-virtual {v10}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_4

    .line 297
    :cond_5
    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 299
    :goto_4
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x18

    if-ge v13, v14, :cond_6

    .line 300
    sget-object v13, Lmirror/android/view/HardwareRenderer;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v13, :cond_7

    .line 301
    sget-object v13, Lmirror/android/view/HardwareRenderer;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v0, v15, v7

    invoke-virtual {v13, v15}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 304
    :cond_6
    sget-object v13, Lmirror/android/view/ThreadedRenderer;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v13, :cond_7

    .line 305
    sget-object v13, Lmirror/android/view/ThreadedRenderer;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v0, v15, v7

    invoke-virtual {v13, v15}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_7
    :goto_5
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v12, :cond_8

    .line 309
    sget-object v12, Lmirror/android/renderscript/RenderScriptCacheDir;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v12, :cond_9

    .line 310
    sget-object v12, Lmirror/android/renderscript/RenderScriptCacheDir;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v0, v13, v7

    invoke-virtual {v12, v13}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 312
    :cond_8
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v12, v13, :cond_9

    .line 313
    sget-object v12, Lmirror/android/view/RenderScript;->setupDiskCache:Lmirror/RefStaticMethod;

    if-eqz v12, :cond_9

    .line 314
    sget-object v12, Lmirror/android/view/RenderScript;->setupDiskCache:Lmirror/RefStaticMethod;

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v0, v13, v7

    invoke-virtual {v12, v13}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_9
    :goto_6
    iget-object v0, v1, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/VClientImpl;->fixBoundApp(Lcom/lody/virtual/client/VClientImpl$AppBindData;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    iget-object v12, v1, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    sget-object v13, Lmirror/android/app/ContextImpl;->mPackageInfo:Lmirror/RefObject;

    invoke-virtual {v13, v10}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v12, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    .line 319
    sget-object v12, Lmirror/android/app/ActivityThread$AppBindData;->info:Lmirror/RefObject;

    iget-object v13, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    invoke-virtual {v12, v0, v13}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    sget-object v0, Lmirror/dalvik/system/VMRuntime;->setTargetSdkVersion:Lmirror/RefMethod;

    sget-object v12, Lmirror/dalvik/system/VMRuntime;->getRuntime:Lmirror/RefStaticMethod;

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v7

    invoke-virtual {v0, v12, v13}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static/range {p1 .. p1}, Lcom/lody/virtual/client/env/SpecialComponentList;->isConflictingInstrumentation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 324
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v12

    const-class v13, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    invoke-virtual {v12, v13}, Lcom/lody/virtual/client/core/InvocationStubManager;->checkEnv(Ljava/lang/Class;)V

    .line 327
    :cond_a
    sget-object v12, Lmirror/android/app/LoadedApk;->mApplicationInfo:Lmirror/RefObject;

    iget-object v13, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 328
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-lt v13, v15, :cond_b

    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    if-nez v13, :cond_b

    new-array v13, v11, [Ljava/lang/String;

    .line 329
    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 333
    :cond_b
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lody/virtual/client/core/VirtualCore;->isXposedEnabled()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 335
    sget-object v12, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-array v13, v7, [Ljava/lang/Object;

    const-string v15, "Xposed is enabled."

    invoke-static {v12, v15, v13}, Lcom/lody/virtual/helper/utils/VLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 337
    iget-object v13, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v10, v13, v12}, Lme/weishu/exposed/ExposedBridge;->initOnce(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 338
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledApps(I)Ljava/util/List;

    move-result-object v10

    .line 339
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lody/virtual/remote/InstalledAppInfo;

    .line 340
    iget-object v15, v13, Lcom/lody/virtual/remote/InstalledAppInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/lody/virtual/remote/InstalledAppInfo;->getOdexFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    iget-object v13, v13, Lcom/lody/virtual/remote/InstalledAppInfo;->libPath:Ljava/lang/String;

    iget-object v6, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v15, v14, v13, v6, v12}, Lme/weishu/exposed/ExposedBridge;->loadModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const/4 v6, 0x0

    const/16 v14, 0x18

    goto :goto_7

    .line 344
    :cond_c
    sget-object v6, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v12, "Xposed is disable.."

    invoke-static {v6, v12, v10}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_d
    sget-object v6, Lmirror/android/app/LoadedApk;->makeApplication:Lmirror/RefMethod;

    iget-object v10, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->info:Ljava/lang/Object;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v8, v7

    const/4 v7, 0x0

    aput-object v7, v8, v11

    invoke-virtual {v6, v10, v8}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    iput-object v6, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    .line 351
    sget-object v6, Lmirror/android/app/ActivityThread;->mInitialApplication:Lmirror/RefObject;

    iget-object v7, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v6, v9, v7}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    iget-object v6, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-static {v6}, Lcom/lody/virtual/client/fixer/ContextFixer;->fixContext(Landroid/content/Context;)V

    .line 353
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_e

    const-string v6, "com.tencent.mm:recovery"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 354
    iget-object v5, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-direct {v1, v5}, Lcom/lody/virtual/client/VClientImpl;->fixWeChatRecovery(Landroid/app/Application;)V

    .line 356
    :cond_e
    iget-object v5, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->providers:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 357
    iget-object v5, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    iget-object v4, v4, Lcom/lody/virtual/client/VClientImpl$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v1, v5, v4}, Lcom/lody/virtual/client/VClientImpl;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    :cond_f
    if-eqz v3, :cond_10

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/ConditionVariable;->open()V

    const/4 v3, 0x0

    .line 361
    iput-object v3, v1, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    .line 363
    :cond_10
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v3

    iget-object v4, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-interface {v3, v4}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->beforeApplicationCreate(Landroid/app/Application;)V

    .line 365
    :try_start_3
    iget-object v3, v1, Lcom/lody/virtual/client/VClientImpl;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 366
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v3

    const-class v4, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;

    invoke-virtual {v3, v4}, Lcom/lody/virtual/client/core/InvocationStubManager;->checkEnv(Ljava/lang/Class;)V

    if-eqz v0, :cond_11

    .line 368
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v0

    const-class v3, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    invoke-virtual {v0, v3}, Lcom/lody/virtual/client/core/InvocationStubManager;->checkEnv(Ljava/lang/Class;)V

    .line 370
    :cond_11
    sget-object v0, Lmirror/android/app/ActivityThread;->mInitialApplication:Lmirror/RefObject;

    invoke-virtual {v0, v9}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_14

    .line 372
    iput-object v0, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 375
    iget-object v3, v1, Lcom/lody/virtual/client/VClientImpl;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 377
    iget-object v3, v1, Lcom/lody/virtual/client/VClientImpl;->mUiCallback:Lcom/lody/virtual/server/interfaces/IUiCallback;

    if-eqz v3, :cond_12

    .line 379
    :try_start_4
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/lody/virtual/server/interfaces/IUiCallback;->onOpenFailed(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    nop

    .line 384
    :cond_12
    :goto_8
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/ipc/VActivityManager;->appDoneExecuting()V

    .line 387
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    if-nez v4, :cond_13

    const-string v4, " [null application] "

    goto :goto_9

    .line 388
    :cond_13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 392
    :cond_14
    :goto_a
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/ipc/VActivityManager;->appDoneExecuting()V

    .line 393
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v0

    iget-object v2, v1, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-interface {v0, v2}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->afterApplicationCreate(Landroid/app/Application;)V

    return-void
.end method

.method private static clearContentProvider(Ljava/lang/Object;)V
    .locals 2

    .line 686
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lmirror/android/providers/Settings$NameValueCacheOreo;->mProviderHolder:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 689
    sget-object v0, Lmirror/android/providers/Settings$ContentProviderHolder;->mContentProvider:Lmirror/RefObject;

    invoke-virtual {v0, p0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 692
    :cond_0
    sget-object v0, Lmirror/android/providers/Settings$NameValueCache;->mContentProvider:Lmirror/RefObject;

    invoke-virtual {v0, p0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearSettingProvider()V
    .locals 2

    .line 669
    sget-object v0, Lmirror/android/providers/Settings$System;->sNameValueCache:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-static {v0}, Lcom/lody/virtual/client/VClientImpl;->clearContentProvider(Ljava/lang/Object;)V

    .line 673
    :cond_0
    sget-object v0, Lmirror/android/providers/Settings$Secure;->sNameValueCache:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    invoke-static {v0}, Lcom/lody/virtual/client/VClientImpl;->clearContentProvider(Ljava/lang/Object;)V

    .line 677
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    sget-object v0, Lmirror/android/providers/Settings$Global;->TYPE:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 678
    sget-object v0, Lmirror/android/providers/Settings$Global;->sNameValueCache:Lmirror/RefStaticObject;

    invoke-virtual {v0}, Lmirror/RefStaticObject;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 680
    invoke-static {v0}, Lcom/lody/virtual/client/VClientImpl;->clearContentProvider(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private createPackageContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 560
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    .line 561
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 564
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    invoke-static {p1}, Lcom/lody/virtual/client/env/VirtualRuntime;->crash(Landroid/os/RemoteException;)Ljava/lang/Object;

    .line 566
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private fixBoundApp(Lcom/lody/virtual/client/VClientImpl$AppBindData;)Ljava/lang/Object;
    .locals 5

    .line 570
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 571
    sget-object v1, Lmirror/android/app/ActivityThread;->mBoundApplication:Lmirror/RefObject;

    invoke-virtual {v1, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 572
    sget-object v1, Lmirror/android/app/ActivityThread$AppBindData;->appInfo:Lmirror/RefObject;

    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    sget-object v1, Lmirror/android/app/ActivityThread$AppBindData;->processName:Lmirror/RefObject;

    iget-object v2, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    sget-object v1, Lmirror/android/app/ActivityThread$AppBindData;->instrumentationName:Lmirror/RefObject;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v4, Landroid/app/Instrumentation;

    .line 576
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    sget-object v1, Lmirror/android/app/ActivityThread$AppBindData;->providers:Lmirror/RefObject;

    iget-object p1, p1, Lcom/lody/virtual/client/VClientImpl$AppBindData;->providers:Ljava/util/List;

    invoke-virtual {v1, v0, p1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private fixInstalledProviders()V
    .locals 8

    .line 628
    invoke-direct {p0}, Lcom/lody/virtual/client/VClientImpl;->clearSettingProvider()V

    .line 629
    sget-object v0, Lmirror/android/app/ActivityThread;->mProviderMap:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 630
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 631
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 632
    sget-object v2, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mProvider:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 633
    sget-object v4, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mHolder:Lmirror/RefObject;

    invoke-virtual {v4, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    sget-object v5, Lmirror/android/content/ContentProviderHolderOreo;->info:Lmirror/RefObject;

    invoke-virtual {v5, v4}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;

    .line 638
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    sget-object v7, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 639
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v2

    .line 640
    sget-object v3, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mProvider:Lmirror/RefObject;

    invoke-virtual {v3, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 641
    sget-object v1, Lmirror/android/content/ContentProviderHolderOreo;->provider:Lmirror/RefObject;

    invoke-virtual {v1, v4, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_4

    .line 644
    sget-object v2, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mProvider:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 645
    sget-object v4, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mHolder:Lmirror/RefObject;

    invoke-virtual {v4, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 649
    :cond_3
    sget-object v5, Lmirror/android/app/IActivityManager$ContentProviderHolder;->info:Lmirror/RefObject;

    invoke-virtual {v5, v4}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;

    .line 650
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    sget-object v7, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 651
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v2

    .line 652
    sget-object v3, Lmirror/android/app/ActivityThread$ProviderClientRecordJB;->mProvider:Lmirror/RefObject;

    invoke-virtual {v3, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    sget-object v1, Lmirror/android/app/IActivityManager$ContentProviderHolder;->provider:Lmirror/RefObject;

    invoke-virtual {v1, v4, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 656
    :cond_4
    sget-object v2, Lmirror/android/app/ActivityThread$ProviderClientRecord;->mName:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 657
    sget-object v4, Lmirror/android/app/ActivityThread$ProviderClientRecord;->mProvider:Lmirror/RefObject;

    invoke-virtual {v4, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    if-eqz v4, :cond_0

    .line 658
    sget-object v5, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 659
    invoke-static {v3, v2, v4}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v2

    .line 660
    sget-object v3, Lmirror/android/app/ActivityThread$ProviderClientRecord;->mProvider:Lmirror/RefObject;

    invoke-virtual {v3, v1, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private fixWeChatRecovery(Landroid/app/Application;)V
    .locals 3

    .line 398
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.tencent.recovery.Recovery"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static get()Lcom/lody/virtual/client/VClientImpl;
    .locals 1

    .line 106
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->gClient:Lcom/lody/virtual/client/VClientImpl;

    return-object v0
.end method

.method private getMountPoints()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "/mnt/sdcard/"

    .line 548
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "/sdcard/"

    .line 549
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lody/virtual/helper/compat/StorageManagerCompat;->getAllPoints(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 552
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private handleNewIntent(Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V
    .locals 7

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x16

    if-lt v0, v4, :cond_0

    .line 188
    sget-object v0, Lmirror/com/android/internal/content/ReferrerIntent;->ctor:Lmirror/RefConstructor;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->intent:Landroid/content/Intent;

    aput-object v5, v4, v1

    iget-object v5, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->creator:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->intent:Landroid/content/Intent;

    .line 192
    :goto_0
    sget-object v4, Lmirror/android/app/ActivityThread;->performNewIntents:Lmirror/RefMethod;

    if-eqz v4, :cond_1

    .line 193
    sget-object v4, Lmirror/android/app/ActivityThread;->performNewIntents:Lmirror/RefMethod;

    .line 194
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->token:Landroid/os/IBinder;

    aput-object p1, v2, v1

    .line 196
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v2, v3

    .line 193
    invoke-virtual {v4, v5, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 199
    :cond_1
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    sget-object v4, Lmirror/android/app/ActivityThread;->handleNewIntent:Lmirror/RefMethod;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->token:Landroid/os/IBinder;

    aput-object p1, v2, v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v4, v5, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_2
    sget-object v4, Lmirror/android/app/ActivityThreadNMR1;->performNewIntents:Lmirror/RefMethod;

    .line 203
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->token:Landroid/os/IBinder;

    aput-object p1, v6, v1

    .line 205
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v6, v3

    .line 206
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v2

    .line 202
    invoke-virtual {v4, v5, v6}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private handleReceiver(Lcom/lody/virtual/client/VClientImpl$ReceiverData;)V
    .locals 8

    .line 721
    iget-object v0, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->resultData:Lcom/lody/virtual/remote/PendingResultData;

    invoke-virtual {v0}, Lcom/lody/virtual/remote/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v3

    if-nez v3, :cond_0

    .line 724
    iget-object v3, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->processName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_0
    iget-object v3, p0, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 727
    sget-object v4, Lmirror/android/app/ContextImpl;->getReceiverRestrictedContext:Lmirror/RefMethod;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 728
    iget-object v5, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 729
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/BroadcastReceiver;

    .line 730
    sget-object v6, Lmirror/android/content/BroadcastReceiver;->setPendingResult:Lmirror/RefMethod;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v6, v5, v7}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v6, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 732
    iget-object v3, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 733
    iget-object v3, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->intent:Landroid/content/Intent;

    iget-object v6, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 735
    :cond_1
    iget-object v3, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v4, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 736
    sget-object v3, Lmirror/android/content/BroadcastReceiver;->getPendingResult:Lmirror/RefMethod;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 737
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    iget-object p1, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->resultData:Lcom/lody/virtual/remote/PendingResultData;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->broadcastFinish(Lcom/lody/virtual/remote/PendingResultData;)V

    return-void

    :catch_0
    move-exception v0

    .line 741
    new-instance v3, Ljava/lang/RuntimeException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->component:Landroid/content/ComponentName;

    aput-object p1, v1, v2

    const-string p1, "Unable to start receiver: %s "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 584
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v2

    .line 586
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 588
    :try_start_1
    invoke-static {v2, p1, v3, v4}, Lmirror/android/app/ActivityThread;->installProvider(Ljava/lang/Object;Landroid/content/Context;Landroid/content/pm/ProviderInfo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 590
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 594
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    throw p1
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 164
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 165
    iput p1, v0, Landroid/os/Message;->what:I

    .line 166
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    iget-object p1, p0, Lcom/lody/virtual/client/VClientImpl;->mH:Lcom/lody/virtual/client/VClientImpl$H;

    invoke-virtual {p1, v0}, Lcom/lody/virtual/client/VClientImpl$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setupUncaughtHandler()V
    .locals 9

    .line 410
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 411
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v1, Lcom/lody/virtual/client/VClientImpl$RootThreadGroup;

    invoke-direct {v1, v0}, Lcom/lody/virtual/client/VClientImpl$RootThreadGroup;-><init>(Ljava/lang/ThreadGroup;)V

    .line 415
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_3

    .line 416
    sget-object v2, Lmirror/java/lang/ThreadGroup;->groups:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 418
    monitor-enter v2

    .line 419
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 421
    sget-object v4, Lmirror/java/lang/ThreadGroup;->groups:Lmirror/RefObject;

    invoke-virtual {v4, v1, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 423
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v4, Lmirror/java/lang/ThreadGroup;->groups:Lmirror/RefObject;

    invoke-virtual {v4, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadGroup;

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    sget-object v4, Lmirror/java/lang/ThreadGroup;->parent:Lmirror/RefObject;

    invoke-virtual {v4, v3, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 431
    :cond_2
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 433
    :cond_3
    sget-object v2, Lmirror/java/lang/ThreadGroupN;->groups:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/ThreadGroup;

    .line 435
    monitor-enter v2

    .line 436
    :try_start_1
    invoke-virtual {v2}, [Ljava/lang/ThreadGroup;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ThreadGroup;

    .line 437
    sget-object v4, Lmirror/java/lang/ThreadGroupN;->groups:Lmirror/RefObject;

    invoke-virtual {v4, v1, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 438
    sget-object v4, Lmirror/java/lang/ThreadGroupN;->groups:Lmirror/RefObject;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/ThreadGroup;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v0, v6}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 439
    array-length v4, v3

    :goto_2
    if-ge v7, v4, :cond_5

    aget-object v6, v3, v7

    if-ne v6, v1, :cond_4

    goto :goto_3

    .line 443
    :cond_4
    sget-object v8, Lmirror/java/lang/ThreadGroupN;->parent:Lmirror/RefObject;

    invoke-virtual {v8, v6, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 445
    :cond_5
    sget-object v1, Lmirror/java/lang/ThreadGroupN;->ngroups:Lmirror/RefObject;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    monitor-exit v2

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private setupVirtualStorage(Landroid/content/pm/ApplicationInfo;I)V
    .locals 7

    .line 485
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->get()Lcom/lody/virtual/client/ipc/VirtualStorageManager;

    move-result-object v0

    .line 486
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/lody/virtual/client/ipc/VirtualStorageManager;->isVirtualStorageEnable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/lody/virtual/os/VEnvironment;->getVirtualStorageDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/lody/virtual/client/VClientImpl;->getMountPoints()Ljava/util/HashSet;

    move-result-object v0

    .line 499
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 502
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "Android/obb"

    .line 510
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 512
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 517
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 523
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 526
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 527
    invoke-static {p1, v2}, Lcom/lody/virtual/client/NativeEngine;->whitelist(Ljava/lang/String;Z)V

    .line 528
    invoke-static {p2}, Lcom/lody/virtual/os/VEnvironment;->getVirtualPrivateStorageDir(I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 529
    invoke-static {p2, v2}, Lcom/lody/virtual/client/NativeEngine;->whitelist(Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 532
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 534
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-static {v5, v2}, Lcom/lody/virtual/client/NativeEngine;->whitelist(Ljava/lang/String;Z)V

    goto :goto_2

    .line 539
    :cond_5
    new-instance v4, Ljava/io/File;

    const-string v5, "Android/data/"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v3, p1}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method private startIOUniformer()V
    .locals 9

    .line 452
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    iget-object v0, v0, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 453
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    .line 454
    iget-object v2, p0, Lcom/lody/virtual/client/VClientImpl;->deviceInfo:Lcom/lody/virtual/remote/VDeviceInfo;

    invoke-virtual {v2, v1}, Lcom/lody/virtual/remote/VDeviceInfo;->getWifiFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sys/class/net/wlan0/address"

    .line 455
    invoke-static {v3, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/class/net/eth0/address"

    .line 456
    invoke-static {v3, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/class/net/wifi/address"

    .line 457
    invoke-static {v3, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/user/0/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user_de/0/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lody/virtual/os/VEnvironment;->getAppLibDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 465
    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/lib"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 466
    invoke-static {v5, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lib/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 473
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 475
    sget-object v3, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "symlink error"

    invoke-static {v3, v2, v4}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/VClientImpl;->setupVirtualStorage(Landroid/content/pm/ApplicationInfo;I)V

    .line 481
    invoke-static {}, Lcom/lody/virtual/client/NativeEngine;->enableIORedirect()V

    return-void
.end method


# virtual methods
.method public acquireProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mTempLock:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 608
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    :cond_2
    aget-object p1, v0, v2

    .line 609
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 612
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 613
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1

    goto :goto_1

    .line 615
    :cond_3
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 618
    sget-object v0, Lcom/lody/virtual/client/VClientImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, ""

    invoke-static {v0, p1, v3}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 621
    sget-object v0, Lmirror/android/content/ContentProviderClient;->mContentProvider:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 622
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 624
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 217
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 218
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/client/VClientImpl;->bindApplicationNoCheck(Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 221
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/lody/virtual/client/VClientImpl$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/lody/virtual/client/VClientImpl$1;-><init>(Lcom/lody/virtual/client/VClientImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :goto_0
    return-void
.end method

.method public bindApplicationForActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 212
    invoke-static {p3}, Lcom/lody/virtual/client/core/VirtualCore;->getUiCallback(Landroid/content/Intent;)Lcom/lody/virtual/server/interfaces/IUiCallback;

    move-result-object p3

    iput-object p3, p0, Lcom/lody/virtual/client/VClientImpl;->mUiCallback:Lcom/lody/virtual/server/interfaces/IUiCallback;

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/client/VClientImpl;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createProxyService(Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->getProxyService(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .locals 1

    .line 698
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/ipc/VActivityManager;->finishActivity(Landroid/os/IBinder;)V

    return-void
.end method

.method public getAppThread()Landroid/os/IBinder;
    .locals 3

    .line 172
    sget-object v0, Lmirror/android/app/ActivityThread;->getApplicationThread:Lmirror/RefMethod;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getBaseVUid()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 0

    .line 154
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl;->createPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public getClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl;->createPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public getCrashHandler()Lcom/lody/virtual/client/core/CrashHandler;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->crashHandler:Lcom/lody/virtual/client/core/CrashHandler;

    return-object v0
.end method

.method public getCurrentApplication()Landroid/app/Application;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCurrentApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPackage()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/lody/virtual/client/VClientImpl$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 2

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ninitialPkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getInitialPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nvuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->deviceInfo:Lcom/lody/virtual/remote/VDeviceInfo;

    if-nez v0, :cond_1

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->deviceInfo:Lcom/lody/virtual/remote/VDeviceInfo;

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/lody/virtual/client/ipc/VDeviceManager;->get()Lcom/lody/virtual/client/ipc/VDeviceManager;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    invoke-static {v1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VDeviceManager;->getDeviceInfo(I)Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->deviceInfo:Lcom/lody/virtual/remote/VDeviceInfo;

    .line 119
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->deviceInfo:Lcom/lody/virtual/remote/VDeviceInfo;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public getVUid()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    return v0
.end method

.method public initProcess(Landroid/os/IBinder;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl;->token:Landroid/os/IBinder;

    .line 182
    iput p2, p0, Lcom/lody/virtual/client/VClientImpl;->vuid:I

    return-void
.end method

.method public isBound()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl;->mBoundApplication:Lcom/lody/virtual/client/VClientImpl$AppBindData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scheduleNewIntent(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2

    .line 703
    new-instance v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/VClientImpl$NewIntentData;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    .line 704
    iput-object p1, v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->creator:Ljava/lang/String;

    .line 705
    iput-object p2, v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->token:Landroid/os/IBinder;

    .line 706
    iput-object p3, v0, Lcom/lody/virtual/client/VClientImpl$NewIntentData;->intent:Landroid/content/Intent;

    const/16 p1, 0xb

    .line 707
    invoke-direct {p0, p1, v0}, Lcom/lody/virtual/client/VClientImpl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleReceiver(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 2

    .line 712
    new-instance v0, Lcom/lody/virtual/client/VClientImpl$ReceiverData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/VClientImpl$ReceiverData;-><init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V

    .line 713
    iput-object p4, v0, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->resultData:Lcom/lody/virtual/remote/PendingResultData;

    .line 714
    iput-object p3, v0, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->intent:Landroid/content/Intent;

    .line 715
    iput-object p2, v0, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->component:Landroid/content/ComponentName;

    .line 716
    iput-object p1, v0, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->processName:Ljava/lang/String;

    const/16 p1, 0xc

    .line 717
    invoke-direct {p0, p1, v0}, Lcom/lody/virtual/client/VClientImpl;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setCrashHandler(Lcom/lody/virtual/client/core/CrashHandler;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl;->crashHandler:Lcom/lody/virtual/client/core/CrashHandler;

    return-void
.end method
