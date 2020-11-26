.class Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemsContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private drawIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field iLatitudeCenter:I

.field iLongitudeCenter:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TItem;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;)V
    .locals 7

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->this$0:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLatitudeCenter:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLongitudeCenter:I

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->createItem(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLatitudeE6()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLongitudeE6()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    div-int/2addr v3, v1

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLatitudeCenter:I

    div-int/2addr v4, v1

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLongitudeCenter:I

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLatitudeCenter:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLongitudeCenter:I

    :goto_1
    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private getHitItemIndex(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)I
    .locals 11

    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getProjection()Lcom/tencent/tencentmap/mapsdk/map/Projection;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/Projection;->toPixels(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->count()I

    move-result v0

    const/4 v1, -0x1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, p2, p1, v5}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->hitItemDis(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;Lcom/tencent/tencentmap/mapsdk/map/Projection;Landroid/graphics/Point;I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_0

    cmpg-double v8, v6, v2

    if-gez v8, :cond_0

    invoke-virtual {p0, v5}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getPosByRank(I)I

    move-result v1

    move v4, v1

    move v1, v5

    move-wide v2, v6

    goto :goto_1

    :cond_0
    cmpl-double v8, v6, v2

    if-nez v8, :cond_1

    invoke-virtual {p0, v5}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getPosByRank(I)I

    move-result v6

    if-le v6, v4, :cond_1

    move v1, v5

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private hitItemDis(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;Lcom/tencent/tencentmap/mapsdk/map/Projection;Landroid/graphics/Point;I)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Lcom/tencent/tencentmap/mapsdk/map/Projection;",
            "Landroid/graphics/Point;",
            "I)D"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/Projection;->toPixels(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->isItemHited(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;Lcom/tencent/tencentmap/mapsdk/map/Projection;Landroid/graphics/Point;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p4

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p4

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p3, p1, Landroid/graphics/Point;->x:I

    mul-int p2, p2, p3

    iget p3, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int p3, p3, p1

    add-int/2addr p2, p3

    int-to-double p1, p2

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide p1
.end method

.method private isItemHited(Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;Lcom/tencent/tencentmap/mapsdk/map/Projection;Landroid/graphics/Point;I)Z
    .locals 1

    new-instance p3, Landroid/graphics/Point;

    iget p5, p4, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p5, v0

    iget p4, p4, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p4, p2

    invoke-direct {p3, p5, p4}, Landroid/graphics/Point;-><init>(II)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->this$0:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->access$100(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public HandleLongPress(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getHitItemIndex(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->this$0:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    invoke-static {p2, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->access$002(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public HandleTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getHitItemIndex(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->this$0:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->onTap(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->this$0:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->setFocus(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->postInvalidate()V

    return p1
.end method

.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 5

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLatitudeE6()I

    move-result v2

    const/4 v3, -0x1

    if-le v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLatitudeE6()I

    move-result v2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLongitudeE6()I

    move-result v2

    if-ge v1, v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLongitudeE6()I

    move-result p1

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLongitudeE6()I

    move-result p2

    if-le p1, p2, :cond_4

    return v4

    :cond_4
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public count()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexByItem(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->count()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getItemByPos(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getPosByRank(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSpan(Z)I
    .locals 4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLatitudeE6()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/GeoPoint;->getLongitudeE6()I

    move-result v3

    :goto_1
    if-le v3, v0, :cond_3

    move v0, v3

    :cond_3
    if-ge v3, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->drawIndex:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
