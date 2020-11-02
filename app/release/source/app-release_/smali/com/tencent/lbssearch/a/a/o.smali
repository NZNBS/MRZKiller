.class public final Lcom/tencent/lbssearch/a/a/o;
.super Lcom/tencent/lbssearch/a/a/l;
.source "JsonObject.java"


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/g<",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/l;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/g;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/lbssearch/a/a/l;

    return-object p1
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/a/l;",
            ">;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/b/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/tencent/lbssearch/a/a/l;)V
    .locals 1

    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/tencent/lbssearch/a/a/n;->a:Lcom/tencent/lbssearch/a/a/n;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 187
    instance-of v0, p1, Lcom/tencent/lbssearch/a/a/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/lbssearch/a/a/o;

    iget-object p1, p1, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    .line 188
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/b/g;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    .line 193
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/o;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/b/g;->hashCode()I

    move-result v0

    return v0
.end method
