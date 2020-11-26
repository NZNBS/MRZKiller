.class final Lc/t/m/g/cx;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:J

.field private final b:Lc/t/m/g/ci;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private volatile h:Z

.field private i:Landroid/os/HandlerThread;

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/os/Handler;

.field private l:Lc/t/m/g/cx;

.field private m:Z

.field private n:Lc/t/m/g/cr;

.field private o:Landroid/location/GpsStatus;

.field private p:J

.field private final q:[D


# direct methods
.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lc/t/m/g/cx;->a:J

    const/16 v0, 0x400

    .line 57
    iput v0, p0, Lc/t/m/g/cx;->c:I

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lc/t/m/g/cx;->d:Z

    .line 60
    iput-boolean v0, p0, Lc/t/m/g/cx;->e:Z

    .line 62
    iput v0, p0, Lc/t/m/g/cx;->f:I

    .line 63
    iput v0, p0, Lc/t/m/g/cx;->g:I

    const-wide/16 v0, -0x1

    .line 76
    iput-wide v0, p0, Lc/t/m/g/cx;->p:J

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 240
    iput-object v0, p0, Lc/t/m/g/cx;->q:[D

    .line 79
    iput-object p1, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    .line 80
    invoke-static {}, Lc/t/m/g/cr;->a()Lc/t/m/g/cr;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/cx;->n:Lc/t/m/g/cr;

    .line 81
    new-instance p1, Lc/t/m/g/cx$1;

    invoke-direct {p1, p0}, Lc/t/m/g/cx$1;-><init>(Lc/t/m/g/cx;)V

    iput-object p1, p0, Lc/t/m/g/cx;->j:Ljava/lang/Runnable;

    .line 99
    iput-object p0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/cx;

    return-void
.end method

.method static synthetic a(Lc/t/m/g/cx;)Lc/t/m/g/ci;
    .locals 0

    .line 32
    iget-object p0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    return-object p0
.end method

.method private static a(Landroid/location/Location;DDI)V
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "lat"

    .line 572
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "lng"

    .line 573
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "rssi"

    .line 574
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(D)Z
    .locals 3

    .line 217
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/location/Location;)Z
    .locals 4

    .line 310
    sget-boolean v0, Lc/t/m/g/dl;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 314
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 320
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_2

    .line 321
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    return v2

    :catchall_0
    :cond_2
    return v1
.end method

.method static synthetic b(Lc/t/m/g/cx;)Lc/t/m/g/cx;
    .locals 0

    .line 32
    iget-object p0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/cx;

    return-object p0
.end method

.method static synthetic c(Lc/t/m/g/cx;)Landroid/os/HandlerThread;
    .locals 0

    .line 32
    iget-object p0, p0, Lc/t/m/g/cx;->i:Landroid/os/HandlerThread;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 293
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x32c7

    .line 294
    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x2ee4

    .line 295
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 296
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 297
    iget-object p1, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {p1, v0}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 268
    iget v0, p0, Lc/t/m/g/cx;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 280
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x32c7

    .line 281
    iput v2, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x2ee2

    .line 282
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 283
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 284
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0, v1}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    .line 442
    :try_start_0
    iput v0, p0, Lc/t/m/g/cx;->g:I

    iput v0, p0, Lc/t/m/g/cx;->f:I

    .line 444
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 447
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 453
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v0

    .line 454
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    .line 455
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 459
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lc/t/m/g/cx;->f:I

    if-gt v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 460
    iput v2, p0, Lc/t/m/g/cx;->f:I

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    iget v2, p0, Lc/t/m/g/cx;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/t/m/g/cx;->g:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return-void
.end method

.method private g()I
    .locals 4

    const/4 v0, 0x0

    .line 518
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v1}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 524
    :cond_0
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    .line 525
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 531
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-gt v1, v2, :cond_2

    .line 532
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method private h()I
    .locals 4

    const/4 v0, 0x0

    .line 547
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v1}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 553
    :cond_0
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    .line 554
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 560
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    if-gt v1, v2, :cond_3

    .line 561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 8

    .line 135
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lc/t/m/g/cu;->a:Landroid/location/Location;

    return-object v0

    .line 142
    :cond_0
    iget-boolean v1, p0, Lc/t/m/g/cx;->m:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lc/t/m/g/dy;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lc/t/m/g/cx;->q:[D

    invoke-static {v0, v1}, Lc/t/m/g/b$a;->a(Landroid/location/Location;[D)Z

    .line 148
    iget-object v1, p0, Lc/t/m/g/cx;->q:[D

    aget-wide v3, v1, v3

    aget-wide v5, v1, v2

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    invoke-static/range {v1 .. v6}, Lc/t/m/g/cx;->a(Landroid/location/Location;DDI)V

    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lc/t/m/g/cx;->a(Landroid/location/Location;DDI)V

    :goto_2
    return-object v0
.end method

.method public final a(Z)V
    .locals 8

    .line 103
    iget-boolean v0, p0, Lc/t/m/g/cx;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gps_provider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/cx;->i:Landroid/os/HandlerThread;

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc/t/m/g/cx;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/t/m/g/cx;->k:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lc/t/m/g/cx;->h:Z

    .line 111
    iget-object v1, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v1}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v2

    if-nez p1, :cond_1

    .line 114
    :try_start_0
    iget-object p1, p0, Lc/t/m/g/cx;->k:Landroid/os/Handler;

    iget-object v1, p0, Lc/t/m/g/cx;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string v3, "passive"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    move-object v7, p0

    .line 116
    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    sput-boolean v0, Lc/t/m/g/dx;->a:Z

    .line 120
    :goto_0
    invoke-virtual {p0}, Lc/t/m/g/cx;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 125
    iput p1, p0, Lc/t/m/g/cx;->c:I

    .line 126
    invoke-direct {p0}, Lc/t/m/g/cx;->e()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 156
    iget-boolean v0, p0, Lc/t/m/g/cx;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cx;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lc/t/m/g/cx;->i:Landroid/os/HandlerThread;

    :cond_1
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lc/t/m/g/cx;->h:Z

    const-wide/16 v1, 0x0

    .line 165
    iput-wide v1, p0, Lc/t/m/g/cx;->a:J

    const/16 v1, 0x400

    .line 166
    iput v1, p0, Lc/t/m/g/cx;->c:I

    .line 167
    iput-boolean v0, p0, Lc/t/m/g/cx;->d:Z

    .line 168
    iput-boolean v0, p0, Lc/t/m/g/cx;->e:Z

    .line 169
    iput v0, p0, Lc/t/m/g/cx;->f:I

    .line 170
    iput v0, p0, Lc/t/m/g/cx;->g:I

    .line 171
    iput-boolean v0, p0, Lc/t/m/g/cx;->m:Z

    const-wide/16 v0, -0x1

    .line 172
    iput-wide v0, p0, Lc/t/m/g/cx;->p:J

    .line 173
    iget-object v0, p0, Lc/t/m/g/cx;->q:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 175
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0, p0}, Lc/t/m/g/ci;->b(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v0

    .line 179
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lc/t/m/g/cx;->m:Z

    return-void
.end method

.method public final c()Z
    .locals 6

    .line 191
    iget v0, p0, Lc/t/m/g/cx;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lc/t/m/g/cx;->a:J

    sub-long/2addr v0, v3

    invoke-static {}, Lc/t/m/g/cw;->a()Lc/t/m/g/cw;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/cw;->b()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final d()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v0

    :try_start_0
    const-string v1, "gps"

    .line 205
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onGpsStatusChanged(I)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    .line 404
    :cond_0
    iget-object p1, p0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {p1}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object p1

    .line 406
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/cx;->o:Landroid/location/GpsStatus;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/cx;->o:Landroid/location/GpsStatus;

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 414
    :goto_0
    iget-object p1, p0, Lc/t/m/g/cx;->o:Landroid/location/GpsStatus;

    if-eqz p1, :cond_2

    .line 415
    iget-object v2, p0, Lc/t/m/g/cx;->n:Lc/t/m/g/cr;

    invoke-virtual {v2, p1}, Lc/t/m/g/cr;->a(Landroid/location/GpsStatus;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_5

    .line 421
    iget-wide v6, p0, Lc/t/m/g/cx;->p:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    cmp-long v2, v6, v4

    if-nez v2, :cond_4

    .line 422
    :cond_3
    invoke-direct {p0, p1}, Lc/t/m/g/cx;->c(Z)V

    .line 424
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc/t/m/g/cx;->p:J

    goto :goto_2

    .line 426
    :cond_5
    iget-wide v6, p0, Lc/t/m/g/cx;->p:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lc/t/m/g/cx;->p:J

    sub-long/2addr v2, v6

    const-wide/32 v8, 0x9c40

    cmp-long v10, v2, v8

    if-lez v10, :cond_a

    cmp-long v2, v6, v4

    if-eqz v2, :cond_a

    .line 427
    :cond_6
    invoke-direct {p0, p1}, Lc/t/m/g/cx;->c(Z)V

    .line 428
    iput-wide v4, p0, Lc/t/m/g/cx;->p:J

    goto :goto_2

    .line 401
    :cond_7
    iget p1, p0, Lc/t/m/g/cx;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Lc/t/m/g/cx;->c:I

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 398
    iput p1, p0, Lc/t/m/g/cx;->c:I

    goto :goto_2

    .line 395
    :cond_9
    iget p1, p0, Lc/t/m/g/cx;->c:I

    or-int/2addr p1, v1

    iput p1, p0, Lc/t/m/g/cx;->c:I

    .line 433
    :cond_a
    :goto_2
    invoke-direct {p0}, Lc/t/m/g/cx;->f()V

    .line 437
    invoke-direct {p0}, Lc/t/m/g/cx;->g()I

    move-result p1

    invoke-direct {p0}, Lc/t/m/g/cx;->h()I

    move-result v2

    if-lez p1, :cond_b

    iput-boolean v1, p0, Lc/t/m/g/cx;->e:Z

    :cond_b
    if-lez v2, :cond_c

    iput-boolean v1, p0, Lc/t/m/g/cx;->d:Z

    :cond_c
    iget-boolean v1, p0, Lc/t/m/g/cx;->e:Z

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_f

    :try_start_0
    const-string v1, "gps"

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 338
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-string v5, "yyyy-MM-dd kk:mm:ss"

    .line 340
    iget-wide v8, v0, Lc/t/m/g/cx;->a:J

    invoke-static {v5, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    const v6, 0x461c4000    # 10000.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 342
    :cond_2
    invoke-static {v1, v2}, Lc/t/m/g/cx;->a(D)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4}, Lc/t/m/g/cx;->a(D)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v10, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v12, v5, v10

    if-ltz v12, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v12, v5, v10

    if-gez v12, :cond_4

    goto :goto_0

    :cond_4
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v12, v1, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v14, v12, v10

    if-ltz v14, :cond_1

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v12, v5, v10

    if-gez v12, :cond_5

    goto :goto_0

    :cond_5
    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v10, v1, v5

    if-ltz v10, :cond_1

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v10, v1, v5

    if-gtz v10, :cond_1

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double v5, v3, v1

    if-ltz v5, :cond_1

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpl-double v5, v3, v1

    if-lez v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    return-void

    .line 346
    :cond_7
    invoke-direct {p0}, Lc/t/m/g/cx;->f()V

    .line 347
    iget v1, v0, Lc/t/m/g/cx;->c:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Lc/t/m/g/cx;->c:I

    .line 349
    iget-object v1, v0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-direct/range {p0 .. p1}, Lc/t/m/g/cx;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 353
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lc/t/m/g/cx;->a:J

    .line 354
    iget v1, v0, Lc/t/m/g/cx;->g:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x4

    if-lt v1, v4, :cond_a

    const/4 v4, 0x6

    if-gt v1, v4, :cond_a

    const/4 v6, 0x2

    goto :goto_2

    :cond_a
    const/4 v2, 0x7

    if-lt v1, v2, :cond_b

    const/4 v6, 0x3

    goto :goto_2

    :cond_b
    const/4 v6, 0x0

    :goto_2
    iget-boolean v1, v0, Lc/t/m/g/cx;->m:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lc/t/m/g/dy;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_d

    iget-object v1, v0, Lc/t/m/g/cx;->q:[D

    invoke-static {v7, v1}, Lc/t/m/g/b$a;->a(Landroid/location/Location;[D)Z

    iget-object v1, v0, Lc/t/m/g/cx;->q:[D

    aget-wide v2, v1, v9

    aget-wide v4, v1, v8

    :goto_4
    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lc/t/m/g/cx;->a(Landroid/location/Location;DDI)V

    goto :goto_5

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    goto :goto_4

    :goto_5
    new-instance v9, Lc/t/m/g/dh;

    iget-wide v3, v0, Lc/t/m/g/cx;->a:J

    iget v5, v0, Lc/t/m/g/cx;->f:I

    iget v6, v0, Lc/t/m/g/cx;->g:I

    iget v10, v0, Lc/t/m/g/cx;->c:I

    move-object v1, v9

    move-object/from16 v2, p1

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lc/t/m/g/dh;-><init>(Landroid/location/Location;JIII)V

    iget-object v1, v0, Lc/t/m/g/cx;->b:Lc/t/m/g/ci;

    invoke-virtual {v1, v9}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    .line 355
    iget-wide v1, v0, Lc/t/m/g/cx;->p:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_f

    .line 356
    :cond_e
    invoke-direct {p0, v8}, Lc/t/m/g/cx;->c(Z)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lc/t/m/g/cx;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_f
    :goto_6
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gps"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 381
    iput p1, p0, Lc/t/m/g/cx;->g:I

    iput p1, p0, Lc/t/m/g/cx;->f:I

    .line 384
    iput p1, p0, Lc/t/m/g/cx;->c:I

    .line 385
    iput-boolean p1, p0, Lc/t/m/g/cx;->d:Z

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lc/t/m/g/cx;->a:J

    .line 387
    invoke-direct {p0}, Lc/t/m/g/cx;->e()V

    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gps"

    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 371
    iput p1, p0, Lc/t/m/g/cx;->c:I

    .line 373
    invoke-direct {p0}, Lc/t/m/g/cx;->e()V

    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
