.class public final enum Lcom/tencent/mapsdk/raster/model/QMapLanguage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mapsdk/raster/model/QMapLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/mapsdk/raster/model/QMapLanguage;

.field public static final enum QMapLanguage_en:Lcom/tencent/mapsdk/raster/model/QMapLanguage;

.field public static final enum QMapLanguage_zh:Lcom/tencent/mapsdk/raster/model/QMapLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    const-string v1, "QMapLanguage_zh"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->QMapLanguage_zh:Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    new-instance v1, Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    const-string v3, "QMapLanguage_en"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->QMapLanguage_en:Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->$VALUES:[Lcom/tencent/mapsdk/raster/model/QMapLanguage;

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

.method public static getLanguageCode(Lcom/tencent/mapsdk/raster/model/QMapLanguage;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "en"

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mapsdk/raster/model/QMapLanguage;
    .locals 1

    const-class v0, Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mapsdk/raster/model/QMapLanguage;
    .locals 1

    sget-object v0, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->$VALUES:[Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    invoke-virtual {v0}, [Lcom/tencent/mapsdk/raster/model/QMapLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    return-object v0
.end method
