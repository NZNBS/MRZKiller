.class public Lcom/tencent/map/geolocation/TencentGeofenceManager;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field private a:Lc/t/m/g/cp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lc/t/m/g/cp;

    invoke-direct {v0, p1}, Lc/t/m/g/cp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lc/t/m/g/cp;

    return-void
.end method


# virtual methods
.method public addFence(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lc/t/m/g/cp;

    invoke-virtual {v0, p1, p2}, Lc/t/m/g/cp;->a(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lc/t/m/g/cp;

    invoke-virtual {v0}, Lc/t/m/g/cp;->a()V

    return-void
.end method

.method public removeAllFences()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lc/t/m/g/cp;

    invoke-virtual {v0}, Lc/t/m/g/cp;->b()V

    return-void
.end method

.method public removeFence(Lcom/tencent/map/geolocation/TencentGeofence;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lc/t/m/g/cp;

    invoke-virtual {v0, p1}, Lc/t/m/g/cp;->a(Lcom/tencent/map/geolocation/TencentGeofence;)V

    return-void
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lc/t/m/g/cp;

    invoke-virtual {v0, p1}, Lc/t/m/g/cp;->a(Ljava/lang/String;)V

    return-void
.end method
