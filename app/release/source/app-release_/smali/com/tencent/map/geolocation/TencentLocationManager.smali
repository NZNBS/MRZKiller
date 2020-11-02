.class public final Lcom/tencent/map/geolocation/TencentLocationManager;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final COORDINATE_TYPE_GCJ02:I = 0x1

.field public static final COORDINATE_TYPE_WGS84:I

.field private static d:Lcom/tencent/map/geolocation/TencentLocationManager;


# instance fields
.field private final a:[B

.field private final b:Lc/t/m/g/ci;

.field private final c:Lc/t/m/g/cy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 38
    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    .line 46
    invoke-static {p1}, Lc/t/m/g/ci;->a(Landroid/content/Context;)Lc/t/m/g/ci;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lc/t/m/g/ci;

    .line 47
    new-instance v0, Lc/t/m/g/cy;

    invoke-direct {v0, p1}, Lc/t/m/g/cy;-><init>(Lc/t/m/g/ci;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Lcom/tencent/map/geolocation/TencentLocationManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/tencent/map/geolocation/TencentLocationManager;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/map/geolocation/TencentLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "application context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_2
    :goto_0
    sget-object p0, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getBuild()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->i()Lc/t/m/g/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "None"

    return-object v0
.end method

.method public final getCoordinateType()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->f()I

    move-result v0

    return v0
.end method

.method public final getLastKnownLocation()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->a()Lcom/tencent/map/geolocation/TencentLocation;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->i()Lc/t/m/g/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lc/t/m/g/cj;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "None"

    return-object v0
.end method

.method public final removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter p1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->e()V

    .line 255
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;)I
    .locals 1

    .line 129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result p1

    return p1
.end method

.method public final requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 2

    const-string v0, "request is null"

    .line 153
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener is null"

    .line 156
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "looper is null"

    .line 159
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v1, p1, p2, p3}, Lc/t/m/g/cy;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v0

    throw p1
.end method

.method public final requestSingleFreshLocation(Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 2

    const-string v0, "listener is null"

    .line 177
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "looper is null"

    .line 180
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v1, p1, p2}, Lc/t/m/g/cy;->a(Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 184
    monitor-exit v0

    throw p1
.end method

.method public final setCoordinateType(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown coordinate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v1, p1}, Lc/t/m/g/cy;->a(I)V

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final startDistanceCalculate(Lcom/tencent/map/geolocation/TencentDistanceListener;)I
    .locals 2

    const-string v0, "listener is null"

    .line 199
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v1, p1}, Lc/t/m/g/cy;->a(Lcom/tencent/map/geolocation/TencentDistanceListener;)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 203
    monitor-exit v0

    throw p1
.end method

.method public final startIndoorLocation()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->c()Z

    move-result v0

    return v0
.end method

.method public final stopDistanceCalculate(Lcom/tencent/map/geolocation/TencentDistanceListener;)Lcom/tencent/map/geolocation/TencentDistanceAnalysis;
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter p1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->b()Lcom/tencent/map/geolocation/TencentDistanceAnalysis;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 217
    monitor-exit p1

    throw v0
.end method

.method public final stopIndoorLocation()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->d()Z

    move-result v0

    return v0
.end method
