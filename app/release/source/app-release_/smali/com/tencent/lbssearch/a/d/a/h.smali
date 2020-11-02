.class public Lcom/tencent/lbssearch/a/d/a/h;
.super Ljava/lang/Object;
.source "Volley.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/tencent/lbssearch/a/d/k;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Lcom/tencent/lbssearch/a/d/a/h;->a(Landroid/content/Context;Lcom/tencent/lbssearch/a/d/a/d;)Lcom/tencent/lbssearch/a/d/k;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/lbssearch/a/d/a/d;)Lcom/tencent/lbssearch/a/d/k;
    .locals 0

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/tencent/lbssearch/a/d/a/e;

    invoke-direct {p1}, Lcom/tencent/lbssearch/a/d/a/e;-><init>()V

    .line 40
    :cond_0
    new-instance p0, Lcom/tencent/lbssearch/a/d/a/a;

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/d/a/a;-><init>(Lcom/tencent/lbssearch/a/d/a/d;)V

    .line 42
    new-instance p1, Lcom/tencent/lbssearch/a/d/k;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/d/k;-><init>(Lcom/tencent/lbssearch/a/d/e;)V

    .line 43
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/d/k;->a()V

    return-object p1
.end method
