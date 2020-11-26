.class public Lcom/tencent/lbssearch/a/d/a/g;
.super Lcom/tencent/lbssearch/a/d/j;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/d/j<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/d/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/d/l$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/tencent/lbssearch/a/d/l$b;Lcom/tencent/lbssearch/a/d/l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/d/l$b<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/lbssearch/a/d/l$a;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/lbssearch/a/d/j;-><init>(ILjava/lang/String;Lcom/tencent/lbssearch/a/d/l$a;)V

    .line 45
    iput-object p3, p0, Lcom/tencent/lbssearch/a/d/a/g;->a:Lcom/tencent/lbssearch/a/d/l$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/l$b;Lcom/tencent/lbssearch/a/d/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/d/l$b<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/lbssearch/a/d/l$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/lbssearch/a/d/a/g;-><init>(ILjava/lang/String;Lcom/tencent/lbssearch/a/d/l$b;Lcom/tencent/lbssearch/a/d/l$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tencent/lbssearch/a/d/h;)Lcom/tencent/lbssearch/a/d/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/h;",
            ")",
            "Lcom/tencent/lbssearch/a/d/l<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/lbssearch/a/d/h;->b:[B

    iget-object v2, p1, Lcom/tencent/lbssearch/a/d/h;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/tencent/lbssearch/a/d/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/lbssearch/a/d/h;->b:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 72
    :goto_0
    invoke-static {v0}, Lcom/tencent/lbssearch/a/d/l;->a(Ljava/lang/Object;)Lcom/tencent/lbssearch/a/d/l;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/d/a/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/a/g;->a:Lcom/tencent/lbssearch/a/d/l$b;

    invoke-interface {v0, p1}, Lcom/tencent/lbssearch/a/d/l$b;->a(Ljava/lang/Object;)V

    return-void
.end method
