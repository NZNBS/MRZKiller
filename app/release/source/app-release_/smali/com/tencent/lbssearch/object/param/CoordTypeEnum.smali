.class public final enum Lcom/tencent/lbssearch/object/param/CoordTypeEnum;
.super Ljava/lang/Enum;
.source "CoordTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/lbssearch/object/param/CoordTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

.field public static final enum BAIDU:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

.field public static final enum DEFAULT:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

.field public static final enum GPS:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

.field public static final enum MAPBAR:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

.field public static final enum SOGOU:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

.field public static final enum SOGOUMERCATOR:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v0, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const-string v1, "GPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->GPS:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    .line 14
    new-instance v1, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const-string v3, "SOGOU"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->SOGOU:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    .line 15
    new-instance v3, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const-string v5, "BAIDU"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->BAIDU:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    .line 16
    new-instance v5, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const-string v7, "MAPBAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->MAPBAR:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    .line 17
    new-instance v7, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const-string v9, "DEFAULT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->DEFAULT:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    .line 18
    new-instance v9, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const-string v11, "SOGOUMERCATOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->SOGOUMERCATOR:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 12
    sput-object v11, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->$VALUES:[Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/CoordTypeEnum;
    .locals 1

    .line 12
    const-class v0, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/tencent/lbssearch/object/param/CoordTypeEnum;
    .locals 1

    .line 12
    sget-object v0, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->$VALUES:[Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    invoke-virtual {v0}, [Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    return-object v0
.end method
