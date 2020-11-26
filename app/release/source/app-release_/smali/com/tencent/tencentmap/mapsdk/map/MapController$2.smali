.class Lcom/tencent/tencentmap/mapsdk/map/MapController$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/map/MapController;->setOnMarkerClickListener(Lcom/tencent/tencentmap/mapsdk/map/OnMarkerPressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tencentmap/mapsdk/map/MapController;

.field final synthetic val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnMarkerPressListener;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/map/MapController;Lcom/tencent/tencentmap/mapsdk/map/OnMarkerPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$2;->this$0:Lcom/tencent/tencentmap/mapsdk/map/MapController;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$2;->val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnMarkerPressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/tencent/mapsdk/raster/model/Marker;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$2;->val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnMarkerPressListener;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/OnMarkerPressListener;->onMarkerPressed(Lcom/tencent/mapsdk/raster/model/Marker;)V

    const/4 p1, 0x0

    return p1
.end method
