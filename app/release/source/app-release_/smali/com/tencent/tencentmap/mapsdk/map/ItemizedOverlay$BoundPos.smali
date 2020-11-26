.class final enum Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BoundPos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

.field public static final enum Center:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

.field public static final enum CenterBottom:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

.field public static final enum Normal:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->Normal:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    const-string v3, "Center"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->Center:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    const-string v5, "CenterBottom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->CenterBottom:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->$VALUES:[Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;
    .locals 1

    const-class v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;
    .locals 1

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->$VALUES:[Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    invoke-virtual {v0}, [Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    return-object v0
.end method
