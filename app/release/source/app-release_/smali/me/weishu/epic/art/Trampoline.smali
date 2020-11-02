.class Lme/weishu/epic/art/Trampoline;
.super Ljava/lang/Object;
.source "Trampoline.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Trampoline"


# instance fields
.field private active:Z

.field private final jumpToAddress:J

.field private final originalCode:[B

.field private segments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lme/weishu/epic/art/method/ArtMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final shellCode:Lme/weishu/epic/art/arch/ShellCode;

.field private trampolineAddress:J

.field private trampolineSize:I


# direct methods
.method constructor <init>(Lme/weishu/epic/art/arch/ShellCode;J)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lme/weishu/epic/art/Trampoline;->segments:Ljava/util/Set;

    .line 46
    iput-object p1, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    .line 47
    invoke-virtual {p1, p2, p3}, Lme/weishu/epic/art/arch/ShellCode;->toMem(J)J

    move-result-wide p2

    iput-wide p2, p0, Lme/weishu/epic/art/Trampoline;->jumpToAddress:J

    .line 48
    invoke-virtual {p1}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result p1

    invoke-static {p2, p3, p1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object p1

    iput-object p1, p0, Lme/weishu/epic/art/Trampoline;->originalCode:[B

    return-void
.end method

.method private activate()Z
    .locals 10

    .line 132
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getTrampolinePc()J

    move-result-wide v2

    const-string v0, "Trampoline"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing direct jump entry "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to origin entry: 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lme/weishu/epic/art/Trampoline;->jumpToAddress:J

    invoke-static {v4, v5}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-class v9, Lme/weishu/epic/art/Trampoline;

    monitor-enter v9

    .line 135
    :try_start_0
    iget-wide v0, p0, Lme/weishu/epic/art/Trampoline;->jumpToAddress:J

    iget-object v4, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {v4}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    .line 136
    invoke-virtual {v6}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfBridgeJump()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {v8, v2, v3}, Lme/weishu/epic/art/arch/ShellCode;->createDirectJump(J)[B

    move-result-object v8

    .line 135
    invoke-static/range {v0 .. v8}, Lme/weishu/epic/art/EpicNative;->activateNative(JJJJ[B)Z

    move-result v0

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    .line 137
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private alloc()V
    .locals 5

    .line 86
    iget-wide v0, p0, Lme/weishu/epic/art/Trampoline;->trampolineAddress:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 87
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->free()V

    .line 89
    :cond_0
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getSize()I

    move-result v0

    iput v0, p0, Lme/weishu/epic/art/Trampoline;->trampolineSize:I

    .line 90
    invoke-static {v0}, Lme/weishu/epic/art/EpicNative;->map(I)J

    move-result-wide v0

    iput-wide v0, p0, Lme/weishu/epic/art/Trampoline;->trampolineAddress:J

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trampoline alloc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lme/weishu/epic/art/Trampoline;->trampolineSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", addr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/weishu/epic/art/Trampoline;->trampolineAddress:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trampoline"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private create()[B
    .locals 7

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create trampoline."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/weishu/epic/art/Trampoline;->segments:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trampoline"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 118
    iget-object v1, p0, Lme/weishu/epic/art/Trampoline;->segments:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/weishu/epic/art/method/ArtMethod;

    .line 119
    invoke-direct {p0, v4}, Lme/weishu/epic/art/Trampoline;->createTrampoline(Lme/weishu/epic/art/method/ArtMethod;)[B

    move-result-object v4

    .line 120
    array-length v5, v4

    .line 121
    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    iget-wide v4, p0, Lme/weishu/epic/art/Trampoline;->jumpToAddress:J

    iget-object v6, p0, Lme/weishu/epic/art/Trampoline;->originalCode:[B

    invoke-virtual {v1, v4, v5, v6}, Lme/weishu/epic/art/arch/ShellCode;->createCallOrigin(J[B)[B

    move-result-object v1

    .line 126
    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private createTrampoline(Lme/weishu/epic/art/method/ArtMethod;)[B
    .locals 10

    .line 147
    invoke-virtual {p1}, Lme/weishu/epic/art/method/ArtMethod;->getAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Lme/weishu/epic/art/Epic;->getMethodInfo(J)Lme/weishu/epic/art/Epic$MethodInfo;

    move-result-object v0

    .line 148
    iget-object v0, v0, Lme/weishu/epic/art/Epic$MethodInfo;->returnType:Ljava/lang/Class;

    .line 152
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->is64Bit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lme/weishu/epic/art/entry/Entry64;->getBridgeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {v0}, Lme/weishu/epic/art/entry/Entry;->getBridgeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    :goto_0
    invoke-static {v0}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lme/weishu/epic/art/method/ArtMethod;->getAddress()J

    move-result-wide v2

    .line 157
    invoke-virtual {v0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v4

    .line 158
    invoke-virtual {p1}, Lme/weishu/epic/art/method/ArtMethod;->getAddress()J

    move-result-wide v6

    const/4 p1, 0x4

    .line 159
    invoke-static {p1}, Lme/weishu/epic/art/EpicNative;->malloc(I)J

    move-result-wide v8

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "targetAddress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/taobao/android/dexposed/utility/Debug;->longHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trampoline"

    invoke-static {v0, p1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sourceAddress:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/taobao/android/dexposed/utility/Debug;->longHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetEntry:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/taobao/android/dexposed/utility/Debug;->longHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "structAddress:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/taobao/android/dexposed/utility/Debug;->longHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual/range {v1 .. v9}, Lme/weishu/epic/art/arch/ShellCode;->createBridgeJump(JJJJ)[B

    move-result-object p1

    return-object p1
.end method

.method private free()V
    .locals 5

    .line 95
    iget-wide v0, p0, Lme/weishu/epic/art/Trampoline;->trampolineAddress:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 96
    iget v4, p0, Lme/weishu/epic/art/Trampoline;->trampolineSize:I

    invoke-static {v0, v1, v4}, Lme/weishu/epic/art/EpicNative;->unmap(JI)Z

    .line 97
    iput-wide v2, p0, Lme/weishu/epic/art/Trampoline;->trampolineAddress:J

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lme/weishu/epic/art/Trampoline;->trampolineSize:I

    .line 101
    :cond_0
    iget-boolean v0, p0, Lme/weishu/epic/art/Trampoline;->active:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lme/weishu/epic/art/Trampoline;->originalCode:[B

    iget-wide v1, p0, Lme/weishu/epic/art/Trampoline;->jumpToAddress:J

    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/EpicNative;->put([BJ)V

    :cond_1
    return-void
.end method

.method private getSize()I
    .locals 2

    .line 108
    iget-object v0, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {v0}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfBridgeJump()I

    move-result v0

    iget-object v1, p0, Lme/weishu/epic/art/Trampoline;->segments:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 109
    iget-object v1, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {v1}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfCallOrigin()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTrampolineAddress()J
    .locals 2

    .line 75
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getSize()I

    move-result v0

    iget v1, p0, Lme/weishu/epic/art/Trampoline;->trampolineSize:I

    if-eq v0, v1, :cond_0

    .line 76
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->alloc()V

    .line 78
    :cond_0
    iget-wide v0, p0, Lme/weishu/epic/art/Trampoline;->trampolineAddress:J

    return-wide v0
.end method

.method private getTrampolinePc()J
    .locals 3

    .line 82
    iget-object v0, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getTrampolineAddress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/arch/ShellCode;->toPC(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->free()V

    .line 143
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public install(Lme/weishu/epic/art/method/ArtMethod;)Z
    .locals 5

    .line 52
    iget-object v0, p0, Lme/weishu/epic/art/Trampoline;->segments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Trampoline"

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already hooked, return."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 59
    :cond_0
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->create()[B

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getTrampolineAddress()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lme/weishu/epic/art/EpicNative;->put([BJ)V

    .line 62
    invoke-static {p1}, Lme/weishu/epic/art/Epic;->getQuickCompiledCodeSize(Lme/weishu/epic/art/method/ArtMethod;)I

    move-result v0

    .line 63
    iget-object v3, p0, Lme/weishu/epic/art/Trampoline;->shellCode:Lme/weishu/epic/art/arch/ShellCode;

    invoke-virtual {v3}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lme/weishu/epic/art/method/ArtMethod;->toGenericString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " quickCompiledCodeSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/dexposed/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->getTrampolinePc()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lme/weishu/epic/art/method/ArtMethod;->setEntryPointFromQuickCompiledCode(J)V

    return v1

    .line 71
    :cond_1
    invoke-direct {p0}, Lme/weishu/epic/art/Trampoline;->activate()Z

    move-result p1

    return p1
.end method
