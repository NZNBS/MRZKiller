.class final Lc/t/m/g/cf$b;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private b:Lc/t/m/g/cg;

.field private c:Lc/t/m/g/ch;

.field private synthetic d:Lc/t/m/g/cf;


# direct methods
.method public constructor <init>(Lc/t/m/g/cf;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lc/t/m/g/cf$b;->d:Lc/t/m/g/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lc/t/m/g/cf$b;->a:Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    .line 271
    iput-object p1, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    .line 274
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    .line 275
    invoke-static {}, Lc/t/m/g/ch;->a()Lc/t/m/g/ch;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 6

    const-string v0, "sE0zy%DVqLnXA$hmNZ8NBwcg7FDrvi!q"

    const-string v1, "cc_version"

    const-string v2, "https://cc.map.qq.com/?get_c"

    .line 437
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 438
    iget-object v4, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    invoke-virtual {v4, v1}, Lc/t/m/g/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m_module"

    .line 439
    sget-object v4, Lc/t/m/g/cg;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m_channel"

    .line 440
    sget-object v4, Lc/t/m/g/cg;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "m_version"

    .line 441
    sget-object v4, Lc/t/m/g/cg;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    .line 442
    invoke-static {}, Lc/t/m/g/cf$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/t/m/g/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "channelId"

    .line 449
    invoke-static {}, Lc/t/m/g/cf;->f()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/t/m/g/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v4, Lc/t/m/g/dn$1;

    invoke-direct {v4}, Lc/t/m/g/dn$1;-><init>()V

    invoke-static {}, Lc/t/m/g/cf;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lc/t/m/g/dn;->a(Landroid/content/Context;Landroid/os/Bundle;)Lc/t/m/g/dm;

    .line 451
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/dm;->a(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v1

    .line 452
    new-instance v2, Ljava/lang/String;

    const-string v3, "data_bytes"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "data_charset"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 455
    iget-object v1, p0, Lc/t/m/g/cf$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    invoke-static {v2, v0}, Lc/t/m/g/b$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/cf$b;->a:Lorg/json/JSONObject;

    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lc/t/m/g/cf$b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "cc_req_interval"

    .line 349
    iget-object v1, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    invoke-virtual {v1}, Lc/t/m/g/ch;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    const-string v3, "cc_version"

    invoke-virtual {v2, v3}, Lc/t/m/g/cg;->b(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    const-string v4, "version"

    .line 355
    iget-object v5, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    invoke-virtual {v5, v3}, Lc/t/m/g/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v4, v2

    :goto_0
    if-ne v4, v2, :cond_1

    return-void

    :cond_1
    const-string v2, "data"

    .line 369
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 370
    iget-object p1, p0, Lc/t/m/g/cf$b;->a:Lorg/json/JSONObject;

    .line 372
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 375
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 379
    :try_start_1
    iget-object v6, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    invoke-virtual {v6, v5}, Lc/t/m/g/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 383
    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    :try_start_2
    iget-object v2, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    .line 389
    invoke-virtual {v2, v0}, Lc/t/m/g/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    const-wide/32 v6, 0x36ee80

    cmp-long p1, v2, v6

    if-gez p1, :cond_6

    move-wide v2, v6

    goto :goto_2

    :cond_6
    cmp-long p1, v2, v4

    if-lez p1, :cond_7

    move-wide v2, v4

    .line 396
    :cond_7
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    :catchall_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 482
    :try_start_0
    invoke-static {}, Lc/t/m/g/cf;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 483
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    .line 486
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 281
    iget-object v0, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    const-string v1, "last_pull_time"

    invoke-virtual {v0, v1}, Lc/t/m/g/cg;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {}, Lc/t/m/g/cf;->e()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-ltz v0, :cond_5

    .line 283
    iget-object v0, p0, Lc/t/m/g/cf$b;->d:Lc/t/m/g/cf;

    invoke-static {v0}, Lc/t/m/g/cf;->a(Lc/t/m/g/cf;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    invoke-virtual {v2}, Lc/t/m/g/ch;->c()V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-direct {p0}, Lc/t/m/g/cf$b;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "status"

    const-string v4, "-5"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x4

    if-eq v3, v4, :cond_2

    const/4 v4, -0x3

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lc/t/m/g/cf$b;->a(Lorg/json/JSONObject;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    invoke-virtual {v3}, Lc/t/m/g/ch;->b()Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    invoke-virtual {v1}, Lc/t/m/g/cg;->b()V

    if-eqz v0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    invoke-virtual {v1}, Lc/t/m/g/cg;->b()V

    if-eqz v0, :cond_5

    :goto_1
    iget-object v0, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    invoke-virtual {v0}, Lc/t/m/g/ch;->d()V

    goto :goto_2

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lc/t/m/g/cf$b;->b:Lc/t/m/g/cg;

    invoke-virtual {v2}, Lc/t/m/g/cg;->b()V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/t/m/g/cf$b;->c:Lc/t/m/g/ch;

    invoke-virtual {v0}, Lc/t/m/g/ch;->d()V

    :cond_4
    throw v1

    .line 285
    :cond_5
    :goto_2
    iget-object v0, p0, Lc/t/m/g/cf$b;->d:Lc/t/m/g/cf;

    invoke-static {v0}, Lc/t/m/g/cf;->a(Lc/t/m/g/cf;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lc/t/m/g/cf$b;->d:Lc/t/m/g/cf;

    invoke-static {v0}, Lc/t/m/g/cf;->b(Lc/t/m/g/cf;)V

    return-void

    .line 291
    :cond_6
    iget-object v0, p0, Lc/t/m/g/cf$b;->d:Lc/t/m/g/cf;

    invoke-static {v0}, Lc/t/m/g/cf;->c(Lc/t/m/g/cf;)V

    return-void
.end method
