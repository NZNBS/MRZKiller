.class public final enum Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mapsdk/rastercore/tile/MapTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

.field public static final enum BING:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

.field public static final enum CUSTOMER:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

.field public static final enum SATELLITE:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

.field public static final enum TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

.field public static final enum TRAFFIC:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const-string v1, "TENCENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TENCENT:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const-string v3, "BING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->BING:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    new-instance v3, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const-string v5, "SATELLITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->SATELLITE:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    new-instance v5, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const-string v7, "TRAFFIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->TRAFFIC:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    new-instance v7, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const-string v9, "CUSTOMER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->CUSTOMER:Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->$VALUES:[Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;
    .locals 1

    const-class v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;
    .locals 1

    sget-object v0, Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->$VALUES:[Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    invoke-virtual {v0}, [Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mapsdk/rastercore/tile/MapTile$MapSource;

    return-object v0
.end method
