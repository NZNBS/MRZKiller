.class public final Lc/t/m/g/cp;
.super Landroid/content/BroadcastReceiver;
.source "TL"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Lcom/tencent/map/geolocation/TencentLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/cp$c;,
        Lc/t/m/g/cp$a;,
        Lc/t/m/g/cp$b;
    }
.end annotation


# instance fields
.field final a:Lc/t/m/g/cp$b;

.field private final b:Landroid/content/Context;

.field private final c:Lc/t/m/g/cy;

.field private final d:Landroid/os/PowerManager$WakeLock;

.field private final e:Landroid/os/PowerManager$WakeLock;

.field private final f:Lc/t/m/g/cp$a;

.field private final g:Lc/t/m/g/cp$c;

.field private h:Z

.field private i:Landroid/app/PendingIntent;

.field private final j:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private k:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc/t/m/g/cp;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 136
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 85
    new-instance v0, Lc/t/m/g/cp$b;

    invoke-direct {v0}, Lc/t/m/g/cp$b;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lc/t/m/g/cp;->h:Z

    .line 170
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 171
    invoke-virtual {v1, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cp;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 668
    iput-wide v1, p0, Lc/t/m/g/cp;->k:D

    .line 137
    iput-object p1, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lc/t/m/g/ci;->a(Landroid/content/Context;)Lc/t/m/g/ci;

    move-result-object v1

    .line 139
    new-instance v2, Lc/t/m/g/cy;

    invoke-direct {v2, v1}, Lc/t/m/g/cy;-><init>(Lc/t/m/g/ci;)V

    iput-object v2, p0, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    const-string v1, "power"

    .line 145
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GeofenceManager"

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lc/t/m/g/cp;->d:Landroid/os/PowerManager$WakeLock;

    const-string v3, "tencent_location"

    .line 148
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cp;->e:Landroid/os/PowerManager$WakeLock;

    .line 150
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 152
    new-instance v1, Lc/t/m/g/cp$a;

    invoke-direct {v1, p0, p2}, Lc/t/m/g/cp$a;-><init>(Lc/t/m/g/cp;Landroid/os/Looper;)V

    iput-object v1, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    .line 153
    new-instance p2, Lc/t/m/g/cp$c;

    invoke-direct {p2, p0, v0}, Lc/t/m/g/cp$c;-><init>(Lc/t/m/g/cp;B)V

    iput-object p2, p0, Lc/t/m/g/cp;->g:Lc/t/m/g/cp$c;

    .line 154
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.tencent.map.geolocation.wakeup"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private a(J)Landroid/app/PendingIntent;
    .locals 10

    .line 728
    iget-object v0, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    const-string v1, "alarm"

    .line 729
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    .line 733
    :cond_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 736
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "xiaomi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move v8, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 739
    :goto_0
    iget-object v2, p0, Lc/t/m/g/cp;->i:Landroid/app/PendingIntent;

    const/4 v9, 0x2

    if-eqz v2, :cond_2

    .line 740
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 741
    iput-object v0, p0, Lc/t/m/g/cp;->i:Landroid/app/PendingIntent;

    if-eqz v8, :cond_2

    .line 743
    iget-object v2, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    invoke-virtual {v2, v9}, Lc/t/m/g/cp$a;->removeMessages(I)V

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    .line 747
    iget-object v0, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    invoke-static {}, Lc/t/m/g/cp;->l()Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x8000000

    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cp;->i:Landroid/app/PendingIntent;

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p1

    const/4 v2, 0x2

    move-wide v5, p1

    move-object v7, v0

    .line 749
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    if-eqz v8, :cond_3

    .line 753
    iget-object v1, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    const-wide/16 v2, 0x2710

    add-long/2addr p1, v2

    invoke-virtual {v1, v9, p1, p2}, Lc/t/m/g/cp$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-object v0
.end method

.method private a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7

    .line 704
    iget-object v0, p0, Lc/t/m/g/cp;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 706
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 709
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "removeFence: fence="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intent="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v0, v0, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/co;

    iget-object v1, v1, Lc/t/m/g/co;->d:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lc/t/m/g/cp;->i()V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    iget-object p1, p0, Lc/t/m/g/cp;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 709
    monitor-exit p2

    throw p1
.end method

.method static synthetic a(Lc/t/m/g/cp;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lc/t/m/g/cp;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 28

    move-object/from16 v1, p0

    .line 537
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 538
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 540
    iget-object v3, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter v3

    .line 541
    :try_start_0
    iget-object v4, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lc/t/m/g/cp$b;->e:Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cp;->h()V

    .line 549
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cp;->j()Landroid/location/Location;

    move-result-object v4

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateFences: fresh_location="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 556
    iget-object v7, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v7, v7, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    .line 557
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v4, :cond_10

    .line 560
    invoke-static {v4}, Lc/t/m/g/b$a;->a(Landroid/location/Location;)V

    .line 561
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lc/t/m/g/co;

    .line 562
    iget-object v11, v5, Lc/t/m/g/co;->g:Ljava/lang/Object;

    if-eq v4, v11, :cond_5

    iput-object v4, v5, Lc/t/m/g/co;->g:Ljava/lang/Object;

    iget-wide v11, v5, Lc/t/m/g/co;->f:D

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    iget-object v10, v5, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    iget-object v10, v5, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    invoke-static/range {v20 .. v27}, Lc/t/m/g/b$a;->a(DDDD)D

    move-result-wide v9

    move-object/from16 v20, v13

    iget-object v13, v5, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    move-object v13, v7

    move/from16 v23, v8

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v24, 0x0

    cmp-long v26, v21, v24

    if-eqz v26, :cond_2

    cmpl-double v26, v9, v11

    if-ltz v26, :cond_0

    const-wide/16 v11, 0x0

    move-wide/from16 v24, v14

    move-object v15, v13

    goto :goto_2

    :cond_0
    cmpg-double v26, v9, v11

    if-gez v26, :cond_2

    sub-long v21, v7, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    move-result-wide v21

    const-wide/16 v26, 0x3e8

    div-long v21, v21, v26

    sub-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmp-long v26, v21, v24

    if-eqz v26, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v24, 0x1

    add-long v21, v21, v24

    :goto_1
    move-wide/from16 v24, v14

    move-object v15, v13

    move-wide/from16 v13, v21

    long-to-double v13, v13

    div-double/2addr v11, v13

    goto :goto_2

    :cond_2
    move-wide/from16 v24, v14

    move-object v15, v13

    const-wide v11, -0x40af9db220000000L    # -0.0010000000474974513

    :goto_2
    double-to-float v11, v11

    iget-object v12, v5, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v12, v7, v8}, Landroid/location/Location;->setTime(J)V

    iget-object v7, v5, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v7, v11}, Landroid/location/Location;->setSpeed(F)V

    iput-wide v9, v5, Lc/t/m/g/co;->f:D

    iget v7, v5, Lc/t/m/g/co;->e:I

    iget-wide v8, v5, Lc/t/m/g/co;->f:D

    iget-object v10, v5, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v10}, Lcom/tencent/map/geolocation/TencentGeofence;->getRadius()F

    move-result v10

    float-to-double v10, v10

    cmpg-double v12, v8, v10

    if-gtz v12, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    const/4 v8, 0x1

    iput v8, v5, Lc/t/m/g/co;->e:I

    if-eq v7, v8, :cond_6

    goto :goto_4

    :cond_4
    const/4 v8, 0x1

    const/4 v9, 0x2

    iput v9, v5, Lc/t/m/g/co;->e:I

    if-ne v7, v8, :cond_6

    const/4 v8, 0x2

    goto :goto_4

    :cond_5
    move/from16 v23, v8

    move-object/from16 v20, v13

    move-wide/from16 v24, v14

    move-object v15, v7

    :cond_6
    const/4 v8, 0x0

    :goto_4
    and-int/lit8 v7, v8, 0x1

    if-eqz v7, :cond_7

    .line 564
    iget-object v7, v5, Lc/t/m/g/co;->d:Landroid/app/PendingIntent;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 v7, v8, 0x2

    if-eqz v7, :cond_8

    .line 567
    iget-object v7, v5, Lc/t/m/g/co;->d:Landroid/app/PendingIntent;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_8
    iget-wide v7, v5, Lc/t/m/g/co;->f:D

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v7

    if-nez v7, :cond_9

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_5

    :cond_9
    iget-object v7, v5, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v7}, Lcom/tencent/map/geolocation/TencentGeofence;->getRadius()F

    move-result v7

    float-to-double v7, v7

    iget-wide v9, v5, Lc/t/m/g/co;->f:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    :goto_5
    cmpg-double v7, v9, v24

    if-gez v7, :cond_a

    move-wide/from16 v24, v9

    .line 580
    :cond_a
    iget v7, v5, Lc/t/m/g/co;->e:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_b

    iget-object v7, v5, Lc/t/m/g/co;->b:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getSpeed()F

    move-result v7

    cmpl-float v7, v7, v17

    if-ltz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_c

    .line 581
    invoke-virtual {v5}, Lc/t/m/g/co;->a()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v7, v15

    move-object/from16 v13, v20

    move/from16 v8, v23

    move-wide/from16 v14, v24

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v23, v8

    move-wide/from16 v24, v14

    move-object v15, v7

    const/high16 v5, 0x41c80000    # 25.0f

    .line 586
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_e
    iget-object v6, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v6, v6, Lc/t/m/g/cp$b;->f:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v6, v6, v17

    if-lez v6, :cond_f

    iget-object v6, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v6, v6, Lc/t/m/g/cp$b;->f:[F

    aget v8, v6, v7

    add-float/2addr v8, v5

    aput v8, v6, v7

    iget-object v5, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v5, v5, Lc/t/m/g/cp$b;->f:[F

    aget v6, v5, v7

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v8, v8, v10

    double-to-float v6, v8

    aput v6, v5, v7

    goto :goto_7

    :cond_f
    iget-object v6, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v6, v6, Lc/t/m/g/cp$b;->f:[F

    const/4 v7, 0x0

    aput v5, v6, v7

    :goto_7
    iget-object v5, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v5, v5, Lc/t/m/g/cp$b;->f:[F

    move-wide/from16 v5, v24

    goto :goto_8

    :cond_10
    move-object v15, v7

    move/from16 v23, v8

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_8
    if-eqz v23, :cond_17

    .line 594
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cp;->k()D

    move-result-wide v7

    const-wide v9, 0x40ed4c0000000000L    # 60000.0

    if-eqz v4, :cond_11

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 597
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Double;->compare(DD)I

    move-result v13

    if-eqz v13, :cond_11

    const-wide v13, 0x412b774000000000L    # 900000.0

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v20, v5, v18

    div-double v11, v20, v7

    .line 600
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 598
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    double-to-long v11, v11

    cmpg-double v13, v5, v18

    if-gez v13, :cond_12

    const-wide/32 v13, 0x4a768

    cmp-long v17, v11, v13

    if-lez v17, :cond_12

    const-wide/32 v11, 0x4a768

    goto :goto_9

    :cond_11
    const-wide/32 v11, 0xea60

    :cond_12
    :goto_9
    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    cmpg-double v17, v7, v13

    if-gez v17, :cond_14

    const-wide/high16 v13, 0x4089000000000000L    # 800.0

    cmpl-double v17, v5, v13

    if-lez v17, :cond_14

    .line 612
    iget-wide v11, v1, Lc/t/m/g/cp;->k:D

    const-wide v13, 0x3ff051eb851eb852L    # 1.02

    mul-double v11, v11, v13

    iput-wide v11, v1, Lc/t/m/g/cp;->k:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v13

    mul-double v11, v11, v9

    double-to-long v9, v11

    const-wide/32 v11, 0x4a768

    cmp-long v13, v9, v11

    if-lez v13, :cond_13

    goto :goto_a

    :cond_13
    move-wide v11, v9

    goto :goto_a

    :cond_14
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 617
    iput-wide v9, v1, Lc/t/m/g/cp;->k:D

    .line 620
    :goto_a
    iget-object v9, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iput-wide v11, v9, Lc/t/m/g/cp$b;->c:J

    if-eqz p1, :cond_15

    if-nez v4, :cond_15

    const/4 v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    .line 623
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "updateFences: needUpdates=%s, interval=%d, minDist=%5g, speed=%.2f, reschedule=%s, rate=%.2f"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    .line 625
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v13, v12

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v13, v6

    const/4 v5, 0x3

    .line 626
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v13, v5

    const/4 v5, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v13, v5

    const/4 v5, 0x5

    iget-wide v6, v1, Lc/t/m/g/cp;->k:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v13, v5

    .line 623
    invoke-static {v9, v10, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    iget-object v5, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean v5, v5, Lc/t/m/g/cp$b;->b:Z

    const-wide/16 v6, 0x2ee0

    if-nez v5, :cond_16

    .line 629
    iget-object v4, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lc/t/m/g/cp$b;->b:Z

    .line 630
    iget-object v4, v1, Lc/t/m/g/cp;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 631
    iget-object v4, v1, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    iget-object v5, v1, Lc/t/m/g/cp;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    iget-object v6, v1, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    .line 632
    invoke-virtual {v6}, Lc/t/m/g/cp$a;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 631
    invoke-virtual {v4, v5, v1, v6}, Lc/t/m/g/cy;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    goto :goto_c

    :cond_16
    if-eqz v4, :cond_18

    const-wide/16 v4, -0x1

    .line 634
    invoke-direct {v1, v4, v5}, Lc/t/m/g/cp;->a(J)Landroid/app/PendingIntent;

    .line 635
    iget-object v4, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lc/t/m/g/cp$b;->b:Z

    .line 636
    iget-object v4, v1, Lc/t/m/g/cp;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 637
    iget-object v4, v1, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    iget-object v5, v1, Lc/t/m/g/cp;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    iget-object v6, v1, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    .line 638
    invoke-virtual {v6}, Lc/t/m/g/cp$a;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 637
    invoke-virtual {v4, v5, v1, v6}, Lc/t/m/g/cy;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    goto :goto_c

    .line 642
    :cond_17
    iget-object v4, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean v4, v4, Lc/t/m/g/cp$b;->b:Z

    if-eqz v4, :cond_18

    .line 643
    iget-object v4, v1, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lc/t/m/g/cp$b;->b:Z

    .line 644
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cp;->g()V

    .line 645
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cp;->f()V

    .line 649
    :cond_18
    :goto_c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 650
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/t/m/g/co;

    .line 651
    iget-object v7, v6, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v7}, Lcom/tencent/map/geolocation/TencentGeofence;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 654
    invoke-virtual {v6}, Lc/t/m/g/co;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 656
    :cond_19
    iget-object v5, v1, Lc/t/m/g/cp;->g:Lc/t/m/g/cp$c;

    iget-object v5, v5, Lc/t/m/g/cp$c;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 661
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendIntentExit: pendingIntent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "entering"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {v1, v3, v4}, Lc/t/m/g/cp;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_e

    .line 663
    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendIntentEnter: pendingIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "entering"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {v1, v2, v3}, Lc/t/m/g/cp;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_f

    :cond_1b
    return-void

    :catchall_0
    move-exception v0

    .line 657
    monitor-exit v3

    throw v0
.end method

.method static synthetic b(Lc/t/m/g/cp;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/t/m/g/b$a;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean p1, p1, Lc/t/m/g/cp$b;->e:Z

    if-nez p1, :cond_1

    .line 447
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lc/t/m/g/cp$b;->e:Z

    .line 449
    iget-object p1, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    invoke-virtual {p1, v0}, Lc/t/m/g/cp$a;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lc/t/m/g/cp;)D
    .locals 2

    .line 71
    invoke-direct {p0}, Lc/t/m/g/cp;->k()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c()V
    .locals 0

    return-void
.end method

.method static synthetic d()Landroid/content/Intent;
    .locals 1

    .line 71
    invoke-static {}, Lc/t/m/g/cp;->l()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 266
    iget-boolean v0, p0, Lc/t/m/g/cp;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this object has been destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 293
    invoke-direct {p0, v0, v1}, Lc/t/m/g/cp;->a(J)Landroid/app/PendingIntent;

    .line 294
    iget-object v0, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc/t/m/g/cp$a;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->e()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 399
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v1, v0, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/t/m/g/cp$b;->b:Z

    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lc/t/m/g/cp$b;->c:J

    const/4 v2, 0x0

    iput-object v2, v0, Lc/t/m/g/cp$b;->d:Landroid/location/Location;

    iput-boolean v1, v0, Lc/t/m/g/cp$b;->e:Z

    .line 401
    iget-object v0, p0, Lc/t/m/g/cp;->g:Lc/t/m/g/cp$c;

    invoke-virtual {v0}, Lc/t/m/g/cp$c;->reset()V

    return-void
.end method

.method private h()V
    .locals 6

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 431
    iget-object v2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v2, v2, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    .line 432
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/t/m/g/co;

    .line 435
    iget-wide v3, v3, Lc/t/m/g/co;->c:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 454
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean v0, v0, Lc/t/m/g/cp$b;->e:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/t/m/g/cp$b;->e:Z

    .line 457
    iget-object v0, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    invoke-virtual {v0, v1}, Lc/t/m/g/cp$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private j()Landroid/location/Location;
    .locals 7

    .line 473
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v0, v0, Lc/t/m/g/cp$b;->d:Landroid/location/Location;

    .line 474
    iget-object v1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v1, v1, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 475
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v0, p0, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    .line 478
    invoke-virtual {v0}, Lc/t/m/g/cy;->a()Lcom/tencent/map/geolocation/TencentLocation;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lc/t/m/g/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 489
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private k()D
    .locals 8

    .line 499
    iget-object v0, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    .line 507
    invoke-static {v0}, Lc/t/m/g/ci;->a(Landroid/content/Context;)Lc/t/m/g/ci;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/ec;->a(Lc/t/m/g/ci;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v0, 0x41c80000    # 25.0f

    .line 513
    :goto_0
    iget-object v2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v2, v2, Lc/t/m/g/cp$b;->f:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_2

    .line 519
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    add-float/2addr v0, v1

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    float-to-double v0, v1

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    return-wide v0

    :cond_1
    return-wide v2

    .line 525
    :cond_2
    iget-object v1, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    invoke-static {v1}, Lc/t/m/g/b$a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double v0, v0, v2

    return-wide v0

    :cond_3
    float-to-double v0, v0

    return-wide v0
.end method

.method private static l()Landroid/content/Intent;
    .locals 3

    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.map.geolocation.wakeup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tencent.map.geolocation.from_alarm"

    const/4 v2, 0x1

    .line 723
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lc/t/m/g/cp;->h:Z

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lc/t/m/g/cp;->f()V

    .line 281
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v0, v0, Lc/t/m/g/cp$b;->f:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 283
    iget-object v0, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-direct {p0}, Lc/t/m/g/cp;->g()V

    .line 286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lc/t/m/g/cp;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 286
    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentGeofence;)V
    .locals 3

    .line 366
    invoke-direct {p0}, Lc/t/m/g/cp;->e()V

    if-nez p1, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeFence: fence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v1, v1, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    .line 374
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 375
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/co;

    .line 378
    iget-object v2, v2, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {p1, v2}, Lcom/tencent/map/geolocation/TencentGeofence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 383
    :cond_2
    invoke-direct {p0}, Lc/t/m/g/cp;->i()V

    .line 384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V
    .locals 6

    .line 309
    invoke-direct {p0}, Lc/t/m/g/cp;->e()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addFence: , geofence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    new-instance v0, Lc/t/m/g/co;

    .line 317
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentGeofence;->getExpireAt()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p2}, Lc/t/m/g/co;-><init>(Lcom/tencent/map/geolocation/TencentGeofence;JLandroid/app/PendingIntent;)V

    .line 318
    iget-object v1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v1, v1, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    .line 319
    iget-object v2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter v2

    .line 321
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 322
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/t/m/g/co;

    .line 323
    iget-object v5, v4, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {p1, v5}, Lcom/tencent/map/geolocation/TencentGeofence;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Lc/t/m/g/co;->d:Landroid/app/PendingIntent;

    invoke-virtual {p2, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 329
    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-direct {p0}, Lc/t/m/g/cp;->i()V

    .line 331
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 311
    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 411
    invoke-direct {p0}, Lc/t/m/g/cp;->e()V

    .line 414
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-object v1, v1, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    .line 416
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 417
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/co;

    .line 419
    iget-object v2, v2, Lc/t/m/g/co;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentGeofence;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 424
    :cond_2
    invoke-direct {p0}, Lc/t/m/g/cp;->i()V

    .line 426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 391
    invoke-direct {p0}, Lc/t/m/g/cp;->e()V

    .line 392
    iget-object v0, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    invoke-virtual {v1}, Lc/t/m/g/cy;->e()V

    .line 394
    invoke-direct {p0}, Lc/t/m/g/cp;->g()V

    .line 395
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V
    .locals 2

    .line 773
    invoke-static {p1}, Lc/t/m/g/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;

    move-result-object p3

    .line 775
    invoke-static {p1, p2}, Lc/t/m/g/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;I)Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lc/t/m/g/cp;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->e()V

    if-nez p2, :cond_2

    .line 786
    iget-object v0, p0, Lc/t/m/g/cp;->g:Lc/t/m/g/cp$c;

    invoke-virtual {v0, p2, p1}, Lc/t/m/g/cp$c;->add(ILcom/tencent/map/geolocation/TencentLocation;)V

    .line 788
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter p1

    .line 789
    :try_start_0
    iget-object p2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean p2, p2, Lc/t/m/g/cp$b;->b:Z

    if-eqz p2, :cond_0

    .line 790
    iget-object p2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iput-object p3, p2, Lc/t/m/g/cp$b;->d:Landroid/location/Location;

    .line 795
    :cond_0
    iget-object p2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean p2, p2, Lc/t/m/g/cp$b;->e:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 796
    iget-object p2, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    invoke-virtual {p2, p3}, Lc/t/m/g/cp$a;->removeMessages(I)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object p2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iput-boolean p3, p2, Lc/t/m/g/cp$b;->e:Z

    .line 800
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 801
    invoke-direct {p0, p1}, Lc/t/m/g/cp;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 800
    monitor-exit p1

    throw p2

    .line 805
    :cond_2
    iget-object p3, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const-wide/32 v0, 0xea60

    iput-wide v0, p3, Lc/t/m/g/cp$b;->c:J

    .line 806
    iget-object p3, p0, Lc/t/m/g/cp;->g:Lc/t/m/g/cp$c;

    invoke-virtual {p3, p2, p1}, Lc/t/m/g/cp$c;->add(ILcom/tencent/map/geolocation/TencentLocation;)V

    .line 810
    :goto_1
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-boolean p1, p1, Lc/t/m/g/cp$b;->b:Z

    if-eqz p1, :cond_3

    .line 811
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-wide p1, p1, Lc/t/m/g/cp$b;->c:J

    .line 814
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-wide p1, p1, Lc/t/m/g/cp$b;->c:J

    invoke-direct {p0, p1, p2}, Lc/t/m/g/cp;->a(J)Landroid/app/PendingIntent;

    .line 816
    :cond_3
    iget-object p1, p0, Lc/t/m/g/cp;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 817
    iget-object p1, p0, Lc/t/m/g/cp;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    monitor-enter p2

    .line 204
    :try_start_0
    invoke-direct {p0}, Lc/t/m/g/cp;->j()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 205
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_7

    const-string p1, "onReceive: screen_on and no_fresh_location --> schedule update fence"

    .line 207
    invoke-direct {p0, p1}, Lc/t/m/g/cp;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "com.tencent.map.geolocation.wakeup"

    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 210
    iget-object p1, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    sget-object v0, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-object v0, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "WakeLocker"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    sput-object p1, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 211
    iget-object p1, p0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp$a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lc/t/m/g/cp$a;->removeMessages(I)V

    .line 212
    invoke-direct {p0}, Lc/t/m/g/cp;->i()V

    .line 213
    sget-object p1, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3

    sget-object p1, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const/4 p1, 0x0

    sput-object p1, Lc/t/m/g/cq;->a:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_7

    const-string p1, "onReceive: power_disconnected --> schedule update fence"

    .line 216
    invoke-direct {p0, p1}, Lc/t/m/g/cp;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 219
    iget-object p1, p0, Lc/t/m/g/cp;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/t/m/g/b$a;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 221
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iput-boolean v2, p1, Lc/t/m/g/cp$b;->b:Z

    .line 223
    iget-object p1, p0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    const-wide/32 v0, 0xea60

    iput-wide v0, p1, Lc/t/m/g/cp$b;->c:J

    .line 224
    invoke-direct {p0}, Lc/t/m/g/cp;->f()V

    :cond_6
    const-string p1, "onReceive: connected and no_fresh_location --> schedule update fence"

    .line 226
    invoke-direct {p0, p1}, Lc/t/m/g/cp;->b(Ljava/lang/String;)V

    .line 228
    :cond_7
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 842
    iget-object p1, p0, Lc/t/m/g/cp;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method
