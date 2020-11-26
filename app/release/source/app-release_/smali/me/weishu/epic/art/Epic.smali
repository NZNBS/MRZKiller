.class public final Lme/weishu/epic/art/Epic;
.super Ljava/lang/Object;
.source "Epic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/weishu/epic/art/Epic$EntryLock;,
        Lme/weishu/epic/art/Epic$MethodInfo;
    }
.end annotation


# static fields
.field private static ShellCode:Lme/weishu/epic/art/arch/ShellCode; = null

.field private static final TAG:Ljava/lang/String; = "Epic"

.field private static final backupMethodsMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lme/weishu/epic/art/method/ArtMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final originSigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lme/weishu/epic/art/Epic$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final scripts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lme/weishu/epic/art/Trampoline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/weishu/epic/art/Epic;->backupMethodsMapping:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/weishu/epic/art/Epic;->originSigs:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/weishu/epic/art/Epic;->scripts:Ljava/util/Map;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->is64Bit()Z

    move-result v1

    const-string v2, "Epic"

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lme/weishu/epic/art/arch/Arm64;

    invoke-direct {v1}, Lme/weishu/epic/art/arch/Arm64;-><init>()V

    sput-object v1, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->isThumb2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v1, Lme/weishu/epic/art/arch/Thumb2;

    invoke-direct {v1}, Lme/weishu/epic/art/arch/Thumb2;-><init>()V

    sput-object v1, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 64
    new-instance v3, Lme/weishu/epic/art/arch/Thumb2;

    invoke-direct {v3}, Lme/weishu/epic/art/arch/Thumb2;-><init>()V

    sput-object v3, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    const-string v3, "ARM32, not support now."

    .line 65
    invoke-static {v2, v3}, Lcom/taobao/android/dexposed/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_1
    sget-object v3, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    if-eqz v3, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {v1}, Lme/weishu/epic/art/arch/ShellCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not support this ARCH now!! API LEVEL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " thumb2 ? : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBackMethod(Lme/weishu/epic/art/method/ArtMethod;)Lme/weishu/epic/art/method/ArtMethod;
    .locals 2

    const-class v0, Lme/weishu/epic/art/Epic;

    monitor-enter v0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 178
    sget-object v1, Lme/weishu/epic/art/Epic;->backupMethodsMapping:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/weishu/epic/art/method/ArtMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMethodInfo(J)Lme/weishu/epic/art/Epic$MethodInfo;
    .locals 1

    .line 187
    sget-object v0, Lme/weishu/epic/art/Epic;->originSigs:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/weishu/epic/art/Epic$MethodInfo;

    return-object p0
.end method

.method public static getQuickCompiledCodeSize(Lme/weishu/epic/art/method/ArtMethod;)I
    .locals 4

    .line 192
    sget-object v0, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/arch/ShellCode;->toMem(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    const/4 p0, 0x4

    .line 194
    invoke-static {v0, v1, p0}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object p0

    .line 195
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQuickCompiledCodeSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Epic"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static hookMethod(Ljava/lang/reflect/Constructor;)Z
    .locals 0

    .line 75
    invoke-static {p0}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Constructor;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object p0

    invoke-static {p0}, Lme/weishu/epic/art/Epic;->hookMethod(Lme/weishu/epic/art/method/ArtMethod;)Z

    move-result p0

    return p0
.end method

.method public static hookMethod(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object p0

    .line 80
    invoke-static {p0}, Lme/weishu/epic/art/Epic;->hookMethod(Lme/weishu/epic/art/method/ArtMethod;)Z

    move-result p0

    return p0
.end method

.method private static hookMethod(Lme/weishu/epic/art/method/ArtMethod;)Z
    .locals 7

    .line 85
    new-instance v0, Lme/weishu/epic/art/Epic$MethodInfo;

    invoke-direct {v0}, Lme/weishu/epic/art/Epic$MethodInfo;-><init>()V

    .line 86
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    iput-boolean v1, v0, Lme/weishu/epic/art/Epic$MethodInfo;->isStatic:Z

    .line 87
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    array-length v3, v1

    iput v3, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    .line 90
    iput-object v1, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    goto :goto_0

    .line 92
    :cond_0
    iput v2, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    new-array v1, v2, [Ljava/lang/Class;

    .line 93
    iput-object v1, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    .line 95
    :goto_0
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lme/weishu/epic/art/Epic$MethodInfo;->returnType:Ljava/lang/Class;

    .line 96
    iput-object p0, v0, Lme/weishu/epic/art/Epic$MethodInfo;->method:Lme/weishu/epic/art/method/ArtMethod;

    .line 97
    sget-object v1, Lme/weishu/epic/art/Epic;->originSigs:Ljava/util/Map;

    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getAddress()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Lme/weishu/epic/art/method/ArtMethod;->setAccessible(Z)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->ensureResolved()V

    .line 105
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v0

    .line 106
    invoke-static {}, Lme/weishu/epic/art/method/ArtMethod;->getQuickToInterpreterBridge()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    const-string v3, "Epic"

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this method is not compiled, compile it now. current entry: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->compile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v0

    const-string v2, "Epic"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compile method success, new entry: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "Epic"

    const-string v0, "compile method failed..."

    .line 113
    invoke-static {p0, v0}, Lcom/taobao/android/dexposed/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 119
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->backup()Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v2

    const-string v3, "Epic"

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup method address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lme/weishu/epic/art/method/ArtMethod;->getAddress()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Epic"

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup method entry :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lme/weishu/epic/art/Epic;->getBackMethod(Lme/weishu/epic/art/method/ArtMethod;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v3

    if-nez v3, :cond_4

    .line 126
    invoke-static {p0, v2}, Lme/weishu/epic/art/Epic;->setBackMethod(Lme/weishu/epic/art/method/ArtMethod;Lme/weishu/epic/art/method/ArtMethod;)V

    .line 130
    :cond_4
    invoke-static {v0, v1}, Lme/weishu/epic/art/Epic$EntryLock;->obtain(J)Lme/weishu/epic/art/Epic$EntryLock;

    move-result-object v2

    .line 132
    monitor-enter v2

    .line 133
    :try_start_0
    sget-object v3, Lme/weishu/epic/art/Epic;->scripts:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lme/weishu/epic/art/Trampoline;

    sget-object v6, Lme/weishu/epic/art/Epic;->ShellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-direct {v5, v6, v0, v1}, Lme/weishu/epic/art/Trampoline;-><init>(Lme/weishu/epic/art/arch/ShellCode;J)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/weishu/epic/art/Trampoline;

    .line 137
    invoke-virtual {v0, p0}, Lme/weishu/epic/art/Trampoline;->install(Lme/weishu/epic/art/method/ArtMethod;)Z

    move-result p0

    .line 139
    monitor-exit v2

    return p0

    :catchall_0
    move-exception p0

    .line 140
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setBackMethod(Lme/weishu/epic/art/method/ArtMethod;Lme/weishu/epic/art/method/ArtMethod;)V
    .locals 2

    const-class v0, Lme/weishu/epic/art/Epic;

    monitor-enter v0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 183
    sget-object v1, Lme/weishu/epic/art/Epic;->backupMethodsMapping:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
