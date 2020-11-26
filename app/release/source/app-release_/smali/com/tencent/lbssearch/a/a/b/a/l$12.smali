.class final Lcom/tencent/lbssearch/a/a/b/a/l$12;
.super Lcom/tencent/lbssearch/a/a/w;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/BitSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 85
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 86
    :goto_0
    sget-object v4, Lcom/tencent/lbssearch/a/a/d/b;->b:Lcom/tencent/lbssearch/a/a/d/b;

    if-eq v1, v4, :cond_6

    .line 88
    sget-object v4, Lcom/tencent/lbssearch/a/a/b/a/l$26;->a:[I

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/a/d/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 98
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 100
    :catch_0
    new-instance p1, Lcom/tencent/lbssearch/a/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_2
    new-instance p1, Lcom/tencent/lbssearch/a/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitset value type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->i()Z

    move-result v5

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->m()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    if-eqz v5, :cond_5

    .line 108
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 111
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/l$12;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/BitSet;)V

    return-void
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->b()Lcom/tencent/lbssearch/a/a/d/c;

    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 125
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    int-to-long v1, v1

    .line 126
    invoke-virtual {p1, v1, v2}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->c()Lcom/tencent/lbssearch/a/a/d/c;

    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$12;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method
