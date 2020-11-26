.class Lcom/tencent/lbssearch/a/a/b/g$a;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/b/g;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/g$a;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 466
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/g$b;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/g$a;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/lbssearch/a/a/b/g$b;-><init>(Lcom/tencent/lbssearch/a/a/b/g;Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g$a;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/b/g;->size()I

    move-result v0

    return v0
.end method
