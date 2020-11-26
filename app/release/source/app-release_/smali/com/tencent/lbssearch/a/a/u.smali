.class public abstract enum Lcom/tencent/lbssearch/a/a/u;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/lbssearch/a/a/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/lbssearch/a/a/u;

.field public static final enum b:Lcom/tencent/lbssearch/a/a/u;

.field private static final synthetic c:[Lcom/tencent/lbssearch/a/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/tencent/lbssearch/a/a/u$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/lbssearch/a/a/u$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/lbssearch/a/a/u;->a:Lcom/tencent/lbssearch/a/a/u;

    .line 45
    new-instance v1, Lcom/tencent/lbssearch/a/a/u$2;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/lbssearch/a/a/u$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/lbssearch/a/a/u;->b:Lcom/tencent/lbssearch/a/a/u;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/lbssearch/a/a/u;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lcom/tencent/lbssearch/a/a/u;->c:[Lcom/tencent/lbssearch/a/a/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tencent/lbssearch/a/a/u$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/u;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/u;
    .locals 1

    .line 27
    const-class v0, Lcom/tencent/lbssearch/a/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/lbssearch/a/a/u;

    return-object p0
.end method

.method public static values()[Lcom/tencent/lbssearch/a/a/u;
    .locals 1

    .line 27
    sget-object v0, Lcom/tencent/lbssearch/a/a/u;->c:[Lcom/tencent/lbssearch/a/a/u;

    invoke-virtual {v0}, [Lcom/tencent/lbssearch/a/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/lbssearch/a/a/u;

    return-object v0
.end method
