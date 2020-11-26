.class public Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected boDragable:Z

.field private mMarker:Landroid/graphics/drawable/Drawable;

.field protected mPoint:Lcom/tencent/mapsdk/raster/model/GeoPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem$1;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem$1;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->boDragable:Z

    const-class v0, Lcom/tencent/mapsdk/raster/model/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapsdk/raster/model/GeoPoint;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mPoint:Lcom/tencent/mapsdk/raster/model/GeoPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mSnippet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/raster/model/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->boDragable:Z

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->Copy()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mPoint:Lcom/tencent/mapsdk/raster/model/GeoPoint;

    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mSnippet:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMarker()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mPoint:Lcom/tencent/mapsdk/raster/model/GeoPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDragable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->boDragable:Z

    return v0
.end method

.method public setDragable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->boDragable:Z

    return-void
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method public setPoint(Lcom/tencent/mapsdk/raster/model/GeoPoint;)V
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->Copy()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mPoint:Lcom/tencent/mapsdk/raster/model/GeoPoint;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mPoint:Lcom/tencent/mapsdk/raster/model/GeoPoint;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
