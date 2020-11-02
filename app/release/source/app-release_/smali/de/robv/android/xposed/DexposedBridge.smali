.class public final Lde/robv/android/xposed/DexposedBridge;
.super Ljava/lang/Object;
.source "DexposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;,
        Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DexposedBridge"

.field private static final allUnhookCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation
.end field

.field private static final hookedMethodCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const-string v0, "epic"

    .line 52
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    const-string v0, "dexposed"

    .line 54
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    :goto_0
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lme/weishu/reflection/Reflection;->unseal(Landroid/content/Context;)I

    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported api level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    sput-object v0, Lde/robv/android/xposed/DexposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 67
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/DexposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/DexposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/robv/android/xposed/DexposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object v0, Lde/robv/android/xposed/DexposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 171
    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    instance-of v0, v0, Lde/robv/android/xposed/XC_MethodHook;

    if-eqz v0, :cond_0

    .line 174
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook;

    .line 175
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 176
    invoke-static {p0, v0}, Lde/robv/android/xposed/DexposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    .line 177
    sget-object p1, Lde/robv/android/xposed/DexposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    monitor-enter p1

    .line 178
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no callback defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 204
    check-cast p0, Lme/weishu/epic/art/method/ArtMethod;

    .line 205
    sget-object v0, Lde/robv/android/xposed/DexposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getExecutable()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 208
    invoke-virtual {v1}, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v1

    .line 209
    array-length v2, v1

    if-nez v2, :cond_0

    .line 213
    :try_start_1
    invoke-static {p0}, Lme/weishu/epic/art/Epic;->getBackMethod(Lme/weishu/epic/art/method/ArtMethod;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p1, p2}, Lme/weishu/epic/art/method/ArtMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/Throwable;)V

    .line 220
    :cond_0
    new-instance v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 221
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getExecutable()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    iput-object v0, v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 222
    iput-object p1, v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 223
    iput-object p2, v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v0, 0x0

    :cond_1
    const/4 v5, 0x0

    .line 229
    :try_start_2
    aget-object v6, v1, v0

    check-cast v6, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v6, v3}, Lde/robv/android/xposed/XC_MethodHook;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    iget-boolean v6, v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 231
    invoke-static {v6}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/Throwable;)V

    .line 234
    invoke-virtual {v3, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 235
    iput-boolean v4, v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_1

    .line 247
    :goto_0
    iget-boolean v2, v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v2, :cond_3

    .line 249
    :try_start_3
    invoke-static {p0}, Lme/weishu/epic/art/Epic;->getBackMethod(Lme/weishu/epic/art/method/ArtMethod;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object p0

    .line 250
    invoke-virtual {p0, p1, p2}, Lme/weishu/epic/art/method/ArtMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 251
    invoke-virtual {v3, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 254
    invoke-virtual {v3, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 261
    :cond_4
    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 262
    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    .line 265
    :try_start_4
    aget-object p2, v1, v0

    check-cast p2, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {p2, v3}, Lde/robv/android/xposed/XC_MethodHook;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 267
    invoke-static {p2}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/Throwable;)V

    if-nez p1, :cond_5

    .line 271
    invoke-virtual {v3, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual {v3, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    .line 277
    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 278
    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    .line 279
    instance-of p1, p0, Ljava/lang/IllegalAccessException;

    if-nez p1, :cond_7

    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-nez p1, :cond_7

    instance-of p1, p0, Ljava/lang/InstantiationException;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "DexposedBridge"

    const-string p2, "epic cause exception in call bridge!!"

    .line 290
    invoke-static {p1, p2, p0}, Lcom/taobao/android/dexposed/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5

    .line 282
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 286
    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0, v5}, Lde/robv/android/xposed/DexposedBridge;->throwNoCheck(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5

    .line 294
    :cond_8
    invoke-virtual {v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    .line 207
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method private static handleHookedMethod(Ljava/lang/reflect/Member;ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 317
    check-cast p2, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;

    .line 319
    iget-object v0, p2, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->callbacks:Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v0}, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v0

    .line 320
    array-length v1, v0

    if-nez v1, :cond_0

    .line 323
    :try_start_0
    iget-object v4, p2, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v5, p2, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    move-object v2, p0

    move v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lde/robv/android/xposed/DexposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 330
    :cond_0
    new-instance v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 331
    iput-object p0, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 332
    iput-object p3, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 333
    iput-object p4, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 339
    :cond_1
    :try_start_1
    aget-object v3, v0, p4

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v3, v2}, Lde/robv/android/xposed/XC_MethodHook;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    iget-boolean v3, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v3, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 341
    invoke-static {v3}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 344
    invoke-virtual {v2, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 345
    iput-boolean p3, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    :cond_2
    add-int/lit8 p4, p4, 0x1

    if-lt p4, v1, :cond_1

    .line 357
    :goto_0
    iget-boolean p3, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez p3, :cond_3

    .line 359
    :try_start_2
    iget-object v5, p2, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    iget-object v6, p2, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    iget-object v7, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v8, v2, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    move-object v3, p0

    move v4, p1

    invoke-static/range {v3 .. v8}, Lde/robv/android/xposed/DexposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 362
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/lit8 p4, p4, -0x1

    .line 369
    :cond_4
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 370
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    .line 373
    :try_start_3
    aget-object p2, v0, p4

    check-cast p2, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {p2, v2}, Lde/robv/android/xposed/XC_MethodHook;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 375
    invoke-static {p2}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/Throwable;)V

    if-nez p1, :cond_5

    .line 379
    invoke-virtual {v2, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 381
    :cond_5
    invoke-virtual {v2, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_4

    .line 386
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_6

    .line 389
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 387
    :cond_6
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 195
    invoke-static {v3, p1}, Lde/robv/android/xposed/DexposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 164
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 165
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-static {v3, p2}, Lde/robv/android/xposed/DexposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 7

    .line 101
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only methods and constructors can be hooked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 107
    sget-object v2, Lde/robv/android/xposed/DexposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 108
    :try_start_0
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;

    if-nez v3, :cond_2

    .line 110
    new-instance v3, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v3}, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;-><init>()V

    .line 111
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 114
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "DexposedBridge"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hook: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", newMethod ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/android/dexposed/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, p1}, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 120
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->isArt()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 122
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Lme/weishu/epic/art/Epic;->hookMethod(Ljava/lang/reflect/Method;)Z

    goto :goto_2

    .line 124
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lme/weishu/epic/art/Epic;->hookMethod(Ljava/lang/reflect/Constructor;)Z

    goto :goto_2

    .line 127
    :cond_4
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "slot"

    .line 128
    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 133
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 134
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 136
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    move-object v0, v4

    .line 140
    :goto_1
    new-instance v6, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;

    invoke-direct {v6, v3, v5, v0, v4}, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;-><init>(Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;Lde/robv/android/xposed/DexposedBridge$1;)V

    .line 141
    invoke-static {p0, v1, v2, v6}, Lde/robv/android/xposed/DexposedBridge;->hookMethodNative(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)V

    .line 144
    :cond_6
    :goto_2
    new-instance v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;-><init>(Lde/robv/android/xposed/XC_MethodHook;Ljava/lang/reflect/Member;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 114
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synchronized native hookMethodNative(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 454
    sget-object p2, Lde/robv/android/xposed/DexposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    :cond_0
    move-object v5, p2

    .line 459
    instance-of p2, p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 460
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 461
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 462
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_4

    .line 463
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    move-object v3, v0

    move-object v2, v1

    .line 469
    :goto_0
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->isArt()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 472
    move-object p2, p0

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-static {p2}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object p2

    goto :goto_1

    .line 474
    :cond_2
    move-object p2, p0

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-static {p2}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Constructor;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object p2

    .line 477
    :goto_1
    :try_start_0
    invoke-static {p2}, Lme/weishu/epic/art/Epic;->getBackMethod(Lme/weishu/epic/art/method/ArtMethod;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object p2

    invoke-virtual {p2, p1, v5}, Lme/weishu/epic/art/method/ArtMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 479
    invoke-static {p2, v0}, Lde/robv/android/xposed/DexposedBridge;->throwNoCheck(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 482
    invoke-static/range {v0 .. v5}, Lde/robv/android/xposed/DexposedBridge;->invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 466
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method must be of type Method or Constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native invokeOriginalMethodNative(Ljava/lang/reflect/Member;I[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "I[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public static varargs invokeSuper(Ljava/lang/Object;Ljava/lang/reflect/Member;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 403
    :try_start_0
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->isArt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "slot"

    .line 406
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 409
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lde/robv/android/xposed/DexposedBridge;->invokeSuperNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 416
    new-instance p1, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lde/robv/android/xposed/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 414
    throw p0

    :catch_2
    move-exception p0

    .line 412
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native invokeSuperNative(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public static declared-synchronized log(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lde/robv/android/xposed/DexposedBridge;

    monitor-enter v0

    :try_start_0
    const-string v1, "DexposedBridge"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized log(Ljava/lang/Throwable;)V
    .locals 1

    const-class v0, Lde/robv/android/xposed/DexposedBridge;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/DexposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static throwNoCheck(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 309
    throw p0
.end method

.method public static unhookAllMethods()V
    .locals 4

    .line 184
    sget-object v0, Lde/robv/android/xposed/DexposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 185
    :goto_0
    :try_start_0
    sget-object v2, Lde/robv/android/xposed/DexposedBridge;->allUnhookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 186
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V
    .locals 1

    .line 154
    sget-object v0, Lde/robv/android/xposed/DexposedBridge;->hookedMethodCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;

    if-nez p0, :cond_0

    .line 157
    monitor-exit v0

    return-void

    .line 158
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
