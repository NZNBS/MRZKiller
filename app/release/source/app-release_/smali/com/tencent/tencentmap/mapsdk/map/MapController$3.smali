.class Lcom/tencent/tencentmap/mapsdk/map/MapController$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/map/MapController;->setOnMapHitListener(Lcom/tencent/tencentmap/mapsdk/map/OnMapHitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tencentmap/mapsdk/map/MapController;

.field final synthetic val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnMapHitListener;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/map/MapController;Lcom/tencent/tencentmap/mapsdk/map/OnMapHitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$3;->this$0:Lcom/tencent/tencentmap/mapsdk/map/MapController;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$3;->val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnMapHitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/tencent/mapsdk/raster/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$3;->val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnMapHitListener;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/OnMapHitListener;->onMapClick(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    return-void
.end method
