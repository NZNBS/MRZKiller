.class public final Lc/t/m/g/o;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z = true

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static volatile e:I = 0x0

.field private static volatile f:Z = false

.field private static volatile g:I = -0x1

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/t/m/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Landroid/content/BroadcastReceiver;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/t/m/g/o;->h:Ljava/util/Map;

    new-instance v0, Lc/t/m/g/s;

    invoke-direct {v0}, Lc/t/m/g/s;-><init>()V

    sput-object v0, Lc/t/m/g/o;->i:Landroid/content/BroadcastReceiver;

    const-string v0, ""

    sput-object v0, Lc/t/m/g/o;->j:Ljava/lang/String;

    const-string v0, "cmwap"

    sput-object v0, Lc/t/m/g/o;->k:Ljava/lang/String;

    const-string v0, "3gwap"

    sput-object v0, Lc/t/m/g/o;->l:Ljava/lang/String;

    const-string v0, "uniwap"

    sput-object v0, Lc/t/m/g/o;->m:Ljava/lang/String;

    const-string v0, "ctwap"

    sput-object v0, Lc/t/m/g/o;->n:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc/t/m/g/t;

    invoke-direct {v1}, Lc/t/m/g/t;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 3

    const-class v0, Lc/t/m/g/o;

    monitor-enter v0

    :try_start_0
    sget v1, Lc/t/m/g/o;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "unknown"

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssid_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lc/t/m/g/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/t/m/g/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget v0, Lc/t/m/g/o;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "4g"

    goto :goto_0

    :cond_1
    const-string v0, "3g"

    goto :goto_0

    :cond_2
    const-string v0, "2g"

    goto :goto_0

    :cond_3
    const-string v0, "wifi"

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 3

    const-class v0, Lc/t/m/g/o;

    monitor-enter v0

    :try_start_0
    sget v1, Lc/t/m/g/o;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "wifi"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()V
    .locals 8

    const-class v0, Lc/t/m/g/o;

    monitor-enter v0

    :try_start_0
    sget v1, Lc/t/m/g/o;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    sput-boolean v5, Lc/t/m/g/o;->a:Z

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_0

    sput v5, Lc/t/m/g/o;->e:I

    sput v4, Lc/t/m/g/o;->g:I

    sput-boolean v4, Lc/t/m/g/o;->f:Z

    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc/t/m/g/o;->c:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lc/t/m/g/o;->d:Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lc/t/m/g/o;->b:Ljava/lang/String;

    if-nez v6, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    sput v2, Lc/t/m/g/o;->g:I

    const/4 v3, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    sput v4, Lc/t/m/g/o;->e:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    sput v2, Lc/t/m/g/o;->e:I

    goto :goto_1

    :cond_3
    :goto_0
    sput v3, Lc/t/m/g/o;->e:I

    :goto_1
    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    const-string v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lc/t/m/g/o;->f:Z

    if-eqz v2, :cond_b

    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sget-object v3, Lc/t/m/g/o;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "10.0.0.172"

    :goto_2
    sput-object v2, Lc/t/m/g/o;->j:Ljava/lang/String;

    goto :goto_4

    :cond_4
    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sget-object v3, Lc/t/m/g/o;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "10.0.0.172"

    goto :goto_2

    :cond_5
    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sget-object v3, Lc/t/m/g/o;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "10.0.0.172"

    goto :goto_2

    :cond_6
    sget-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sget-object v3, Lc/t/m/g/o;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "10.0.0.200"

    goto :goto_2

    :cond_7
    const-string v2, ""

    goto :goto_2

    :cond_8
    const-string v2, "unknown"

    sput-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sput v4, Lc/t/m/g/o;->e:I

    sput v3, Lc/t/m/g/o;->g:I

    :goto_3
    sput-boolean v4, Lc/t/m/g/o;->f:Z

    goto :goto_4

    :cond_9
    const-string v2, "unknown"

    sput-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sput v4, Lc/t/m/g/o;->e:I

    sput v3, Lc/t/m/g/o;->g:I

    goto :goto_3

    :cond_a
    const-string v2, "unknown"

    sput-object v2, Lc/t/m/g/o;->b:Ljava/lang/String;

    sput v4, Lc/t/m/g/o;->e:I

    sput v3, Lc/t/m/g/o;->g:I

    sput-boolean v4, Lc/t/m/g/o;->f:Z

    sput-boolean v4, Lc/t/m/g/o;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_b
    :goto_4
    :try_start_2
    sget v2, Lc/t/m/g/o;->e:I

    if-eq v1, v2, :cond_10

    sget-object v1, Lc/t/m/g/o;->h:Ljava/util/Map;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    sget-object v2, Lc/t/m/g/o;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/t/m/g/d;

    if-eqz v3, :cond_c

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    goto :goto_5

    :cond_d
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    sget v2, Lc/t/m/g/o;->e:I

    if-eq v1, v2, :cond_10

    sget-object v1, Lc/t/m/g/o;->h:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    sget-object v2, Lc/t/m/g/o;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/t/m/g/d;

    if-eqz v3, :cond_e

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    goto :goto_6

    :cond_f
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v1

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_10
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v2

    :try_start_9
    sget v3, Lc/t/m/g/o;->e:I

    if-eq v1, v3, :cond_13

    sget-object v1, Lc/t/m/g/o;->h:Ljava/util/Map;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    sget-object v3, Lc/t/m/g/o;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/t/m/g/d;

    if-eqz v4, :cond_11

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    goto :goto_7

    :cond_12
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v1

    throw v2

    :cond_13
    :goto_8
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    sget v0, Lc/t/m/g/o;->g:I

    const-string v1, "unknown"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    sget v0, Lc/t/m/g/o;->g:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "HSPAP"

    goto :goto_0

    :pswitch_1
    const-string v1, "EHRPD"

    goto :goto_0

    :pswitch_2
    const-string v1, "LTE"

    goto :goto_0

    :pswitch_3
    const-string v1, "EVDO_B"

    goto :goto_0

    :pswitch_4
    const-string v1, "iDen"

    goto :goto_0

    :pswitch_5
    const-string v1, "HSPA"

    goto :goto_0

    :pswitch_6
    const-string v1, "HSUPA"

    goto :goto_0

    :pswitch_7
    const-string v1, "HSDPA"

    goto :goto_0

    :pswitch_8
    const-string v1, "1xRTT"

    goto :goto_0

    :pswitch_9
    const-string v1, "EVDO_A"

    goto :goto_0

    :pswitch_a
    const-string v1, "EVDO_0"

    goto :goto_0

    :pswitch_b
    const-string v1, "CDMA"

    goto :goto_0

    :pswitch_c
    const-string v1, "UMTS"

    goto :goto_0

    :pswitch_d
    const-string v1, "EDGE"

    goto :goto_0

    :pswitch_e
    const-string v1, "GPRS"

    goto :goto_0

    :pswitch_f
    const-string v1, "wifi"

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g()I
    .locals 1

    sget v0, Lc/t/m/g/o;->e:I

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/o;->a:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/o;->f:Z

    return v0
.end method

.method public static j()Ljava/lang/Integer;
    .locals 8

    invoke-static {}, Lc/t/m/g/o;->e()V

    sget v0, Lc/t/m/g/o;->e:I

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    if-eq v0, v5, :cond_1

    sget v0, Lc/t/m/g/o;->e:I

    if-eq v0, v1, :cond_1

    sget v0, Lc/t/m/g/o;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_b

    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc/t/m/g/o;->b:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_7
    :goto_1
    move-object v2, v6

    goto :goto_3

    :cond_8
    :goto_2
    move-object v2, v4

    goto :goto_3

    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/net/Proxy;
    .locals 5

    sget-boolean v0, Lc/t/m/g/o;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc/t/m/g/o;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lc/t/m/g/o;->j:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    const-class v2, Landroid/os/PowerManager;

    const-string v3, "isDeviceIdleMode"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method static synthetic m()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lc/t/m/g/o;->i:Landroid/content/BroadcastReceiver;

    return-object v0
.end method
