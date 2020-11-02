.class final Lcom/tencent/lbssearch/a/a/b/a/l$29;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 208
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->m()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 210
    new-instance v0, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
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

    .line 200
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/l$29;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$29;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
