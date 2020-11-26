.class public Lme/weishu/reflection/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final ERROR_EXEMPT_FAILED:I = -0x15

.field private static final ERROR_SET_APPLICATION_FAILED:I = -0x14

.field private static final TAG:Ljava/lang/String; = "Reflection"

.field private static UNKNOWN:I

.field private static sVmRuntime:Ljava/lang/Object;

.field private static setHiddenApiExemptions:Ljava/lang/reflect/Method;

.field private static unsealed:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 25
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "forName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/Class;

    const-string v3, "getDeclaredMethod"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    const-class v7, [Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "dalvik.system.VMRuntime"

    aput-object v6, v3, v5

    const/4 v6, 0x0

    .line 28
    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v7, "getRuntime"

    aput-object v7, v3, v5

    aput-object v6, v3, v2

    .line 29
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v7, "setHiddenApiExemptions"

    aput-object v7, v4, v5

    new-array v7, v2, [Ljava/lang/Class;

    .line 30
    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v5

    aput-object v7, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lme/weishu/reflection/Reflection;->setHiddenApiExemptions:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v3, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lme/weishu/reflection/Reflection;->sVmRuntime:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Reflection"

    const-string v2, "reflect bootstrap failed:"

    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/16 v0, -0x270f

    .line 42
    sput v0, Lme/weishu/reflection/Reflection;->UNKNOWN:I

    .line 48
    sput v0, Lme/weishu/reflection/Reflection;->unsealed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exempt(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 71
    invoke-static {v0}, Lme/weishu/reflection/Reflection;->exempt([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs exempt([Ljava/lang/String;)Z
    .locals 5

    .line 81
    sget-object v0, Lme/weishu/reflection/Reflection;->sVmRuntime:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lme/weishu/reflection/Reflection;->setHiddenApiExemptions:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 86
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    :cond_1
    :goto_0
    return v1
.end method

.method public static exemptAll()Z
    .locals 1

    const-string v0, "L"

    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/weishu/reflection/Reflection;->exempt([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unseal(Landroid/content/Context;)I
    .locals 2

    .line 51
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_0

    return v0

    .line 57
    :cond_0
    invoke-static {}, Lme/weishu/reflection/Reflection;->exemptAll()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/16 p0, -0x15

    return p0
.end method

.method private static native unsealNative(I)I
.end method
