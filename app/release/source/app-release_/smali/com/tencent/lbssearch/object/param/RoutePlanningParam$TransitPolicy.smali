.class public final enum Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;
.super Ljava/lang/Enum;
.source "RoutePlanningParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/param/RoutePlanningParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

.field public static final enum LEAST_TIME:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

.field public static final enum LEAST_TRANSFER:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

.field public static final enum LEAST_WALKING:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 81
    new-instance v0, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    const-string v1, "LEAST_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;->LEAST_TIME:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    .line 85
    new-instance v1, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    const-string v3, "LEAST_TRANSFER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;->LEAST_TRANSFER:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    .line 90
    new-instance v3, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    const-string v5, "LEAST_WALKING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;->LEAST_WALKING:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 77
    sput-object v5, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;->$VALUES:[Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;
    .locals 1

    .line 77
    const-class v0, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    return-object p0
.end method

.method public static values()[Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;
    .locals 1

    .line 77
    sget-object v0, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;->$VALUES:[Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    invoke-virtual {v0}, [Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/lbssearch/object/param/RoutePlanningParam$TransitPolicy;

    return-object v0
.end method
