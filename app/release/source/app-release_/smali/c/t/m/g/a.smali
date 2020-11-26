.class public final Lc/t/m/g/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lc/t/m/g/b$a;)Lc/t/m/g/d;
    .locals 1

    sget-boolean v0, Lc/t/m/g/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lc/t/m/g/a;->b(Lc/t/m/g/b$a;)V

    :cond_0
    invoke-static {}, Lc/t/m/g/g;->a()Lc/t/m/g/g;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized b(Lc/t/m/g/b$a;)V
    .locals 11

    const-class v0, Lc/t/m/g/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lc/t/m/g/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-eqz p0, :cond_c

    iget-object v1, p0, Lc/t/m/g/b$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/b$a;->a:Landroid/content/Context;

    invoke-static {v2}, Lc/t/m/g/bz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v2, p0, Lc/t/m/g/b$a;->c:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lc/t/m/g/b$a;->b:I

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lc/t/m/g/b$a;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lc/t/m/g/bz;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :goto_1
    if-lez v3, :cond_b

    iget-boolean v2, p0, Lc/t/m/g/b$a;->c:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_a

    iget-object v2, p0, Lc/t/m/g/b$a;->a:Landroid/content/Context;

    const-string v4, "com.tencent.halley.common.platform.service.PlatformService"

    invoke-static {v3, v2, v1, v4}, Lc/t/m/g/bz;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc/t/m/g/bz$a;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v4, v2, Lc/t/m/g/bz$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lc/t/m/g/bz$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lc/t/m/g/bz$a;->d:Ljava/lang/String;

    iget-object v5, v2, Lc/t/m/g/bz$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    sput-boolean v4, Lc/t/m/g/l;->e:Z

    :cond_3
    iget-boolean v4, v2, Lc/t/m/g/bz$a;->c:Z

    if-nez v4, :cond_8

    iget-boolean v2, v2, Lc/t/m/g/bz$a;->b:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lc/t/m/g/b$a;->a:Landroid/content/Context;

    const-string v4, "com.tencent.halley.common.platform.service.ActivateService"

    invoke-static {v3, v2, v1, v4}, Lc/t/m/g/bz;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lc/t/m/g/bz$a;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-boolean v2, v1, Lc/t/m/g/bz$a;->c:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lc/t/m/g/bz$a;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lc/t/m/g/bz$a;->e:Landroid/os/Bundle;

    const-string v2, "security_version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "need set valid security_version for ActivateService"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "need set security_version for ActivateService"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "need set ActivateService exported to true"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "need set PlatformService enabled to true"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "need set PlatformService exported to false"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "need set PlatformService in manifest for halley"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    iget-boolean v4, p0, Lc/t/m/g/b$a;->c:Z

    iget-object v5, p0, Lc/t/m/g/b$a;->a:Landroid/content/Context;

    iget-object v6, p0, Lc/t/m/g/b$a;->d:Ljava/lang/String;

    iget-object v7, p0, Lc/t/m/g/b$a;->e:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lc/t/m/g/l;->a(IZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v10, Lc/t/m/g/l;->f:Z

    iget-object p0, p0, Lc/t/m/g/b$a;->f:Ljava/lang/String;

    sput-object p0, Lc/t/m/g/ac;->a:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object p0

    invoke-virtual {p0}, Lc/t/m/g/bv;->f()V

    invoke-static {}, Lc/t/m/g/l;->h()Z

    sput-boolean v9, Lc/t/m/g/a;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_b
    :try_start_2
    new-instance p0, Lc/t/m/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid illegal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lc/t/m/g/c;

    const-string v1, "initParam null"

    invoke-direct {p0, v1}, Lc/t/m/g/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
