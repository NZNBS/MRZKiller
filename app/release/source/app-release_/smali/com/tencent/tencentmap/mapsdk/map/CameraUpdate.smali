.class public final Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;
.super Ljava/lang/Object;


# instance fields
.field private cameraUpdate:Lcom/tencent/mapsdk/rastercore/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/mapsdk/rastercore/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;->cameraUpdate:Lcom/tencent/mapsdk/rastercore/c/a;

    return-void
.end method


# virtual methods
.method final getCameraUpdateFactoryDelegate()Lcom/tencent/mapsdk/rastercore/c/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/CameraUpdate;->cameraUpdate:Lcom/tencent/mapsdk/rastercore/c/a;

    return-object v0
.end method
