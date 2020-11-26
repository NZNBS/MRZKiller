.class public Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final BOTTOM_CENTER:I = 0x51

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final LEFT:I = 0x3

.field public static final MODE_MAP:I = 0x0

.field public static final MODE_VIEW:I = 0x1

.field public static final RIGHT:I = 0x5

.field public static final TOP:I = 0x30

.field public static final TOP_LEFT:I = 0x33


# instance fields
.field private alignment:I

.field public mode:I

.field private point:Lcom/tencent/mapsdk/raster/model/LatLng;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->mode:I

    const/16 p1, 0x33

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->alignment:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->point:Lcom/tencent/mapsdk/raster/model/LatLng;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->x:I

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->y:I

    return-void
.end method

.method public constructor <init>(IILcom/tencent/mapsdk/raster/model/GeoPoint;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;-><init>(IILcom/tencent/mapsdk/raster/model/GeoPoint;III)V

    return-void
.end method

.method public constructor <init>(IILcom/tencent/mapsdk/raster/model/GeoPoint;III)V
    .locals 7

    invoke-static {p3}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Lcom/tencent/mapsdk/raster/model/GeoPoint;)Lcom/tencent/mapsdk/raster/model/LatLng;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;-><init>(IILcom/tencent/mapsdk/raster/model/LatLng;III)V

    return-void
.end method

.method public constructor <init>(IILcom/tencent/mapsdk/raster/model/LatLng;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;-><init>(IILcom/tencent/mapsdk/raster/model/LatLng;III)V

    return-void
.end method

.method public constructor <init>(IILcom/tencent/mapsdk/raster/model/LatLng;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->mode:I

    const/16 p1, 0x33

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->alignment:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->point:Lcom/tencent/mapsdk/raster/model/LatLng;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->x:I

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->y:I

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->mode:I

    invoke-virtual {p0, p3}, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->setPoint(Lcom/tencent/mapsdk/raster/model/LatLng;)V

    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->x:I

    iput p5, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->y:I

    iput p6, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->alignment:I

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->mode:I

    const/16 p1, 0x33

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->alignment:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->point:Lcom/tencent/mapsdk/raster/model/LatLng;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->x:I

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->y:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->x:I

    return p0
.end method

.method static synthetic access$100(Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->y:I

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->alignment:I

    return p0
.end method


# virtual methods
.method public getPoint()Lcom/tencent/mapsdk/raster/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->point:Lcom/tencent/mapsdk/raster/model/LatLng;

    return-object v0
.end method

.method public setPoint(Lcom/tencent/mapsdk/raster/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/MapView$LayoutParams;->point:Lcom/tencent/mapsdk/raster/model/LatLng;

    return-void
.end method
