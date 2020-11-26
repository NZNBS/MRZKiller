.class Lcom/tencent/lbssearch/a/a/f$4;
.super Lcom/tencent/lbssearch/a/a/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/a/f;->b(Z)Lcom/tencent/lbssearch/a/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/f;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/f$4;->a:Lcom/tencent/lbssearch/a/a/f;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->k()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Number;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 288
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/f$4;->a:Lcom/tencent/lbssearch/a/a/f;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/f;D)V

    .line 290
    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/Number;)Lcom/tencent/lbssearch/a/a/d/c;

    return-void
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/f$4;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/f$4;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
