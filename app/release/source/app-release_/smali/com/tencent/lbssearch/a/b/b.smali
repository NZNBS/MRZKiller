.class public Lcom/tencent/lbssearch/a/b/b;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/g;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/g;-><init>()V

    .line 34
    new-instance v2, Lcom/tencent/lbssearch/a/b/b$1;

    invoke-direct {v2}, Lcom/tencent/lbssearch/a/b/b$1;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/lbssearch/a/b/b$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 35
    new-instance v3, Lcom/tencent/lbssearch/a/b/c;

    invoke-direct {v3}, Lcom/tencent/lbssearch/a/b/c;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/lbssearch/a/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/g;

    .line 36
    const-class v2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;

    new-instance v3, Lcom/tencent/lbssearch/a/b/e;

    invoke-direct {v3}, Lcom/tencent/lbssearch/a/b/e;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/lbssearch/a/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/g;

    .line 37
    const-class v2, Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;

    new-instance v3, Lcom/tencent/lbssearch/a/b/g;

    invoke-direct {v3}, Lcom/tencent/lbssearch/a/b/g;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/lbssearch/a/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/g;

    .line 38
    const-class v2, Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;

    new-instance v3, Lcom/tencent/lbssearch/a/b/f;

    invoke-direct {v3}, Lcom/tencent/lbssearch/a/b/f;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/tencent/lbssearch/a/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/g;

    .line 39
    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/g;->a()Lcom/tencent/lbssearch/a/a/f;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/tencent/lbssearch/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/tencent/lbssearch/a/a/t; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/t;->printStackTrace()V

    .line 45
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/t;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/lbssearch/a/c/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method
