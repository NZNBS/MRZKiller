.class public final Lc/t/m/g/ac;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;ZLjava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "report_selfchannel_first"

    invoke-static {v2, v0, v1, v1}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v2

    const-string v3, "report_selfchannel_open"

    invoke-static {v3, v0, v1, v1}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v3, v1, :cond_1

    if-ne v2, v1, :cond_0

    :try_start_1
    invoke-static {}, Lc/t/m/g/ar;->d()Lc/t/m/g/ar;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lc/t/m/g/ar;->a(Ljava/lang/String;ZLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, p2}, Lc/t/m/g/ac;->b(Ljava/lang/String;ZLjava/util/Map;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_2

    :try_start_3
    invoke-static {}, Lc/t/m/g/ar;->d()Lc/t/m/g/ar;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lc/t/m/g/ar;->a(Ljava/lang/String;ZLjava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lc/t/m/g/ac;->b(Ljava/lang/String;ZLjava/util/Map;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, p0

    goto :goto_1

    :catchall_2
    :cond_2
    :goto_0
    move v1, v0

    :goto_1
    return v1
.end method

.method private static b(Ljava/lang/String;ZLjava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
