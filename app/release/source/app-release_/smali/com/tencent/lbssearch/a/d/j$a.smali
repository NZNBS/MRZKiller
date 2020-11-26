.class public final enum Lcom/tencent/lbssearch/a/d/j$a;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/lbssearch/a/d/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/lbssearch/a/d/j$a;

.field public static final enum b:Lcom/tencent/lbssearch/a/d/j$a;

.field public static final enum c:Lcom/tencent/lbssearch/a/d/j$a;

.field public static final enum d:Lcom/tencent/lbssearch/a/d/j$a;

.field private static final synthetic e:[Lcom/tencent/lbssearch/a/d/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 455
    new-instance v0, Lcom/tencent/lbssearch/a/d/j$a;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/lbssearch/a/d/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/lbssearch/a/d/j$a;->a:Lcom/tencent/lbssearch/a/d/j$a;

    .line 456
    new-instance v1, Lcom/tencent/lbssearch/a/d/j$a;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/lbssearch/a/d/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/lbssearch/a/d/j$a;->b:Lcom/tencent/lbssearch/a/d/j$a;

    .line 457
    new-instance v3, Lcom/tencent/lbssearch/a/d/j$a;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/lbssearch/a/d/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/lbssearch/a/d/j$a;->c:Lcom/tencent/lbssearch/a/d/j$a;

    .line 458
    new-instance v5, Lcom/tencent/lbssearch/a/d/j$a;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/lbssearch/a/d/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/lbssearch/a/d/j$a;->d:Lcom/tencent/lbssearch/a/d/j$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tencent/lbssearch/a/d/j$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 454
    sput-object v7, Lcom/tencent/lbssearch/a/d/j$a;->e:[Lcom/tencent/lbssearch/a/d/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/lbssearch/a/d/j$a;
    .locals 1

    .line 454
    const-class v0, Lcom/tencent/lbssearch/a/d/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/lbssearch/a/d/j$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/lbssearch/a/d/j$a;
    .locals 1

    .line 454
    sget-object v0, Lcom/tencent/lbssearch/a/d/j$a;->e:[Lcom/tencent/lbssearch/a/d/j$a;

    invoke-virtual {v0}, [Lcom/tencent/lbssearch/a/d/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/lbssearch/a/d/j$a;

    return-object v0
.end method
