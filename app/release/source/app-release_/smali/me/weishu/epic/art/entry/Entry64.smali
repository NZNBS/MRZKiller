.class public Lme/weishu/epic/art/entry/Entry64;
.super Ljava/lang/Object;
.source "Entry64.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Entry64"

.field private static bridgeMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/weishu/epic/art/entry/Entry64;->bridgeMethodMap:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Class;

    .line 279
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_0

    .line 281
    aget-object v2, v1, v3

    .line 282
    sget-object v4, Lme/weishu/epic/art/entry/Entry64;->bridgeMethodMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Bridge"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_0
    sget-object v0, Lme/weishu/epic/art/entry/Entry64;->bridgeMethodMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "voidBridge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lme/weishu/epic/art/entry/Entry64;->bridgeMethodMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    const-string v2, "referenceBridge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static booleanBridge(JJJJJJJ)Z
    .locals 0

    .line 86
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static byteBridge(JJJJJJJ)B
    .locals 0

    .line 90
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method private static charBridge(JJJJJJJ)C
    .locals 0

    .line 98
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private static doubleBridge(JJJJJJJ)D
    .locals 0

    .line 114
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static floatBridge(JJJJJJJ)F
    .locals 0

    .line 110
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getBridgeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 290
    :try_start_0
    sget-object v0, Lme/weishu/epic/art/entry/Entry64;->bridgeMethodMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-class p0, Ljava/lang/Object;

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "Entry64"

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bridge method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lme/weishu/epic/art/entry/Entry64;->bridgeMethodMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-class v0, Lme/weishu/epic/art/entry/Entry64;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 294
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static intBridge(JJJJJJJ)I
    .locals 0

    .line 102
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static longBridge(JJJJJJJ)J
    .locals 0

    .line 106
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookBoolean(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static onHookByte(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)B
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method private static onHookChar(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)C
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private static onHookDouble(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookFloat(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static onHookInt(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static onHookLong(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookObject(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static onHookShort(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)S
    .locals 0

    .line 56
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method private static onHookVoid(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static referenceBridge(JJJJJJJ)Ljava/lang/Object;
    .locals 21

    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    const-string v12, "Entry64"

    const-string v13, "enter bridge function."

    .line 119
    invoke-static {v12, v13}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "self:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    const-string v14, "nativePeer"

    invoke-static {v13, v14}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v13

    .line 131
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "java thread native peer:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "struct:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    .line 135
    invoke-static {v2, v3, v10}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 137
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stack:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 139
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const-wide/16 v15, 0x8

    add-long v0, v2, v15

    .line 140
    invoke-static {v0, v1, v8}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v0

    const-wide/16 v17, 0x10

    move-wide/from16 v19, v10

    add-long v10, v2, v17

    .line 142
    invoke-static {v10, v11, v8}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    const-wide/16 v10, 0x18

    add-long/2addr v2, v10

    .line 144
    invoke-static {v2, v3, v8}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sourceMethod:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v2, v3}, Lme/weishu/epic/art/Epic;->getMethodInfo(J)Lme/weishu/epic/art/Epic$MethodInfo;

    move-result-object v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "originMethodInfo :"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-boolean v3, v2, Lme/weishu/epic/art/Epic$MethodInfo;->isStatic:Z

    .line 152
    iget v8, v2, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    .line 153
    iget-object v10, v2, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    .line 154
    new-array v11, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_9

    if-nez v8, :cond_0

    goto/16 :goto_1

    .line 164
    :cond_0
    aget-object v3, v10, v16

    invoke-static {v3, v13, v14, v9}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v11, v16

    if-ne v8, v15, :cond_1

    goto/16 :goto_1

    .line 166
    :cond_1
    aget-object v3, v10, v15

    invoke-static {v3, v13, v14, v0}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v15

    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    goto :goto_1

    .line 168
    :cond_2
    aget-object v3, v10, v0

    invoke-static {v3, v13, v14, v1}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    aget-object v1, v10, v0

    invoke-static {v1, v13, v14, v4, v5}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x4

    if-ne v8, v0, :cond_4

    goto :goto_1

    .line 172
    :cond_4
    aget-object v1, v10, v0

    invoke-static {v1, v13, v14, v6, v7}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x5

    if-ne v8, v0, :cond_5

    goto :goto_1

    .line 174
    :cond_5
    aget-object v1, v10, v0

    move-wide/from16 v3, p10

    invoke-static {v1, v13, v14, v3, v4}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x6

    if-ne v8, v0, :cond_6

    goto :goto_1

    .line 176
    :cond_6
    aget-object v1, v10, v0

    move-wide/from16 v3, p12

    invoke-static {v1, v13, v14, v3, v4}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x7

    if-ne v8, v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    if-ge v0, v8, :cond_8

    mul-int/lit8 v1, v0, 0x8

    int-to-long v3, v1

    add-long v3, v19, v3

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    const/16 v1, 0x8

    .line 180
    invoke-static {v3, v4, v1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v3

    .line 181
    aget-object v1, v10, v0

    invoke-static {v1, v13, v14, v3}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    move-object v9, v2

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_9
    move-object v9, v2

    move-wide/from16 v2, p0

    .line 187
    invoke-static {v13, v14, v2, v3}, Lme/weishu/epic/art/EpicNative;->getObject(JJ)Ljava/lang/Object;

    move-result-object v3

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "this :"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_a

    goto/16 :goto_3

    .line 192
    :cond_a
    aget-object v2, v10, v16

    invoke-static {v2, v13, v14, v0}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v16

    const/4 v0, 0x1

    if-ne v8, v0, :cond_b

    goto :goto_3

    .line 194
    :cond_b
    aget-object v2, v10, v0

    invoke-static {v2, v13, v14, v1}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    if-ne v8, v0, :cond_c

    goto :goto_3

    .line 196
    :cond_c
    aget-object v1, v10, v0

    invoke-static {v1, v13, v14, v4, v5}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x3

    if-ne v8, v0, :cond_d

    goto :goto_3

    .line 198
    :cond_d
    aget-object v1, v10, v0

    invoke-static {v1, v13, v14, v6, v7}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x4

    if-ne v8, v0, :cond_e

    goto :goto_3

    .line 200
    :cond_e
    aget-object v1, v10, v0

    move-wide/from16 v4, p10

    invoke-static {v1, v13, v14, v4, v5}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x5

    if-ne v8, v0, :cond_f

    goto :goto_3

    .line 202
    :cond_f
    aget-object v1, v10, v0

    move-wide/from16 v4, p12

    invoke-static {v1, v13, v14, v4, v5}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x6

    if-ne v8, v0, :cond_10

    goto :goto_3

    :cond_10
    const/4 v15, 0x6

    :goto_2
    if-ge v15, v8, :cond_11

    mul-int/lit8 v0, v15, 0x8

    int-to-long v0, v0

    add-long v0, v19, v0

    add-long v0, v0, v17

    const/16 v2, 0x8

    .line 206
    invoke-static {v0, v1, v2}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v0

    .line 207
    aget-object v1, v10, v15

    invoke-static {v1, v13, v14, v0}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 212
    :cond_11
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arguments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    .line 214
    iget-object v1, v0, Lme/weishu/epic/art/Epic$MethodInfo;->returnType:Ljava/lang/Class;

    .line 215
    iget-object v0, v0, Lme/weishu/epic/art/Epic$MethodInfo;->method:Lme/weishu/epic/art/method/ArtMethod;

    const-string v2, "leave bridge function"

    .line 217
    invoke-static {v12, v2}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_12

    .line 220
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookVoid(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 221
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 222
    :cond_12
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_13

    .line 223
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookChar(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 224
    :cond_13
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_14

    .line 225
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookByte(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 226
    :cond_14
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_15

    .line 227
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookShort(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 228
    :cond_15
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_16

    .line 229
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookInt(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 230
    :cond_16
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_17

    .line 231
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookLong(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 232
    :cond_17
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_18

    .line 233
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookFloat(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 234
    :cond_18
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_19

    .line 235
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookDouble(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 236
    :cond_19
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1a

    .line 237
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookBoolean(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1a
    invoke-static {v0, v3, v11}, Lme/weishu/epic/art/entry/Entry64;->onHookObject(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static shortBridge(JJJJJJJ)S
    .locals 0

    .line 94
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method private static voidBridge(JJJJJJJ)V
    .locals 0

    .line 82
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    return-void
.end method

.method private static wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;JJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 244
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lme/weishu/epic/art/entry/Entry64;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 248
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 249
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    .line 251
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_1

    .line 253
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 254
    :cond_1
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_2

    .line 255
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 256
    :cond_2
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_3

    .line 257
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 258
    :cond_3
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_4

    .line 259
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 260
    :cond_4
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_5

    .line 261
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 262
    :cond_5
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_6

    .line 263
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 264
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    .line 265
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 267
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 271
    invoke-static {p1, p2, v0, v1}, Lme/weishu/epic/art/EpicNative;->getObject(JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
