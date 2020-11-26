.class public final Lcom/tencent/mapsdk/rastercore/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/rastercore/d/a$a;
    }
.end annotation


# static fields
.field private static e:I


# instance fields
.field private a:Lcom/tencent/mapsdk/rastercore/d/e;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/mapsdk/rastercore/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/mapsdk/rastercore/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/mapsdk/rastercore/d/a$a;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->c:Ljava/util/SortedMap;

    new-instance v0, Lcom/tencent/mapsdk/rastercore/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$a;-><init>(Lcom/tencent/mapsdk/rastercore/d/a;B)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->d:Lcom/tencent/mapsdk/rastercore/d/a$a;

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->f:I

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mapsdk/rastercore/d/a;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/tencent/mapsdk/rastercore/d/a;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/tencent/mapsdk/raster/model/MarkerOptions;)Lcom/tencent/mapsdk/rastercore/e/a/c;
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/c;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/MarkerOptions;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->c:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/e/a/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/CircleOptions;)Lcom/tencent/mapsdk/rastercore/e/a;
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mapsdk/rastercore/e/a;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/CircleOptions;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Lcom/tencent/mapsdk/rastercore/e/b;)V

    return-object v0
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/PolygonOptions;)Lcom/tencent/mapsdk/rastercore/e/c;
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/c;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mapsdk/rastercore/e/c;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/PolygonOptions;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Lcom/tencent/mapsdk/rastercore/e/b;)V

    return-object v0
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/PolylineOptions;)Lcom/tencent/mapsdk/rastercore/e/d;
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/e/a/d;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mapsdk/rastercore/e/a/d;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/PolylineOptions;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Lcom/tencent/mapsdk/rastercore/e/b;)V

    return-object v0
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;)Lcom/tencent/mapsdk/rastercore/tile/a/b;
    .locals 2

    new-instance v0, Lcom/tencent/mapsdk/rastercore/tile/a/b;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-direct {v0, v1, p1}, Lcom/tencent/mapsdk/rastercore/tile/a/b;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/GroundOverlayOptions;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Lcom/tencent/mapsdk/rastercore/e/b;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/e/b;

    invoke-interface {v1}, Lcom/tencent/mapsdk/rastercore/e/b;->destroy()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapsdk/rastercore/e/b;

    invoke-interface {v2}, Lcom/tencent/mapsdk/rastercore/e/b;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    if-le v0, v3, :cond_1

    invoke-interface {v2}, Lcom/tencent/mapsdk/rastercore/e/b;->checkInBounds()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v2, p1}, Lcom/tencent/mapsdk/rastercore/e/b;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/e/b;)V
    .locals 1

    invoke-interface {p1}, Lcom/tencent/mapsdk/rastercore/e/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mapsdk/rastercore/d/a;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    instance-of p1, p1, Lcom/tencent/mapsdk/rastercore/e/a;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->f:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->f:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/a;->c()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/e/b;

    instance-of v2, v1, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/GeoPoint;)Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/e/b;

    instance-of v2, v1, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->onTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapsdk/rastercore/e/b;

    instance-of v3, v2, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    invoke-virtual {v2, p1}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->onEmptyTap(Lcom/tencent/mapsdk/raster/model/GeoPoint;)V

    goto :goto_1

    :cond_3
    return v0
.end method

.method public final a(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/e/b;

    instance-of v2, v1, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/map/Overlay;

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v2}, Lcom/tencent/mapsdk/rastercore/d/e;->d()Lcom/tencent/tencentmap/mapsdk/map/MapView;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/tencent/tencentmap/mapsdk/map/Overlay;->onLongPress(Lcom/tencent/mapsdk/raster/model/GeoPoint;Landroid/view/MotionEvent;Lcom/tencent/tencentmap/mapsdk/map/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/a;->a()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mapsdk/rastercore/e/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/mapsdk/rastercore/e/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    instance-of v1, v1, Lcom/tencent/mapsdk/rastercore/e/a;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->f:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/tencent/mapsdk/rastercore/f/a;->a(Landroid/view/View;I)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v1, p1, p1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return v0

    :cond_3
    return p1
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->d:Lcom/tencent/mapsdk/rastercore/d/a$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v3, Lcom/tencent/mapsdk/rastercore/e/b;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/a;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/mapsdk/rastercore/e/a/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->c()V

    const/4 p1, 0x1

    return p1
.end method
