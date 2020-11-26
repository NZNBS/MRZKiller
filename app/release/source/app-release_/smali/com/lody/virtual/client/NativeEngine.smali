.class public Lcom/lody/virtual/client/NativeEngine;
.super Ljava/lang/Object;
.source "NativeEngine.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "va++"

.field private static final TAG:Ljava/lang/String; = "NativeEngine"

.field private static final VESCAPE:Ljava/lang/String; = "/6decacfa7aad11e8a718985aebe4663a"

.field private static sDexOverrideMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/remote/InstalledAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sFlag:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "va++"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 42
    sget-object v1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/natives/NativeMethods;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native disableJit(I)V
.end method

.method public static enableIORedirect()V
    .locals 3

    .line 147
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "va++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/6decacfa7aad11e8a718985aebe4663a"

    const-string v2, "/"

    .line 151
    invoke-static {v1, v2}, Lcom/lody/virtual/client/NativeEngine;->redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->getPreviewSDKInt()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/client/NativeEngine;->nativeEnableIORedirect(Ljava/lang/String;II)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "io redirect failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static forbid(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/client/NativeEngine;->nativeIOForbid(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 141
    sget-object v0, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getEscapePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/6decacfa7aad11e8a718985aebe4663a"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/client/NativeEngine;->nativeGetRedirectedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static launchEngine()V
    .locals 7

    .line 159
    sget-boolean v0, Lcom/lody/virtual/client/NativeEngine;->sFlag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 162
    sget-object v1, Lcom/lody/virtual/client/natives/NativeMethods;->gOpenDexFileNative:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v4, Lcom/lody/virtual/client/natives/NativeMethods;->gAudioRecordNativeCheckPermission:Ljava/lang/reflect/Method;

    aput-object v4, v0, v1

    .line 164
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->isArt()Z

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v6, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraMethodType:I

    invoke-static {v0, v1, v4, v5, v6}, Lcom/lody/virtual/client/NativeEngine;->nativeLaunchEngine([Ljava/lang/Object;Ljava/lang/String;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :goto_0
    sput-boolean v3, Lcom/lody/virtual/client/NativeEngine;->sFlag:Z

    return-void
.end method

.method private static native nativeEnableIORedirect(Ljava/lang/String;II)V
.end method

.method private static native nativeGetRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeIOForbid(Ljava/lang/String;)V
.end method

.method private static native nativeIORedirect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeIOWhitelist(Ljava/lang/String;)V
.end method

.method private static native nativeLaunchEngine([Ljava/lang/Object;Ljava/lang/String;ZII)V
.end method

.method private static native nativeMark()V
.end method

.method private static native nativeReverseRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static onGetCallingUid(I)I
    .locals 3

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    .line 180
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 181
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result p0

    return p0

    .line 183
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getSystemPid()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/16 p0, 0x3e8

    return p0

    .line 186
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->getUidByPid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 188
    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p0

    return p0

    .line 190
    :cond_2
    sget-object v0, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unknown uid: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result p0

    return p0
.end method

.method public static onGetUid(I)I
    .locals 0

    .line 230
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result p0

    return p0
.end method

.method public static onKillProcess(II)V
    .locals 4

    .line 172
    sget-object v0, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "killProcess: pid = %d, signal = %d."

    invoke-static {v0, p1, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    if-ne p0, p1, :cond_0

    .line 174
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static onOpenDexFileNative([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 195
    aget-object v1, p0, v0

    const/4 v2, 0x1

    .line 196
    aget-object v3, p0, v2

    .line 197
    sget-object v4, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    const-string v0, "DexOrJarPath = %s, OutputPath = %s."

    invoke-static {v4, v0, v5}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/lody/virtual/client/NativeEngine;->sDexOverrideMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/remote/InstalledAppInfo;

    if-eqz v0, :cond_0

    .line 201
    iget-boolean v1, v0, Lcom/lody/virtual/remote/InstalledAppInfo;->dependSystem:Z

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lody/virtual/helper/utils/DeviceUtil;->isMeizuBelowN()Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, p0, v2

    if-nez v1, :cond_2

    .line 202
    :cond_1
    invoke-virtual {v0}, Lcom/lody/virtual/remote/InstalledAppInfo;->getOdexFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 203
    aput-object v0, p0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static redirectDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/lody/virtual/client/NativeEngine;->nativeIORedirect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 91
    sget-object p1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static redirectFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 110
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/lody/virtual/client/NativeEngine;->nativeIORedirect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 117
    sget-object p1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static resverseRedirectedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/client/NativeEngine;->nativeReverseRedirectedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 76
    sget-object v1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static startDexOverride()V
    .locals 5

    .line 52
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->getInstalledApps(I)Ljava/util/List;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/lody/virtual/client/NativeEngine;->sDexOverrideMap:Ljava/util/Map;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/remote/InstalledAppInfo;

    .line 56
    :try_start_0
    sget-object v2, Lcom/lody/virtual/client/NativeEngine;->sDexOverrideMap:Ljava/util/Map;

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/lody/virtual/remote/InstalledAppInfo;->apkPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static whitelist(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "/"

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/client/NativeEngine;->nativeIOWhitelist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 130
    sget-object p1, Lcom/lody/virtual/client/NativeEngine;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
