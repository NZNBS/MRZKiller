.class final Lcom/tencent/lbssearch/a/a/d/e;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/e;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([CIII)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    .line 40
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p4

    :cond_0
    ushr-int/lit8 v0, p4, 0x14

    ushr-int/lit8 v1, p4, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p4, v0

    ushr-int/lit8 v0, p4, 0x7

    ushr-int/lit8 v1, p4, 0x4

    xor-int/2addr v0, v1

    xor-int/2addr p4, v0

    .line 46
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/e;->a:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p4, v1

    .line 48
    aget-object v0, v0, p4

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_2

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 58
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/d/e;->a:[Ljava/lang/String;

    aput-object v0, p1, p4

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 50
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 51
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/d/e;->a:[Ljava/lang/String;

    aput-object v0, p1, p4

    return-object v0
.end method
