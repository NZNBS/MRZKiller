.class public final Lcom/tencent/lbssearch/a/a/b/j;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public static a(Lcom/tencent/lbssearch/a/a/d/a;)Lcom/tencent/lbssearch/a/a/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/tencent/lbssearch/a/a/d/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 45
    :try_start_1
    sget-object v1, Lcom/tencent/lbssearch/a/a/b/a/l;->P:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v1, p0}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/lbssearch/a/a/l;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tencent/lbssearch/a/a/d/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 61
    new-instance v0, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 59
    new-instance v0, Lcom/tencent/lbssearch/a/a/m;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 57
    new-instance v0, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 52
    sget-object p0, Lcom/tencent/lbssearch/a/a/n;->a:Lcom/tencent/lbssearch/a/a/n;

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/tencent/lbssearch/a/a/l;Lcom/tencent/lbssearch/a/a/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/tencent/lbssearch/a/a/b/a/l;->P:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v0, p1, p0}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
