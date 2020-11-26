.class final Lc/t/m/g/cy$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Z

.field private d:Z

.field private e:I

.field private synthetic f:Lc/t/m/g/cy;


# direct methods
.method constructor <init>(Lc/t/m/g/cy;Landroid/os/Looper;)V
    .locals 2

    .line 1070
    iput-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    .line 1071
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 1068
    iput p1, p0, Lc/t/m/g/cy$a;->e:I

    const-wide/16 v0, 0x0

    .line 1072
    iput-wide v0, p0, Lc/t/m/g/cy$a;->b:J

    .line 1073
    iput-boolean p1, p0, Lc/t/m/g/cy$a;->c:Z

    .line 1074
    iput-boolean p1, p0, Lc/t/m/g/cy$a;->d:Z

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 1344
    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->A(Lc/t/m/g/cy;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1346
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {p1}, Lc/t/m/g/cy;->A(Lc/t/m/g/cy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 1348
    iget-object v1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v1}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v2

    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto :goto_0

    .line 1350
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->A(Lc/t/m/g/cy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 1351
    sget-object v2, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v2, p1, v3}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto :goto_1

    .line 1353
    :cond_1
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {p1}, Lc/t/m/g/cy;->A(Lc/t/m/g/cy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    .line 1355
    :goto_2
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {p1}, Lc/t/m/g/cy;->B(Lc/t/m/g/cy;)J

    .line 1356
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {p1}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;

    move-result-object p1

    sget-object v0, Lc/t/m/g/cy$b;->c:Lc/t/m/g/cy$b;

    if-ne p1, v0, :cond_2

    .line 1357
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-virtual {p1}, Lc/t/m/g/cy;->e()V

    :cond_2
    return-void
.end method

.method private b(I)V
    .locals 8

    .line 1368
    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->C(Lc/t/m/g/cy;)Lc/t/m/g/cx;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cx;->a()Landroid/location/Location;

    move-result-object v0

    .line 1370
    sget-object v1, Lc/t/m/g/cu;->a:Landroid/location/Location;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v1}, Lc/t/m/g/cy;->l(Lc/t/m/g/cy;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1372
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1373
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    const-string v3, "lat"

    .line 1378
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "lng"

    .line 1379
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 1381
    :goto_0
    new-instance v1, Lc/t/m/g/dw$a;

    invoke-direct {v1}, Lc/t/m/g/dw$a;-><init>()V

    const-string v7, "network"

    iput-object v7, v1, Lc/t/m/g/dw$a;->d:Ljava/lang/String;

    .line 1382
    invoke-virtual {v1, v0}, Lc/t/m/g/dw$a;->a(Landroid/location/Location;)Lc/t/m/g/dw$a;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/dw$a;->a()Lc/t/m/g/dw;

    move-result-object v0

    .line 1383
    iget-object v1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v1}, Lc/t/m/g/cy;->n(Lc/t/m/g/cy;)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 1385
    invoke-virtual {p1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 1386
    invoke-virtual {p1, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 1387
    invoke-virtual {v0, p1}, Lc/t/m/g/dw;->a(Landroid/location/Location;)V

    .line 1389
    :cond_1
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {p1}, Lc/t/m/g/cy;->w(Lc/t/m/g/cy;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1390
    iget-object p1, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {p1, v2, v0}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;ILc/t/m/g/dw;)V

    .line 1392
    :cond_2
    invoke-direct {p0, v2}, Lc/t/m/g/cy$a;->a(I)V

    return-void

    .line 1394
    :cond_3
    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/dw;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v5, v0, v3

    if-gez v5, :cond_4

    .line 1396
    invoke-direct {p0, v2}, Lc/t/m/g/cy$a;->a(I)V

    return-void

    .line 1398
    :cond_4
    iget-object v0, p0, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    sget-object v1, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    invoke-static {v0, p1, v1}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;ILc/t/m/g/dw;)V

    .line 1399
    invoke-direct {p0, p1}, Lc/t/m/g/cy$a;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1078
    iput v0, p0, Lc/t/m/g/cy$a;->e:I

    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p0, v0}, Lc/t/m/g/cy$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1084
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1085
    :try_start_0
    iget-object v3, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->b(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;

    move-result-object v3

    sget-object v4, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    if-ne v3, v4, :cond_0

    .line 1086
    monitor-exit v2

    return-void

    .line 1088
    :cond_0
    iget-object v3, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->b(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v3

    .line 1089
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1090
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->d(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v2

    .line 1092
    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v11

    .line 1093
    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->e(Lc/t/m/g/cy;)J

    move-result-wide v4

    .line 1095
    :try_start_1
    iget v6, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x22a

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eq v6, v7, :cond_25

    const/16 v7, 0x22b

    const/16 v8, 0xf9f

    if-eq v6, v7, :cond_24

    const/16 v7, 0xf9d

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v6, v7, :cond_20

    if-eq v6, v8, :cond_14

    const/16 v7, 0x1f3f

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_11

    const/16 v7, 0x1386

    if-eq v6, v7, :cond_f

    const/16 v10, 0x1387

    if-eq v6, v10, :cond_4

    const/16 v0, 0x2ede

    const-wide v10, 0x408f400000000000L    # 1000.0

    if-eq v6, v0, :cond_3

    const/16 v0, 0x2edf

    if-eq v6, v0, :cond_1

    goto/16 :goto_6

    .line 1098
    :cond_1
    iget-object v6, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v6}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    if-eqz v3, :cond_2

    .line 1099
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v6

    invoke-static {v2, v6}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;Lc/t/m/g/dw;)V

    .line 1100
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v2

    iget-object v6, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v6}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v6

    .line 1101
    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v7

    iget-object v12, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v12}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1100
    invoke-interface {v3, v2, v6, v7}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1102
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->h(Lc/t/m/g/cy;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->i(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1103
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->i(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v14

    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v15

    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->j(Lc/t/m/g/cy;)D

    move-result-wide v2

    div-double/2addr v2, v10

    invoke-static {v2, v3, v13}, Lc/t/m/g/b$a;->a(DI)D

    move-result-wide v16

    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v18

    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    invoke-interface/range {v14 .. v19}, Lcom/tencent/map/geolocation/TencentDistanceListener;->onDistanceChanged(Lcom/tencent/map/geolocation/TencentLocation;DILjava/lang/String;)V

    :cond_2
    cmp-long v2, v4, v8

    if-lez v2, :cond_28

    .line 1106
    invoke-virtual {v1, v0, v4, v5}, Lc/t/m/g/cy$a;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1111
    :cond_3
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v0

    if-eqz v0, :cond_28

    if-eqz v3, :cond_28

    .line 1112
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;Lc/t/m/g/dw;)V

    .line 1113
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v0

    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v2

    .line 1114
    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v5}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1113
    invoke-interface {v3, v0, v2, v4}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1115
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->h(Lc/t/m/g/cy;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->i(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1116
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->i(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v2

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->f(Lc/t/m/g/cy;)Lc/t/m/g/dw;

    move-result-object v3

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->j(Lc/t/m/g/cy;)D

    move-result-wide v4

    div-double/2addr v4, v10

    invoke-static {v4, v5, v13}, Lc/t/m/g/b$a;->a(DI)D

    move-result-wide v4

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v6

    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v7, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v7}, Lc/t/m/g/cy;->g(Lc/t/m/g/cy;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/tencent/map/geolocation/TencentDistanceListener;->onDistanceChanged(Lcom/tencent/map/geolocation/TencentLocation;DILjava/lang/String;)V

    return-void

    .line 1234
    :cond_4
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->v(Lc/t/m/g/cy;)Lc/t/m/g/cj;

    move-result-object v2

    iget-wide v2, v2, Lc/t/m/g/cj;->o:J

    cmp-long v4, v2, v8

    if-nez v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->v(Lc/t/m/g/cy;)Lc/t/m/g/cj;

    move-result-object v4

    iget-wide v4, v4, Lc/t/m/g/cj;->n:J

    sub-long/2addr v2, v4

    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->v(Lc/t/m/g/cy;)Lc/t/m/g/cj;

    move-result-object v4

    iput-wide v2, v4, Lc/t/m/g/cj;->o:J

    .line 1236
    :cond_5
    invoke-virtual {v1, v7}, Lc/t/m/g/cy$a;->removeMessages(I)V

    .line 1237
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 1238
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1239
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lc/t/m/g/db$a;

    .line 1240
    iget-object v4, v2, Lc/t/m/g/db$a;->a:Ljava/lang/Object;

    check-cast v4, Lc/t/m/g/di;

    .line 1241
    iget-object v5, v2, Lc/t/m/g/db$a;->b:Ljava/lang/String;

    .line 1243
    invoke-virtual {v4}, Lc/t/m/g/di;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "gps"

    goto :goto_0

    :cond_6
    const-string v6, "network"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    :goto_0
    :try_start_2
    new-instance v7, Lc/t/m/g/dw$a;

    invoke-direct {v7}, Lc/t/m/g/dw$a;-><init>()V

    .line 1249
    iput-object v3, v7, Lc/t/m/g/dw$a;->a:Ljava/lang/String;

    iput v11, v7, Lc/t/m/g/dw$a;->c:I

    .line 1250
    iput-object v6, v7, Lc/t/m/g/dw$a;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lc/t/m/g/dw$a;->a()Lc/t/m/g/dw;

    move-result-object v6

    .line 1254
    invoke-virtual {v6}, Lc/t/m/g/dw;->getExtra()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "resp_json"

    invoke-virtual {v7, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v6}, Lc/t/m/g/dw;->isMockGps()I

    move-result v3

    if-ne v3, v14, :cond_7

    .line 1256
    iput-boolean v14, v1, Lc/t/m/g/cy$a;->d:Z

    .line 1258
    :cond_7
    invoke-static {v6}, Lc/t/m/g/dw;->a(Lc/t/m/g/dw;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1265
    :try_start_3
    invoke-static {v6, v5}, Lc/t/m/g/dl;->a(Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v4}, Lc/t/m/g/di;->a()Lc/t/m/g/dh;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1268
    invoke-virtual {v4}, Lc/t/m/g/di;->a()Lc/t/m/g/dh;

    move-result-object v3

    iget v3, v3, Lc/t/m/g/dh;->c:I

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    .line 1270
    :goto_1
    invoke-virtual {v6}, Lc/t/m/g/dw;->getExtra()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "sat_num"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1271
    invoke-virtual {v6}, Lc/t/m/g/dw;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "req_cost"

    iget v0, v0, Landroid/os/Message;->arg1:I

    int-to-long v10, v0

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1272
    invoke-virtual {v6}, Lc/t/m/g/dw;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "req_start"

    iget-wide v4, v2, Lc/t/m/g/db$a;->c:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1275
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc/t/m/g/cy;->b(Lc/t/m/g/cy;J)J

    .line 1276
    invoke-virtual {v6}, Lc/t/m/g/dw;->getIndoorBuildingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v14

    if-eqz v0, :cond_a

    .line 1277
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->t(Lc/t/m/g/cy;)I

    move-result v2

    if-ne v2, v14, :cond_a

    .line 1278
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->u(Lc/t/m/g/cy;)Lc/t/m/g/dd;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lc/t/m/g/dd;->b(J)V

    .line 1279
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->u(Lc/t/m/g/cy;)Lc/t/m/g/dd;

    move-result-object v2

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v3, v4}, Lc/t/m/g/dd;->a(J)V

    .line 1280
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->d(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-lez v2, :cond_9

    .line 1281
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2, v3, v4}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;J)J

    .line 1283
    :cond_9
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2, v13}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;I)I

    .line 1284
    iput v15, v1, Lc/t/m/g/cy$a;->e:I

    .line 1286
    :cond_a
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->t(Lc/t/m/g/cy;)I

    move-result v2

    if-ne v2, v13, :cond_c

    if-nez v0, :cond_b

    .line 1288
    iget v2, v1, Lc/t/m/g/cy$a;->e:I

    add-int/2addr v2, v14

    iput v2, v1, Lc/t/m/g/cy$a;->e:I

    .line 1291
    :cond_b
    iget v2, v1, Lc/t/m/g/cy$a;->e:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_c

    .line 1292
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->u(Lc/t/m/g/cy;)Lc/t/m/g/dd;

    move-result-object v2

    iget-object v3, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->v(Lc/t/m/g/cy;)Lc/t/m/g/cj;

    move-result-object v3

    iget-wide v3, v3, Lc/t/m/g/cj;->m:J

    invoke-virtual {v2, v3, v4}, Lc/t/m/g/dd;->a(J)V

    .line 1293
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->d(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    .line 1294
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->d(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;J)J

    .line 1295
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2, v14}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;I)I

    .line 1296
    iput v15, v1, Lc/t/m/g/cy$a;->e:I

    .line 1300
    :cond_c
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->w(Lc/t/m/g/cy;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v0, :cond_e

    .line 1301
    :cond_d
    invoke-static {v6, v0}, Lc/t/m/g/dw;->a(Lc/t/m/g/dw;Z)Lc/t/m/g/dw;

    .line 1302
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0, v15, v6}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;ILc/t/m/g/dw;)V

    .line 1304
    :cond_e
    invoke-direct {v1, v15}, Lc/t/m/g/cy$a;->a(I)V

    .line 1305
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0, v6}, Lc/t/m/g/cy;->b(Lc/t/m/g/cy;Lc/t/m/g/dw;)Lc/t/m/g/dw;

    .line 1308
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;

    move-result-object v0

    sget-object v2, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    if-ne v0, v2, :cond_28

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->x(Lc/t/m/g/cy;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1309
    invoke-static {}, Lc/t/m/g/cf;->a()Lc/t/m/g/cf;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cf;->b()V

    .line 1310
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->y(Lc/t/m/g/cy;)Z

    return-void

    :catch_0
    const/16 v0, 0x194

    .line 1260
    invoke-direct {v1, v0}, Lc/t/m/g/cy$a;->b(I)V

    return-void

    .line 1315
    :cond_f
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->v(Lc/t/m/g/cy;)Lc/t/m/g/cj;

    move-result-object v0

    iget-wide v2, v0, Lc/t/m/g/cj;->o:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v8

    if-nez v0, :cond_10

    .line 1316
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->v(Lc/t/m/g/cy;)Lc/t/m/g/cj;

    move-result-object v0

    iput-wide v4, v0, Lc/t/m/g/cj;->o:J

    .line 1318
    :cond_10
    invoke-direct {v1, v14}, Lc/t/m/g/cy$a;->b(I)V

    .line 1319
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0, v4, v5}, Lc/t/m/g/cy;->b(Lc/t/m/g/cy;J)J

    return-void

    .line 1121
    :cond_11
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->k(Lc/t/m/g/cy;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1128
    :cond_12
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->d(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v4

    const-wide/16 v6, 0xfa0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1129
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->l(Lc/t/m/g/cy;)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_13

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->l(Lc/t/m/g/cy;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_14

    :cond_13
    return-void

    :cond_14
    const/16 v0, 0xf9f

    .line 1133
    invoke-virtual {v1, v0}, Lc/t/m/g/cy$a;->removeMessages(I)V

    .line 1139
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;

    move-result-object v0

    sget-object v4, Lc/t/m/g/cy$b;->b:Lc/t/m/g/cy$b;

    if-ne v0, v4, :cond_17

    .line 1140
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v4, "up_daemon_delay"

    invoke-virtual {v0, v4}, Lc/t/m/g/cg;->c(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_15

    move-wide v4, v6

    .line 1145
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->m(Lc/t/m/g/cy;)J

    .line 1146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->m(Lc/t/m/g/cy;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-ltz v0, :cond_16

    .line 1147
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;J)J

    goto :goto_2

    :cond_16
    return-void

    .line 1154
    :cond_17
    :goto_2
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->n(Lc/t/m/g/cy;)I

    move-result v0

    .line 1155
    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->o(Lc/t/m/g/cy;)Lc/t/m/g/di;

    move-result-object v10

    if-nez v10, :cond_18

    .line 1157
    invoke-direct {v1, v13}, Lc/t/m/g/cy$a;->b(I)V

    return-void

    .line 1161
    :cond_18
    invoke-virtual {v10}, Lc/t/m/g/di;->b()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lc/t/m/g/cy$a;->b:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v8, v4, v6

    if-lez v8, :cond_19

    .line 1162
    iput-boolean v14, v1, Lc/t/m/g/cy$a;->c:Z

    .line 1163
    iput-boolean v15, v1, Lc/t/m/g/cy$a;->d:Z

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lc/t/m/g/cy$a;->b:J

    goto :goto_3

    .line 1166
    :cond_19
    iput-boolean v15, v1, Lc/t/m/g/cy$a;->c:Z

    .line 1168
    :goto_3
    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->p(Lc/t/m/g/cy;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    .line 1169
    invoke-static {v4}, Lc/t/m/g/cy;->q(Lc/t/m/g/cy;)Lc/t/m/g/ci;

    move-result-object v7

    iget-boolean v8, v1, Lc/t/m/g/cy$a;->c:Z

    iget-boolean v9, v1, Lc/t/m/g/cy$a;->d:Z

    iget-object v4, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v4}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;

    move-result-object v4

    sget-object v5, Lc/t/m/g/cy$b;->b:Lc/t/m/g/cy$b;

    if-ne v4, v5, :cond_1a

    const/16 v16, 0x1

    goto :goto_4

    :cond_1a
    const/16 v16, 0x0

    :goto_4
    move-object v4, v10

    move v5, v11

    move-object/from16 v20, v10

    move/from16 v10, v16

    .line 1168
    invoke-virtual/range {v4 .. v10}, Lc/t/m/g/di;->a(ILjava/lang/String;Lc/t/m/g/ci;ZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1171
    invoke-static {v4}, Lc/t/m/g/b$a;->b(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v14

    if-eqz v5, :cond_1c

    .line 1177
    iget v0, v1, Lc/t/m/g/cy$a;->a:I

    add-int/2addr v0, v14

    iput v0, v1, Lc/t/m/g/cy$a;->a:I

    if-lt v0, v13, :cond_1b

    .line 1180
    invoke-direct {v1, v13}, Lc/t/m/g/cy$a;->b(I)V

    .line 1181
    iput v15, v1, Lc/t/m/g/cy$a;->a:I

    :cond_1b
    return-void

    .line 1185
    :cond_1c
    iput v15, v1, Lc/t/m/g/cy$a;->a:I

    .line 1197
    iget-object v5, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v5}, Lc/t/m/g/cy;->c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;

    move-result-object v5

    sget-object v6, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    if-ne v5, v6, :cond_1e

    invoke-static {v2}, Lc/t/m/g/dl;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1198
    new-instance v0, Lc/t/m/g/dw$a;

    invoke-direct {v0}, Lc/t/m/g/dw$a;-><init>()V

    .line 1199
    iput-object v12, v0, Lc/t/m/g/dw$a;->b:Lc/t/m/g/dw;

    iput v11, v0, Lc/t/m/g/dw$a;->c:I

    .line 1200
    invoke-virtual {v0}, Lc/t/m/g/dw$a;->a()Lc/t/m/g/dw;

    move-result-object v0

    .line 1201
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/dl;->a(Lcom/tencent/map/geolocation/TencentLocation;[B)Lcom/tencent/map/geolocation/TencentLocation;

    .line 1202
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2, v0}, Lc/t/m/g/cy;->a(Lc/t/m/g/cy;Lc/t/m/g/dw;)V

    if-eqz v3, :cond_1d

    .line 1205
    invoke-static {}, Lc/t/m/g/cy;->g()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1204
    invoke-interface {v3, v0, v15, v2}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    :cond_1d
    return-void

    .line 1209
    :cond_1e
    sget-boolean v2, Lc/t/m/g/dl;->a:Z

    if-nez v2, :cond_1f

    return-void

    .line 1213
    :cond_1f
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->r(Lc/t/m/g/cy;)Lc/t/m/g/db;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v2, v4, v3, v0}, Lc/t/m/g/db;->a(Ljava/lang/String;Lc/t/m/g/di;I)V

    .line 1214
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->s(Lc/t/m/g/cy;)Lc/t/m/g/ck;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 1218
    :cond_20
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->o(Lc/t/m/g/cy;)Lc/t/m/g/di;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1222
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->p(Lc/t/m/g/cy;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->q(Lc/t/m/g/cy;)Lc/t/m/g/ci;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    move v5, v11

    invoke-virtual/range {v4 .. v10}, Lc/t/m/g/di;->a(ILjava/lang/String;Lc/t/m/g/ci;ZZZ)Ljava/lang/String;

    move-result-object v12

    .line 1223
    invoke-static {v12}, Lc/t/m/g/b$a;->b(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v15, v2, 0x1

    :cond_21
    if-eqz v0, :cond_23

    if-eqz v15, :cond_22

    goto :goto_5

    .line 1231
    :cond_22
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->r(Lc/t/m/g/cy;)Lc/t/m/g/db;

    move-result-object v2

    iget-object v3, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v3}, Lc/t/m/g/cy;->n(Lc/t/m/g/cy;)I

    move-result v3

    invoke-virtual {v2, v12, v0, v3}, Lc/t/m/g/db;->a(Ljava/lang/String;Lc/t/m/g/di;I)V

    return-void

    .line 1228
    :cond_23
    :goto_5
    invoke-direct {v1, v13}, Lc/t/m/g/cy$a;->b(I)V

    return-void

    .line 1323
    :cond_24
    iget-object v0, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/cy;->z(Lc/t/m/g/cy;)Lc/t/m/g/dk;

    const/16 v0, 0xf9f

    .line 1325
    invoke-virtual {v1, v0}, Lc/t/m/g/cy$a;->sendEmptyMessage(I)Z

    return-void

    .line 1328
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v2, "WIFIS"

    .line 1330
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    return-void

    .line 1334
    :cond_26
    iget-object v2, v1, Lc/t/m/g/cy$a;->f:Lc/t/m/g/cy;

    invoke-static {v2}, Lc/t/m/g/cy;->r(Lc/t/m/g/cy;)Lc/t/m/g/db;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    return-void

    :cond_27
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lc/t/m/g/b$a;->a([B)[B

    move-result-object v3

    invoke-static {v3, v13}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    new-instance v4, Lc/t/m/g/db$a;

    const/4 v5, 0x3

    const-string v6, "http://ue.indoorloc.map.qq.com/?wl"

    invoke-direct {v4, v5, v3, v6, v12}, Lc/t/m/g/db$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    iput-object v0, v4, Lc/t/m/g/db$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc/t/m/g/db;->a(Lc/t/m/g/db$a;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :cond_28
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    .line 1089
    monitor-exit v2

    throw v0
.end method
