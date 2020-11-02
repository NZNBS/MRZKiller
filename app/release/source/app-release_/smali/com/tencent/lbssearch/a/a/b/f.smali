.class public final Lcom/tencent/lbssearch/a/a/b/f;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 41
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    long-to-int v1, v0

    return v1

    .line 43
    :catch_1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 53
    :catch_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/f;->a:Ljava/lang/String;

    return-object v0
.end method
