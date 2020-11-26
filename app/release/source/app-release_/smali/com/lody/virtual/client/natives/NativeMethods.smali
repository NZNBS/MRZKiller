.class public Lcom/lody/virtual/client/natives/NativeMethods;
.super Ljava/lang/Object;
.source "NativeMethods.java"


# static fields
.field public static gAudioRecordNativeCheckPermission:Ljava/lang/reflect/Method;

.field public static gCameraMethodType:I

.field public static gCameraNativeSetup:Ljava/lang/reflect/Method;

.field public static gOpenDexFileNative:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 9

    const-string v0, "native_setup"

    const-string v1, "b3BlbkRleEZpbGVOYXRpdmU="

    .line 27
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "b3BlbkRleEZpbGU="

    .line 28
    invoke-static {v2}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 32
    :goto_0
    const-class v2, Ldalvik/system/DexFile;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 33
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    sput-object v6, Lcom/lody/virtual/client/natives/NativeMethods;->gOpenDexFileNative:Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    :cond_2
    :goto_2
    sget-object v2, Lcom/lody/virtual/client/natives/NativeMethods;->gOpenDexFileNative:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, -0x1

    .line 43
    sput v2, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraMethodType:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 45
    :try_start_0
    const-class v5, Landroid/hardware/Camera;

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    .line 46
    sput v1, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraMethodType:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 50
    :goto_3
    sget-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    const/4 v6, 0x4

    if-nez v5, :cond_3

    .line 52
    :try_start_1
    const-class v5, Landroid/hardware/Camera;

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    .line 53
    sput v2, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraMethodType:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    .line 59
    :cond_3
    :goto_4
    sget-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    .line 61
    :try_start_2
    const-class v5, Landroid/hardware/Camera;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    .line 62
    sput v3, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraMethodType:I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 68
    :cond_4
    :goto_5
    sget-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    if-nez v5, :cond_5

    .line 70
    :try_start_3
    const-class v5, Landroid/hardware/Camera;

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v7, v3

    invoke-virtual {v5, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    .line 71
    sput v6, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraMethodType:I
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    nop

    .line 76
    :cond_5
    :goto_6
    sget-object v0, Lcom/lody/virtual/client/natives/NativeMethods;->gCameraNativeSetup:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    :cond_6
    const-class v0, Landroid/media/AudioRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_8

    aget-object v5, v0, v3

    .line 81
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "native_check_permission"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 82
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v1, :cond_7

    .line 83
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v4

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_7

    .line 84
    sput-object v5, Lcom/lody/virtual/client/natives/NativeMethods;->gAudioRecordNativeCheckPermission:Ljava/lang/reflect/Method;

    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    return-void

    .line 39
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
