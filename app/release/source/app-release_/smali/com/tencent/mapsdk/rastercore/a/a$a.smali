.class public final enum Lcom/tencent/mapsdk/rastercore/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mapsdk/rastercore/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mapsdk/rastercore/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/mapsdk/rastercore/a/a$a;

.field public static final enum b:Lcom/tencent/mapsdk/rastercore/a/a$a;

.field public static final enum c:Lcom/tencent/mapsdk/rastercore/a/a$a;

.field private static final synthetic d:[Lcom/tencent/mapsdk/rastercore/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/mapsdk/rastercore/a/a$a;

    const-string v1, "ACCELERATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/rastercore/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapsdk/rastercore/a/a$a;->a:Lcom/tencent/mapsdk/rastercore/a/a$a;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/a/a$a;

    const-string v3, "DECELERATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/mapsdk/rastercore/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/mapsdk/rastercore/a/a$a;->b:Lcom/tencent/mapsdk/rastercore/a/a$a;

    new-instance v3, Lcom/tencent/mapsdk/rastercore/a/a$a;

    const-string v5, "ACCELERATE_DECELERATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/mapsdk/rastercore/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/mapsdk/rastercore/a/a$a;->c:Lcom/tencent/mapsdk/rastercore/a/a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tencent/mapsdk/rastercore/a/a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tencent/mapsdk/rastercore/a/a$a;->d:[Lcom/tencent/mapsdk/rastercore/a/a$a;

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

.method public static a()[Lcom/tencent/mapsdk/rastercore/a/a$a;
    .locals 1

    sget-object v0, Lcom/tencent/mapsdk/rastercore/a/a$a;->d:[Lcom/tencent/mapsdk/rastercore/a/a$a;

    invoke-virtual {v0}, [Lcom/tencent/mapsdk/rastercore/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mapsdk/rastercore/a/a$a;

    return-object v0
.end method
