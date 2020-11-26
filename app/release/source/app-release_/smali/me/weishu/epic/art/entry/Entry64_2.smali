.class public Lme/weishu/epic/art/entry/Entry64_2;
.super Ljava/lang/Object;
.source "Entry64_2.java"


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

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/weishu/epic/art/entry/Entry64_2;->bridgeMethodMap:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Class;

    .line 492
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

    .line 494
    aget-object v2, v1, v3

    .line 495
    sget-object v4, Lme/weishu/epic/art/entry/Entry64_2;->bridgeMethodMap:Ljava/util/Map;

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

    .line 497
    :cond_0
    sget-object v0, Lme/weishu/epic/art/entry/Entry64_2;->bridgeMethodMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "voidBridge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lme/weishu/epic/art/entry/Entry64_2;->bridgeMethodMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    const-string v2, "referenceBridge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static booleanBridge(JJ)Z
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 109
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static booleanBridge(JJJ)Z
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 113
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static booleanBridge(JJJJ)Z
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 117
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static booleanBridge(JJJJJ)Z
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 121
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static booleanBridge(JJJJJJ)Z
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 125
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static booleanBridge(JJJJJJJ)Z
    .locals 0

    .line 129
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static byteBridge(JJ)B
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 135
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method private static byteBridge(JJJ)B
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 139
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method private static byteBridge(JJJJ)B
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 143
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method private static byteBridge(JJJJJ)B
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 147
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method private static byteBridge(JJJJJJ)B
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 151
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method private static byteBridge(JJJJJJJ)B
    .locals 0

    .line 155
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method private static charBridge(JJ)C
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 187
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method private static charBridge(JJJ)C
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 191
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method private static charBridge(JJJJ)C
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 195
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method private static charBridge(JJJJJ)C
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 199
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method private static charBridge(JJJJJJ)C
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 203
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method private static charBridge(JJJJJJJ)C
    .locals 0

    .line 207
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private static doubleBridge(JJ)D
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 291
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static doubleBridge(JJJ)D
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 295
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static doubleBridge(JJJJ)D
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 299
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static doubleBridge(JJJJJ)D
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 303
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static doubleBridge(JJJJJJ)D
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 307
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static doubleBridge(JJJJJJJ)D
    .locals 0

    .line 311
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static floatBridge(JJ)F
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 265
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static floatBridge(JJJ)F
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 269
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static floatBridge(JJJJ)F
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 273
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static floatBridge(JJJJJ)F
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 277
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static floatBridge(JJJJJJ)F
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 281
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static floatBridge(JJJJJJJ)F
    .locals 0

    .line 285
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getBridgeMethod(Lme/weishu/epic/art/Epic$MethodInfo;)Ljava/lang/reflect/Method;
    .locals 5

    .line 503
    :try_start_0
    iget-object v0, p0, Lme/weishu/epic/art/Epic$MethodInfo;->returnType:Ljava/lang/Class;

    .line 504
    iget-boolean v1, p0, Lme/weishu/epic/art/Epic$MethodInfo;->isStatic:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget p0, p0, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    add-int/2addr p0, v2

    :goto_0
    const/4 v1, 0x2

    if-gt p0, v1, :cond_1

    const/4 p0, 0x2

    .line 509
    :cond_1
    new-array v1, p0, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_2

    .line 511
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 514
    :cond_2
    sget-object p0, Lme/weishu/epic/art/entry/Entry64_2;->bridgeMethodMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-class v0, Ljava/lang/Object;

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "Entry64"

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bridge method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", map:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lme/weishu/epic/art/entry/Entry64_2;->bridgeMethodMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-class v0, Lme/weishu/epic/art/entry/Entry64_2;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 517
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 520
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not found bridge."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static intBridge(JJ)I
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 213
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static intBridge(JJJ)I
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 217
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static intBridge(JJJJ)I
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 221
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static intBridge(JJJJJ)I
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 225
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static intBridge(JJJJJJ)I
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 229
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static intBridge(JJJJJJJ)I
    .locals 0

    .line 233
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static longBridge(JJ)J
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 239
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static longBridge(JJJ)J
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 243
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static longBridge(JJJJ)J
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 247
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static longBridge(JJJJJ)J
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 251
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static longBridge(JJJJJJ)J
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 255
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static longBridge(JJJJJJJ)J
    .locals 0

    .line 259
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookBoolean(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static onHookByte(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)B
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method private static onHookChar(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)C
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method private static onHookDouble(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookFloat(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static onHookInt(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static onHookLong(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static onHookObject(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static onHookShort(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)S
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method private static onHookVoid(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 69
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->handleHookedArtMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static referenceBridge(JJ)Ljava/lang/Object;
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 317
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static referenceBridge(JJJ)Ljava/lang/Object;
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 321
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static referenceBridge(JJJJ)Ljava/lang/Object;
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 325
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static referenceBridge(JJJJJ)Ljava/lang/Object;
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 329
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static referenceBridge(JJJJJJ)Ljava/lang/Object;
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 333
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static referenceBridge(JJJJJJJ)Ljava/lang/Object;
    .locals 23

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    const-string v14, "Entry64"

    const-string v15, "enter bridge function."

    .line 338
    invoke-static {v14, v15}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    const-string v12, "nativePeer"

    invoke-static {v15, v12}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v12

    .line 347
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "java thread native peer:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "struct:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x18

    invoke-static {v2, v3, v11}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v11

    invoke-static {v11, v2, v3}, Lcom/taobao/android/dexposed/utility/Debug;->hexdump([BJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    .line 352
    invoke-static {v2, v3, v10}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 354
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stack:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 356
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    const-wide/16 v16, 0x8

    add-long v0, v2, v16

    .line 357
    invoke-static {v0, v1, v8}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v0

    const-wide/16 v18, 0x10

    add-long v1, v2, v18

    .line 359
    invoke-static {v1, v2, v8}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sourceMethod:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v1, v2}, Lme/weishu/epic/art/Epic;->getMethodInfo(J)Lme/weishu/epic/art/Epic$MethodInfo;

    move-result-object v1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originMethodInfo :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-boolean v2, v1, Lme/weishu/epic/art/Epic$MethodInfo;->isStatic:Z

    .line 367
    iget v3, v1, Lme/weishu/epic/art/Epic$MethodInfo;->paramNumber:I

    .line 368
    iget-object v8, v1, Lme/weishu/epic/art/Epic$MethodInfo;->paramTypes:[Ljava/lang/Class;

    .line 369
    new-array v15, v3, [Ljava/lang/Object;

    move-object/from16 p3, v1

    const/16 v20, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_9

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 377
    :cond_0
    aget-object v2, v8, v20

    invoke-static {v2, v12, v13, v9}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v15, v20

    if-ne v3, v1, :cond_1

    goto/16 :goto_1

    .line 379
    :cond_1
    aget-object v2, v8, v1

    invoke-static {v2, v12, v13, v0}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v15, v1

    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 381
    :cond_2
    aget-object v1, v8, v0

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    goto :goto_1

    .line 383
    :cond_3
    aget-object v1, v8, v0

    invoke-static {v1, v12, v13, v6, v7}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x4

    if-ne v3, v0, :cond_4

    goto :goto_1

    .line 385
    :cond_4
    aget-object v1, v8, v0

    move-wide/from16 v4, p8

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x5

    if-ne v3, v0, :cond_5

    goto :goto_1

    .line 387
    :cond_5
    aget-object v1, v8, v0

    move-wide/from16 v4, p10

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x6

    if-ne v3, v0, :cond_6

    goto :goto_1

    .line 389
    :cond_6
    aget-object v1, v8, v0

    move-wide/from16 v4, p12

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x7

    if-ne v3, v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_0
    if-ge v0, v3, :cond_8

    mul-int/lit8 v1, v0, 0x8

    int-to-long v1, v1

    add-long/2addr v1, v10

    add-long v1, v1, v16

    const/16 v4, 0x8

    .line 393
    invoke-static {v1, v2, v4}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v1

    .line 394
    aget-object v4, v8, v0

    invoke-static {v4, v12, v13, v1}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_9
    move-wide/from16 v1, p0

    move-wide/from16 v21, v10

    move-wide/from16 v9, p8

    .line 400
    invoke-static {v12, v13, v1, v2}, Lme/weishu/epic/art/EpicNative;->getObject(JJ)Ljava/lang/Object;

    move-result-object v2

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "this :"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_a

    goto/16 :goto_3

    .line 405
    :cond_a
    aget-object v1, v8, v20

    invoke-static {v1, v12, v13, v0}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v15, v20

    const/4 v0, 0x1

    if-ne v3, v0, :cond_b

    goto :goto_3

    .line 407
    :cond_b
    aget-object v1, v8, v0

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x2

    if-ne v3, v0, :cond_c

    goto :goto_3

    .line 409
    :cond_c
    aget-object v1, v8, v0

    invoke-static {v1, v12, v13, v6, v7}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x3

    if-ne v3, v0, :cond_d

    goto :goto_3

    .line 411
    :cond_d
    aget-object v1, v8, v0

    invoke-static {v1, v12, v13, v9, v10}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x4

    if-ne v3, v0, :cond_e

    goto :goto_3

    .line 413
    :cond_e
    aget-object v1, v8, v0

    move-wide/from16 v4, p10

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x5

    if-ne v3, v0, :cond_f

    goto :goto_3

    .line 415
    :cond_f
    aget-object v1, v8, v0

    move-wide/from16 v4, p12

    invoke-static {v1, v12, v13, v4, v5}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;JJ)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v0

    const/4 v0, 0x6

    if-ne v3, v0, :cond_10

    goto :goto_3

    :cond_10
    const/4 v1, 0x6

    :goto_2
    if-ge v1, v3, :cond_11

    mul-int/lit8 v0, v1, 0x8

    int-to-long v4, v0

    add-long v10, v21, v4

    add-long v10, v10, v18

    const/16 v0, 0x8

    .line 419
    invoke-static {v10, v11, v0}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object v4

    .line 420
    aget-object v5, v8, v1

    invoke-static {v5, v12, v13, v4}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 425
    :cond_11
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arguments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    .line 427
    iget-object v1, v0, Lme/weishu/epic/art/Epic$MethodInfo;->returnType:Ljava/lang/Class;

    .line 428
    iget-object v0, v0, Lme/weishu/epic/art/Epic$MethodInfo;->method:Lme/weishu/epic/art/method/ArtMethod;

    const-string v3, "leave bridge function"

    .line 430
    invoke-static {v14, v3}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_12

    .line 433
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookVoid(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 434
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 435
    :cond_12
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_13

    .line 436
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookChar(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 437
    :cond_13
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_14

    .line 438
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookByte(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 439
    :cond_14
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_15

    .line 440
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookShort(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 441
    :cond_15
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_16

    .line 442
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookInt(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 443
    :cond_16
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_17

    .line 444
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookLong(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 445
    :cond_17
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_18

    .line 446
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookFloat(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 447
    :cond_18
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_19

    .line 448
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookDouble(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 449
    :cond_19
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1a

    .line 450
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookBoolean(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 452
    :cond_1a
    invoke-static {v0, v2, v15}, Lme/weishu/epic/art/entry/Entry64_2;->onHookObject(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static shortBridge(JJ)S
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 161
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method private static shortBridge(JJJ)S
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 165
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method private static shortBridge(JJJJ)S
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 169
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method private static shortBridge(JJJJJ)S
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 173
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method private static shortBridge(JJJJJJ)S
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 177
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method private static shortBridge(JJJJJJJ)S
    .locals 0

    .line 181
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method private static voidBridge(JJ)V
    .locals 14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    .line 83
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    return-void
.end method

.method private static voidBridge(JJJ)V
    .locals 14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 87
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    return-void
.end method

.method private static voidBridge(JJJJ)V
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 91
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    return-void
.end method

.method private static voidBridge(JJJJJ)V
    .locals 14

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 95
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    return-void
.end method

.method private static voidBridge(JJJJJJ)V
    .locals 14

    const-wide/16 v12, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 99
    invoke-static/range {v0 .. v13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

    return-void
.end method

.method private static voidBridge(JJJJJJJ)V
    .locals 0

    .line 103
    invoke-static/range {p0 .. p13}, Lme/weishu/epic/art/entry/Entry64_2;->referenceBridge(JJJJJJJ)Ljava/lang/Object;

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

    .line 457
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lme/weishu/epic/art/entry/Entry64_2;->wrapArgument(Ljava/lang/Class;J[B)Ljava/lang/Object;

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

    .line 461
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 462
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 463
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    .line 464
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 465
    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_1

    .line 466
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 467
    :cond_1
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_2

    .line 468
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 469
    :cond_2
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_3

    .line 470
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 471
    :cond_3
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_4

    .line 472
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 473
    :cond_4
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_5

    .line 474
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 475
    :cond_5
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_6

    .line 476
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 477
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    .line 478
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

    .line 480
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

    .line 483
    :cond_9
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 484
    invoke-static {p1, p2, v0, v1}, Lme/weishu/epic/art/EpicNative;->getObject(JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
