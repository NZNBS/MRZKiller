.class public Lme/weishu/epic/art/method/ArtMethod;
.super Ljava/lang/Object;
.source "ArtMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtMethod"

.field private static artMethodSize:I = -0x1


# instance fields
.field private address:J

.field private constructor:Ljava/lang/reflect/Constructor;

.field private method:Ljava/lang/reflect/Method;

.field private origin:Lme/weishu/epic/art/method/ArtMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    .line 78
    invoke-direct {p0}, Lme/weishu/epic/art/method/ArtMethod;->init()V

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "constructor can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    .line 86
    invoke-direct {p0}, Lme/weishu/epic/art/method/ArtMethod;->init()V

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getArtMethodSize()I
    .locals 4

    .line 423
    const-class v0, Lme/weishu/epic/art/method/ArtMethod;

    sget v1, Lme/weishu/epic/art/method/ArtMethod;->artMethodSize:I

    if-lez v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "rule1"

    .line 426
    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Class;

    const-string v3, "rule2"

    .line 427
    invoke-static {v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lme/weishu/epic/art/EpicNative;->getMethodAddress(Ljava/lang/reflect/Member;)J

    move-result-wide v0

    .line 429
    invoke-static {v2}, Lme/weishu/epic/art/EpicNative;->getMethodAddress(Ljava/lang/reflect/Member;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 430
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v2, v0

    .line 431
    sput v2, Lme/weishu/epic/art/method/ArtMethod;->artMethodSize:I

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "art Method size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArtMethod"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget v0, Lme/weishu/epic/art/method/ArtMethod;->artMethodSize:I

    return v0
.end method

.method public static getQuickToInterpreterBridge()J
    .locals 4

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 447
    :cond_0
    const-class v0, Lcom/taobao/android/dexposed/utility/NeverCalled;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "fake"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v0

    invoke-virtual {v0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .locals 2

    .line 90
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Lme/weishu/epic/art/EpicNative;->getMethodAddress(Ljava/lang/reflect/Member;)J

    move-result-wide v0

    iput-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lme/weishu/epic/art/EpicNative;->getMethodAddress(Ljava/lang/reflect/Member;)J

    move-result-wide v0

    iput-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    :goto_0
    return-void
.end method

.method private varargs invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 268
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lme/weishu/epic/art/method/ArtMethod;
    .locals 1

    .line 102
    new-instance v0, Lme/weishu/epic/art/method/ArtMethod;

    invoke-direct {v0, p0}, Lme/weishu/epic/art/method/ArtMethod;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;
    .locals 1

    .line 98
    new-instance v0, Lme/weishu/epic/art/method/ArtMethod;

    invoke-direct {v0, p0}, Lme/weishu/epic/art/method/ArtMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method private rule1()V
    .locals 2

    const-string v0, "ArtMethod"

    const-string v1, "do not inline me!!"

    .line 437
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rule2()V
    .locals 2

    const-string v0, "ArtMethod"

    const-string v1, "do not inline me!!"

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static searchOffset(JJI)J
    .locals 9

    const-wide/16 v0, 0x4

    .line 465
    div-long/2addr p2, v0

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    mul-long v4, v2, v0

    add-long v6, p0, v4

    const/4 v8, 0x4

    .line 468
    invoke-static {v6, v7, v8}, Lme/weishu/epic/art/EpicNative;->memget(JI)[B

    move-result-object v6

    .line 469
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    if-ne v6, p4, :cond_0

    return-wide v4

    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static searchOffset(JJJ)J
    .locals 9

    const-wide/16 v0, 0x4

    .line 479
    div-long/2addr p2, v0

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    mul-long v4, v2, v0

    add-long v6, p0, v4

    const/4 v8, 0x4

    .line 482
    invoke-static {v6, v7, v8}, Lme/weishu/epic/art/EpicNative;->memget(JI)[B

    move-result-object v6

    const/16 v7, 0x8

    .line 483
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    cmp-long v8, v6, p4

    if-nez v8, :cond_0

    return-wide v4

    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method


# virtual methods
.method public backup()Lme/weishu/epic/art/method/ArtMethod;
    .locals 10

    .line 110
    :try_start_0
    const-class v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getExecutable()Ljava/lang/Object;

    move-result-object v1

    .line 114
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "artMethod"

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v4, :cond_3

    :try_start_1
    const-string v2, "java.lang.reflect.ArtMethod"

    .line 115
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v8, v3, v7

    .line 129
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 130
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    :cond_1
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 134
    :cond_2
    const-class v0, Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 135
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    invoke-static {v0}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromQuickCompiledCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/ArtMethod;->setEntryPointFromQuickCompiledCode(J)V

    .line 139
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getEntryPointFromJni()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/ArtMethod;->setEntryPointFromJni(J)V

    goto :goto_3

    .line 141
    :cond_3
    const-class v2, Ljava/lang/reflect/Method;

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 144
    const-class v7, Ljava/lang/reflect/AccessibleObject;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v8, v4, :cond_4

    const-string v4, "flag"

    goto :goto_1

    :cond_4
    const-string v4, "override"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 146
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v4, v5, [Ljava/lang/Object;

    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 150
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v7, v4

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v8, v4, v5

    .line 152
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 153
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 155
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    invoke-static {}, Lme/weishu/epic/art/method/ArtMethod;->getArtMethodSize()I

    move-result v1

    .line 158
    invoke-static {v1}, Lme/weishu/epic/art/EpicNative;->map(I)J

    move-result-wide v3

    .line 160
    iget-wide v7, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    invoke-static {v7, v8, v1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    .line 161
    invoke-static {v1, v3, v4}, Lme/weishu/epic/art/EpicNative;->put([BJ)V

    .line 162
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-static {v2}, Lme/weishu/epic/art/method/ArtMethod;->of(Ljava/lang/reflect/Method;)Lme/weishu/epic/art/method/ArtMethod;

    move-result-object v0

    .line 165
    :goto_3
    invoke-virtual {v0}, Lme/weishu/epic/art/method/ArtMethod;->makePrivate()V

    .line 166
    invoke-virtual {v0, v6}, Lme/weishu/epic/art/method/ArtMethod;->setAccessible(Z)V

    .line 167
    iput-object p0, v0, Lme/weishu/epic/art/method/ArtMethod;->origin:Lme/weishu/epic/art/method/ArtMethod;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "ArtMethod"

    const-string v2, "backup method error:"

    .line 172
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create backup method from :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getExecutable()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compile()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 227
    invoke-static {v0}, Lme/weishu/epic/art/EpicNative;->compileMethod(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lme/weishu/epic/art/EpicNative;->compileMethod(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public ensureResolved()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const-string v1, "ArtMethod"

    if-nez v0, :cond_0

    const-string v0, "not static, ignore."

    .line 372
    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 377
    invoke-virtual {p0, v0, v2}, Lme/weishu/epic/art/method/ArtMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ensure resolved"

    .line 378
    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getAccessFlags()I
    .locals 3

    .line 403
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    sget-object v2, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->read(JLme/weishu/epic/art/method/Offset;)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getAddress()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    return-wide v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPointFromJni()J
    .locals 3

    .line 415
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    sget-object v2, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->read(JLme/weishu/epic/art/method/Offset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntryPointFromQuickCompiledCode()J
    .locals 3

    .line 389
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    sget-object v2, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->read(JLme/weishu/epic/art/method/Offset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExceptionTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getExecutable()Ljava/lang/Object;
    .locals 1

    .line 332
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    return-object v0

    .line 335
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getFieldOffset()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .line 353
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getAddress()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 277
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 302
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 245
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->origin:Lme/weishu/epic/art/method/ArtMethod;

    if-eqz v0, :cond_1

    .line 246
    iget-wide v0, v0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v0

    .line 247
    iget-wide v3, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    invoke-static {v3, v4, v2}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-wide v1, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/EpicNative;->put([BJ)V

    .line 254
    invoke-direct {p0, p1, p2}, Lme/weishu/epic/art/method/ArtMethod;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "ArtMethod"

    const-string v1, "the address is same with last invoke, not moved by gc"

    .line 256
    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2}, Lme/weishu/epic/art/method/ArtMethod;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isAccessible()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public makePrivate()V
    .locals 1

    .line 360
    invoke-virtual {p0}, Lme/weishu/epic/art/method/ArtMethod;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    or-int/lit8 v0, v0, 0x2

    .line 363
    invoke-virtual {p0, v0}, Lme/weishu/epic/art/method/ArtMethod;->setAccessFlags(I)V

    return-void
.end method

.method public setAccessFlags(I)V
    .locals 5

    .line 407
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    sget-object v2, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lme/weishu/epic/art/method/Offset;->write(JLme/weishu/epic/art/method/Offset;J)V

    return-void
.end method

.method public setAccessible(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_0
    return-void
.end method

.method public setEntryPointFromJni(J)V
    .locals 3

    .line 411
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    sget-object v2, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-static {v0, v1, v2, p1, p2}, Lme/weishu/epic/art/method/Offset;->write(JLme/weishu/epic/art/method/Offset;J)V

    return-void
.end method

.method public setEntryPointFromQuickCompiledCode(J)V
    .locals 3

    .line 396
    iget-wide v0, p0, Lme/weishu/epic/art/method/ArtMethod;->address:J

    sget-object v2, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-static {v0, v1, v2, p1, p2}, Lme/weishu/epic/art/method/Offset;->write(JLme/weishu/epic/art/method/Offset;J)V

    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lme/weishu/epic/art/method/ArtMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
