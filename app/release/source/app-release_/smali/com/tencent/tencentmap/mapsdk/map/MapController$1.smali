.class Lcom/tencent/tencentmap/mapsdk/map/MapController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/map/MapController;->setOnMapLoadedListener(Lcom/tencent/tencentmap/mapsdk/map/OnLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tencentmap/mapsdk/map/MapController;

.field final synthetic val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnLoadedListener;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/map/MapController;Lcom/tencent/tencentmap/mapsdk/map/OnLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$1;->this$0:Lcom/tencent/tencentmap/mapsdk/map/MapController;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$1;->val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapController$1;->val$listener:Lcom/tencent/tencentmap/mapsdk/map/OnLoadedListener;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/map/OnLoadedListener;->onMapLoaded()V

    return-void
.end method
