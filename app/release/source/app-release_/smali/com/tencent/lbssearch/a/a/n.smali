.class public final Lcom/tencent/lbssearch/a/a/n;
.super Lcom/tencent/lbssearch/a/a/l;
.source "JsonNull.java"


# static fields
.field public static final a:Lcom/tencent/lbssearch/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/tencent/lbssearch/a/a/n;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/n;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/n;->a:Lcom/tencent/lbssearch/a/a/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 61
    instance-of p1, p1, Lcom/tencent/lbssearch/a/a/n;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 53
    const-class v0, Lcom/tencent/lbssearch/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
