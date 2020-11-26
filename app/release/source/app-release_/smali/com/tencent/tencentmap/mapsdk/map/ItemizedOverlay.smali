.class public abstract Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;
.super Lcom/tencent/tencentmap/mapsdk/map/Overlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;,
        Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;,
        Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;",
        ">",
        "Lcom/tencent/tencentmap/mapsdk/map/Overlay;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private boDrawShadow:Z

.field private boLongPress:Z

.field private defaultItemMarker:Landroid/graphics/drawable/Drawable;

.field private itemSelected:Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay<",
            "TItem;>.ItemsContainer;"
        }
    .end annotation
.end field

.field private mCurFocus:I

.field private mDrawFocusedItem:Z

.field private mLastFocus:I

.field private mlistener:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mDrawFocusedItem:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mlistener:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mLastFocus:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boLongPress:Z

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boDrawShadow:Z

    const-string v0, "marker.png"

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->defaultItemMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mDrawFocusedItem:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mlistener:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mLastFocus:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boLongPress:Z

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boDrawShadow:Z

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->defaultItemMarker:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->defaultItemMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->defaultItemMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the drawable can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->itemSelected:Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->defaultItemMarker:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private backwordFocus(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getItemByPos(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    return-object p1
.end method

.method public static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->Center:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    invoke-static {p0, v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->resetBound(Landroid/graphics/drawable/Drawable;Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->CenterBottom:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    invoke-static {p0, v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->resetBound(Landroid/graphics/drawable/Drawable;Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;ZLcom/tencent/tencentmap/mapsdk/map/OverlayItem;Landroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/tencent/tencentmap/mapsdk/map/MapView;",
            "ZTItem;",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->defaultItemMarker:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p3, :cond_1

    iget p3, p5, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p4, p5, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {p2, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->drawShadow(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget p3, p5, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p4, p5, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method static drawShadow(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/high16 v1, 0x7f000000

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, -0x409c28f6    # -0.89f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->skew(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method private forwordFocus(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getItemByPos(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    return-object p1
.end method

.method private static resetBound(Landroid/graphics/drawable/Drawable;Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_2

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->Normal:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;->Center:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$BoundPos;

    if-ne p1, v3, :cond_1

    div-int/lit8 v0, v0, 0x2

    neg-int v2, v0

    :cond_1
    neg-int p1, v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract createItem(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;)V
    .locals 12

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getProjection()Lcom/tencent/tencentmap/mapsdk/map/Projection;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->getItem(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Lcom/tencent/tencentmap/mapsdk/map/Projection;->toPixels(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v6, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boDrawShadow:Z

    if-ne v6, v4, :cond_1

    const/4 v9, 0x1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, v5

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;ZLcom/tencent/tencentmap/mapsdk/map/OverlayItem;Landroid/graphics/Point;)V

    :cond_1
    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, v5

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;ZLcom/tencent/tencentmap/mapsdk/map/OverlayItem;Landroid/graphics/Point;)V

    :catch_0
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->getFocus()Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->getPoint()Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/map/Projection;->toPixels(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boDrawShadow:Z

    if-ne v2, v4, :cond_4

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;ZLcom/tencent/tencentmap/mapsdk/map/OverlayItem;Landroid/graphics/Point;)V

    :cond_4
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/tencent/tencentmap/mapsdk/map/MapView;ZLcom/tencent/tencentmap/mapsdk/map/OverlayItem;Landroid/graphics/Point;)V

    :cond_5
    return-void
.end method

.method public getCenter()Lcom/tencent/mapsdk/raster/model/GeoPoint;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mapsdk/raster/model/GeoPoint;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLatitudeCenter:I

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->iLongitudeCenter:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapsdk/raster/model/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public getFocus()Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getItemByPos(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method protected getIndexToDraw(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getPosByRank(I)I

    move-result p1

    return p1
.end method

.method public final getItem(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getItemByPos(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    return-object p1
.end method

.method public final getLastFocusedIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mLastFocus:I

    return v0
.end method

.method public getLatSpanE6()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getSpan(Z)I

    move-result v0

    return v0
.end method

.method public getLonSpanE6()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getSpan(Z)I

    move-result v0

    return v0
.end method

.method public isShadowEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boDrawShadow:Z

    return v0
.end method

.method public nextFocus(Z)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->count()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mLastFocus:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getItemByPos(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    return-object p1

    :cond_2
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->forwordFocus(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->backwordFocus(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public onEmptyTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->onEmptyTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;)V

    return-void
.end method

.method public onLongPress(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/view/MotionEvent;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 1

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->HandleLongPress(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boLongPress:Z

    return v0
.end method

.method protected onTap(I)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->getItem(I)Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->setFocus(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)V

    :cond_1
    return v1
.end method

.method public onTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->HandleTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boLongPress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->itemSelected:Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->isDragable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getProjection()Lcom/tencent/tencentmap/mapsdk/map/Projection;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/Projection;->fromPixels(II)Lcom/tencent/mapsdk/raster/model/GeoPoint;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->itemSelected:Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    invoke-virtual {p2, p1}, Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;->setPoint(Lcom/tencent/mapsdk/raster/model/GeoPoint;)V

    iget-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mapContext:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/b;->invalidate()V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boLongPress:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->itemSelected:Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;

    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method protected final populate()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->release()V

    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;-><init>(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mLastFocus:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mDrawFocusedItem:Z

    return-void
.end method

.method public setFocus(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getIndexByItem(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)I

    move-result v0

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_3

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mlistener:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)V

    :cond_2
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mContainer:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$ItemsContainer;->getIndexByItem(Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)I

    move-result v1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mCurFocus:I

    if-eq v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->setLastFocusedIndex(I)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mlistener:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0, p1}, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;Lcom/tencent/tencentmap/mapsdk/map/OverlayItem;)V

    :cond_4
    return-void
.end method

.method protected setLastFocusedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mLastFocus:I

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->mlistener:Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay$OnFocusChangeListener;

    return-void
.end method

.method public setShadowEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/map/ItemizedOverlay;->boDrawShadow:Z

    return-void
.end method

.method public abstract size()I
.end method
