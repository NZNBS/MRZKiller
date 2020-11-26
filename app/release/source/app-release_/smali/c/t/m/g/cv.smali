.class final Lc/t/m/g/cv;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static volatile e:Lc/t/m/g/cv;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Z

.field private c:Z

.field private d:D


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lc/t/m/g/cv;->a:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iput-boolean p1, p0, Lc/t/m/g/cv;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/t/m/g/cv;
    .locals 1

    .line 20
    sget-object v0, Lc/t/m/g/cv;->e:Lc/t/m/g/cv;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lc/t/m/g/cv;

    invoke-direct {v0, p0}, Lc/t/m/g/cv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc/t/m/g/cv;->e:Lc/t/m/g/cv;

    .line 23
    :cond_0
    sget-object p0, Lc/t/m/g/cv;->e:Lc/t/m/g/cv;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lc/t/m/g/cv;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-boolean v0, p0, Lc/t/m/g/cv;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lc/t/m/g/cv;->c:Z

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 56
    iput-wide v0, p0, Lc/t/m/g/cv;->d:D

    .line 57
    iget-object v0, p0, Lc/t/m/g/cv;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 3

    .line 35
    iget-boolean v0, p0, Lc/t/m/g/cv;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-boolean v0, p0, Lc/t/m/g/cv;->c:Z

    if-nez v0, :cond_1

    .line 40
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cv;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lc/t/m/g/cv;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lc/t/m/g/cv;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final b()D
    .locals 2

    .line 67
    iget-boolean v0, p0, Lc/t/m/g/cv;->c:Z

    if-eqz v0, :cond_0

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lc/t/m/g/cv;->d:D

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 70
    monitor-exit p0

    throw v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 78
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 80
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 81
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 p1, 0x0

    .line 82
    aget p1, v1, p1

    float-to-double v0, p1

    .line 83
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v0, v2

    .line 84
    :try_start_1
    iput-wide v0, p0, Lc/t/m/g/cv;->d:D

    .line 85
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method
