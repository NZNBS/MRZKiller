.class Lcom/tencent/lbssearch/a/a/b/g$b;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/b/g;

.field private b:Lcom/tencent/lbssearch/a/a/b/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tencent/lbssearch/a/a/b/g;Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 478
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->a:Lcom/tencent/lbssearch/a/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/lbssearch/a/a/b/g;Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$1;)V
    .locals 0

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/g$b;-><init>(Lcom/tencent/lbssearch/a/a/b/g;Lcom/tencent/lbssearch/a/a/b/g$c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 488
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/b/g$b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->a:Lcom/tencent/lbssearch/a/a/b/g;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/g$b;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Ljava/lang/Comparable;)Ljava/lang/Object;

    return-void
.end method
