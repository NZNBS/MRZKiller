.class final Lc/t/m/g/cx$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/cx;-><init>(Lc/t/m/g/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cx;


# direct methods
.method constructor <init>(Lc/t/m/g/cx;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "gps"

    .line 85
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    iget-object v2, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;)Lc/t/m/g/ci;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "force_xtra_injection"

    invoke-virtual {v2, v0, v3, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 87
    iget-object v2, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;)Lc/t/m/g/ci;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "force_time_injection"

    invoke-virtual {v2, v0, v3, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 92
    :goto_0
    :try_start_1
    iget-object v0, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;)Lc/t/m/g/ci;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;)Lc/t/m/g/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 93
    iget-object v0, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;)Lc/t/m/g/ci;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/ci;->d()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v0, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;)Lc/t/m/g/cx;

    move-result-object v6

    iget-object v0, p0, Lc/t/m/g/cx$1;->a:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->c(Lc/t/m/g/cx;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method
