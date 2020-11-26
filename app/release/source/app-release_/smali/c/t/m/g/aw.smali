.class public final Lc/t/m/g/aw;
.super Lc/t/m/g/av;

# interfaces
.implements Lc/t/m/g/r;


# instance fields
.field a:Lc/t/m/g/bj;

.field b:Lc/t/m/g/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc/t/m/g/av;-><init>()V

    new-instance v0, Lc/t/m/g/bj;

    const-string v1, "HttpSchedulerClient"

    invoke-direct {v0, v1}, Lc/t/m/g/bj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/aw;->a:Lc/t/m/g/bj;

    return-void
.end method

.method static a(Lc/t/m/g/p;Lorg/json/JSONArray;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "domains"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "resultlist"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "schedulecode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "httpsport"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lc/t/m/g/q;

    invoke-direct {v8, v7, v5}, Lc/t/m/g/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v8, Lc/t/m/g/q;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    :goto_2
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lc/t/m/g/m;

    invoke-direct {v10}, Lc/t/m/g/m;-><init>()V

    invoke-virtual {v10, v9}, Lc/t/m/g/m;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Lc/t/m/g/q;->c:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lc/t/m/g/p;->b:Ljava/util/Map;

    iget-object v9, v8, Lc/t/m/g/q;->a:Ljava/lang/String;

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/t/m/g/q;
    .locals 2

    iget-object v0, p0, Lc/t/m/g/aw;->b:Lc/t/m/g/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/t/m/g/p;->a:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/aw;->b:Lc/t/m/g/p;

    iget-object v0, v0, Lc/t/m/g/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/t/m/g/q;

    return-object p1

    :cond_0
    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lc/t/m/g/ax;

    invoke-direct {v0, p0}, Lc/t/m/g/ax;-><init>(Lc/t/m/g/aw;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "accessscheduler"

    return-object v0
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    iget-object p3, p0, Lc/t/m/g/aw;->a:Lc/t/m/g/bj;

    invoke-virtual {p3, p1, p2}, Lc/t/m/g/bj;->a(Ljava/lang/String;[B)V

    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lc/t/m/g/ax;

    invoke-direct {p2, p0}, Lc/t/m/g/ax;-><init>(Lc/t/m/g/aw;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a_()V
    .locals 1

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/bv;->a()V

    return-void
.end method
