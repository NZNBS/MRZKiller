.class public Lme/weishu/epic/art/entry/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# static fields
.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "Entry"

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

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 41
    sput-object v1, Lme/weishu/epic/art/entry/Entry;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 395
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lme/weishu/epic/art/entry/Entry;->bridgeMethodMap:Ljava/util/Map;

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Class;

    .line 398
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    aget-object v3, v2, v0

    .line 401
    sget-object v4, Lme/weishu/epic/art/entry/Entry;->bridgeMethodMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Bridge"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    sget-object v0, Lme/weishu/epic/art/entry/Entry;->bridgeMethodMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    const-string v2, "referenceBridge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lme/weishu/epic/art/entry/Entry;->bridgeMethodMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "voidBridge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static booleanBridge(III)Z
    .locals 0

    .line 91
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static byteBridge(III)B
    .locals 0

    .line 95
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method private static charBridge(III)C
    .locals 0

    .line 103
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private static constructArguments(Lme/weishu/epic/art/Epic$MethodInfo;I[B[B[BI)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/weishu/epic/art/Epic$MethodInfo;",
            "I[B[B[BI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 200
    iget-boolean v3, v0, Lme/weishu/epic/art/Epic$MethodInfo;->isStatic:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 214
    iget v6, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    .line 215
    iget-object v0, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    goto :goto_0

    .line 224
    :cond_0
    iget v6, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    add-int/2addr v6, v4

    .line 225
    new-array v7, v6, [Ljava/lang/Class;

    .line 226
    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v5

    .line 227
    iget-object v8, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    iget-object v0, v0, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    array-length v0, v0

    invoke-static {v8, v5, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v7

    .line 230
    :goto_0
    new-array v7, v6, [Ljava/lang/Object;

    .line 235
    new-array v8, v6, [I

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x4

    :goto_1
    if-ge v10, v6, :cond_1

    .line 238
    aget-object v12, v0, v10

    .line 239
    invoke-static {v12}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v12

    .line 240
    aput v11, v8, v10

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 245
    :cond_1
    new-array v10, v11, [B

    const/16 v12, 0x17

    const/16 v13, 0x10

    const/16 v14, 0xc

    const/16 v15, 0x8

    if-gt v11, v9, :cond_2

    goto :goto_4

    .line 250
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_3

    if-lez v6, :cond_3

    aget-object v4, v0, v5

    invoke-static {v4}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v4

    if-ne v4, v15, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 252
    invoke-static {v1, v5, v10, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    invoke-static {v2, v5, v10, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt v11, v14, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, p5, 0xc

    int-to-long v1, v1

    .line 255
    invoke-static {v1, v2, v9}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    invoke-static {v1, v5, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    move-object/from16 v4, p2

    .line 257
    invoke-static {v4, v5, v10, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt v11, v15, :cond_6

    goto :goto_4

    .line 260
    :cond_6
    invoke-static {v1, v5, v10, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gt v11, v14, :cond_7

    goto :goto_4

    .line 262
    :cond_7
    invoke-static {v2, v5, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    if-gt v11, v13, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, p5, 0x10

    int-to-long v1, v1

    add-int/lit8 v4, v11, -0x10

    .line 267
    invoke-static {v1, v2, v4}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    .line 268
    invoke-static {v1, v5, v10, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "Entry"

    if-ne v1, v12, :cond_13

    if-gt v11, v14, :cond_9

    goto/16 :goto_8

    :cond_9
    if-gt v11, v13, :cond_a

    .line 278
    aget-object v1, v0, v5

    invoke-static {v1}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v15, :cond_13

    add-int/lit8 v1, p5, 0x2c

    int-to-long v11, v1

    .line 280
    invoke-static {v11, v12, v9}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    invoke-static {v1, v5, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    :cond_a
    const/4 v1, 0x2

    if-lt v6, v1, :cond_d

    .line 287
    aget-object v4, v0, v5

    invoke-static {v4}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v4

    const/4 v12, 0x1

    .line 288
    aget-object v16, v0, v12

    invoke-static/range {v16 .. v16}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v12

    if-ne v4, v9, :cond_b

    if-ne v12, v15, :cond_b

    const/16 v16, 0x0

    goto :goto_5

    :cond_b
    const/16 v16, 0x1

    :goto_5
    if-ne v6, v1, :cond_c

    if-ne v4, v15, :cond_c

    if-ne v12, v15, :cond_c

    add-int/lit8 v4, p5, 0x2c

    move-object/from16 p0, v2

    int-to-long v1, v4

    .line 295
    invoke-static {v1, v2, v9}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    invoke-static {v1, v5, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 p0, v2

    move/from16 v12, v16

    goto :goto_6

    :cond_d
    move-object/from16 p0, v2

    const/4 v12, 0x1

    :goto_6
    const/4 v1, 0x3

    if-lt v6, v1, :cond_f

    .line 300
    aget-object v2, v0, v5

    invoke-static {v2}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v2

    const/4 v4, 0x1

    .line 301
    aget-object v16, v0, v4

    invoke-static/range {v16 .. v16}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v4

    const/16 v16, 0x2

    .line 302
    aget-object v16, v0, v16

    invoke-static/range {v16 .. v16}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v13

    if-ne v2, v9, :cond_e

    if-ne v4, v9, :cond_e

    if-ne v13, v9, :cond_e

    const/4 v12, 0x0

    :cond_e
    if-ne v6, v1, :cond_f

    if-ne v2, v15, :cond_f

    if-ne v4, v9, :cond_f

    if-ne v13, v15, :cond_f

    add-int/lit8 v1, p5, 0x34

    int-to-long v1, v1

    .line 309
    invoke-static {v1, v2, v9}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    invoke-static {v1, v5, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    :cond_f
    if-eqz v12, :cond_12

    const/16 v1, 0x10

    .line 314
    invoke-static {v10, v1, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 315
    array-length v2, v1

    add-int/lit8 v4, v2, 0x10

    const/4 v11, 0x0

    :goto_7
    add-int v12, p5, v4

    move v15, v6

    int-to-long v5, v12

    .line 318
    invoke-static {v5, v6, v2}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v5

    add-int/2addr v11, v2

    .line 320
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_10

    sub-int/2addr v12, v9

    int-to-long v1, v12

    .line 322
    invoke-static {v1, v2, v9}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found other arguments in stack, index:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", origin r3:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p0

    invoke-static {v5, v2}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 324
    invoke-static {v1, v2, v10, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_10
    move-object/from16 v5, p0

    const/16 v6, 0x400

    if-gt v11, v6, :cond_11

    add-int/lit8 v4, v4, 0x4

    move-object/from16 p0, v5

    move v6, v15

    const/4 v5, 0x0

    goto :goto_7

    .line 328
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not found the modify r3 register!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v5, p0

    goto :goto_9

    :cond_13
    :goto_8
    move-object v5, v2

    :goto_9
    move v15, v6

    .line 337
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x0

    invoke-static {v10, v11, v12}, Lcom/taobao/android/dexposed/utility/Debug;->hexdump([BJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v15

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v6, :cond_14

    .line 340
    aget-object v1, v0, v2

    .line 341
    aget v4, v8, v2

    .line 342
    invoke-static {v1}, Lme/weishu/epic/art/entry/Entry;->getTypeLength(Ljava/lang/Class;)I

    move-result v5

    add-int/2addr v5, v4

    .line 343
    invoke-static {v10, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move/from16 v5, p1

    .line 344
    invoke-static {v1, v5, v4}, Lme/weishu/epic/art/entry/Entry;->wrapArgument(Ljava/lang/Class;I[B)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    .line 350
    sget-object v1, Lme/weishu/epic/art/entry/Entry;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    if-eqz v3, :cond_15

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    .line 354
    aget-object v0, v7, v0

    const/4 v2, 0x1

    if-le v6, v2, :cond_16

    .line 357
    invoke-static {v7, v2, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    goto :goto_c

    :cond_16
    move-object v7, v1

    .line 361
    :goto_c
    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static doubleBridge(III)D
    .locals 0

    .line 119
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static floatBridge(III)F
    .locals 0

    .line 115
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

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

    .line 409
    :try_start_0
    sget-object v0, Lme/weishu/epic/art/entry/Entry;->bridgeMethodMap:Ljava/util/Map;

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

    const-string v0, "Entry"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bridge method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lme/weishu/epic/art/entry/Entry;->bridgeMethodMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-class v0, Lme/weishu/epic/art/entry/Entry;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 412
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 415
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getTypeLength(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 420
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x8

    return p0
.end method

.method private static intBridge(III)I
    .locals 0

    .line 107
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static longBridge(III)J
    .locals 0

    .line 111
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookBoolean(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static onHookByte(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)B
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method private static onHookChar(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)C
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private static onHookDouble(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookFloat(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static onHookInt(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static onHookLong(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookObject(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static onHookShort(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)S
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method private static onHookVoid(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static referenceBridge(III)Ljava/lang/Object;
    .locals 9

    const-string v0, "Entry"

    const-string v1, "enter bridge function."

    .line 124
    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 136
    invoke-static {v2, v3, v1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 140
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    add-int/lit8 p0, p2, 0x4

    int-to-long v2, p0

    .line 141
    invoke-static {v2, v3, v1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v6

    add-int/lit8 p0, p2, 0x8

    int-to-long v2, p0

    .line 143
    invoke-static {v2, v3, v1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v7

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r1:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    invoke-static {v5, v2, v3}, Lcom/taobao/android/dexposed/utility/Debug;->hexdump([BJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r2:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v2, v3}, Lcom/taobao/android/dexposed/utility/Debug;->hexdump([BJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r3:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v2, v3}, Lcom/taobao/android/dexposed/utility/Debug;->hexdump([BJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0xc

    int-to-long v2, p2

    .line 149
    invoke-static {v2, v3, v1}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sourceMethod:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p0

    .line 152
    invoke-static {v1, v2}, Lme/weishu/epic/art/Epic;->getMethodInfo(J)Lme/weishu/epic/art/Epic$MethodInfo;

    move-result-object p0

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originMethodInfo :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move v4, p1

    .line 155
    invoke-static/range {v3 .. v8}, Lme/weishu/epic/art/entry/Entry;->constructArguments(Lme/weishu/epic/art/Epic$MethodInfo;I[B[B[BI)Landroid/util/Pair;

    move-result-object p1

    .line 156
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 157
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arguments:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lme/weishu/epic/art/Epic$MethodInfo;->returnType:Ljava/lang/Class;

    .line 162
    iget-object p0, p0, Lme/weishu/epic/art/Epic$MethodInfo;->method:Lme/weishu/epic/art/method/ArtMethod;

    const-string v2, "leave bridge function"

    .line 164
    invoke-static {v0, v2}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    .line 167
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookVoid(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    .line 170
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookChar(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 171
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_2

    .line 172
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookByte(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 173
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_3

    .line 174
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookShort(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 175
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_4

    .line 176
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookInt(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 177
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_5

    .line 178
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookLong(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 179
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_6

    .line 180
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookFloat(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 181
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_7

    .line 182
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookDouble(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 183
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_8

    .line 184
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookBoolean(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 186
    :cond_8
    invoke-static {p0, p2, p1}, Lme/weishu/epic/art/entry/Entry;->onHookObject(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static shortBridge(III)S
    .locals 0

    .line 99
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method private static voidBridge(III)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/entry/Entry;->referenceBridge(III)Ljava/lang/Object;

    return-void
.end method

.method private static wrapArgument(Ljava/lang/Class;I[B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 365
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrapArgument: type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Entry"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 368
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    .line 369
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 370
    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_1

    .line 371
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 372
    :cond_1
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_2

    .line 373
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 374
    :cond_2
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_3

    .line 375
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 376
    :cond_3
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_4

    .line 377
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 378
    :cond_4
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_5

    .line 379
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 380
    :cond_5
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_6

    .line 381
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 382
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    .line 383
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 385
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p1, p1

    int-to-long v0, p0

    .line 389
    invoke-static {p1, p2, v0, v1}, Lme/weishu/epic/art/EpicNative;->getObject(JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
