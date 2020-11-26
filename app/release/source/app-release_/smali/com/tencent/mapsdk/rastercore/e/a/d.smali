.class public Lcom/tencent/mapsdk/rastercore/e/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mapsdk/rastercore/e/d;


# instance fields
.field private a:F

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/mapsdk/rastercore/d/e;

.field private e:Lcom/tencent/mapsdk/rastercore/d/a;

.field private f:Z

.field private g:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:F

.field private l:F

.field private m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

.field private n:F

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;Lcom/tencent/mapsdk/raster/model/PolylineOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->a:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->g:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->i:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->j:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->l:F

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->n:F

    const v0, -0xf0001

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->o:I

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->e()Lcom/tencent/mapsdk/rastercore/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->e:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->p:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getColor()I

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->j:I

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isDottedLine()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isGeodesic()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->b:Ljava/util/List;

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->b(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->isVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->i:Z

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getWidth()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->k:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getZIndex()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->l:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getArrowTexture()Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getEdgeWidth()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->n:F

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getEdgeColor()I

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->o:I

    invoke-virtual {p2}, Lcom/tencent/mapsdk/raster/model/PolylineOptions;->getArrowGap()F

    move-result p1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->a:F

    return-void
.end method

.method private static a([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    invoke-virtual {v11, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v13, v4, -0x2

    new-array v14, v13, [I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v14

    move v7, v13

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    aget v1, v14, v12

    const/high16 v15, -0x1000000

    if-ne v1, v15, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v13, -0x1

    aget v2, v14, v2

    if-ne v2, v15, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v3, v13, :cond_4

    aget v6, v14, v3

    if-eq v4, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11, v3}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Ljava/io/OutputStream;I)V

    aget v4, v14, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11, v13}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Ljava/io/OutputStream;I)V

    :cond_5
    move v13, v5

    add-int/lit8 v3, v13, 0x1

    if-eqz v1, :cond_6

    add-int/lit8 v3, v3, -0x1

    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v3, v3, -0x1

    :cond_7
    move v14, v3

    const/16 v16, 0x2

    add-int/lit8 v10, v10, -0x2

    new-array v7, v10, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x1

    move-object v1, v9

    move-object v2, v7

    move-object/from16 v18, v7

    move/from16 v7, v17

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    aget v1, v18, v12

    if-ne v1, v15, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v1, v10, -0x1

    aget v1, v18, v1

    if-ne v1, v15, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v2, v10, :cond_b

    aget v5, v18, v2

    if-eq v3, v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11, v2}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Ljava/io/OutputStream;I)V

    aget v3, v18, v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11, v10}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Ljava/io/OutputStream;I)V

    :cond_c
    add-int/lit8 v2, v4, 0x1

    if-eqz v8, :cond_d

    add-int/lit8 v2, v2, -0x1

    :cond_d
    if-eqz v1, :cond_e

    add-int/lit8 v2, v2, -0x1

    :cond_e
    const/4 v1, 0x0

    :goto_7
    mul-int v3, v14, v2

    const/4 v5, 0x1

    if-ge v1, v3, :cond_f

    invoke-static {v11, v5}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Ljava/io/OutputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    aput-byte v5, v1, v12

    int-to-byte v2, v13

    aput-byte v2, v1, v5

    int-to-byte v2, v4

    aput-byte v2, v1, v16

    const/4 v2, 0x3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-static {v9, v1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Landroid/graphics/Bitmap;[B)V

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v9, v5, v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mNinePatchChunk"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    goto :goto_8

    :cond_10
    move-object v8, v9

    :goto_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_11
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BI)I

    move-result v1

    iput v1, v10, Landroid/graphics/Rect;->left:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BI)I

    move-result v1

    iput v1, v10, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BI)I

    move-result v1

    iput v1, v10, Landroid/graphics/Rect;->top:I

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BI)I

    move-result v0

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;[B)V
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v9, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v9

    move v4, v0

    move v7, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, -0x1000000

    if-ge v2, v0, :cond_1

    aget v4, v9, v2

    if-ne v3, v4, :cond_0

    const/16 v4, 0xc

    invoke-static {p1, v4, v2}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BII)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_3

    aget v4, v9, v2

    if-ne v3, v4, :cond_2

    const/16 v4, 0x10

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v4, v0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BII)V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v2, v0, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, v2

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_4
    if-ge v1, v0, :cond_5

    aget p0, v2, v1

    if-ne v3, p0, :cond_4

    const/16 p0, 0x14

    invoke-static {p1, p0, v1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BII)V

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p0, v0, -0x1

    :goto_6
    if-ltz p0, :cond_7

    aget v1, v2, p0

    if-ne v3, v1, :cond_6

    const/16 v1, 0x18

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v1, v0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a([BII)V

    return-void

    :cond_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_a

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v3, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a()F

    move-result v5

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-double v7, v5

    int-to-float v5, v3

    iget v9, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->k:F

    mul-float v5, v5, v9

    iget v9, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->a:F

    mul-float v6, v6, v9

    div-float/2addr v5, v6

    float-to-double v5, v5

    int-to-double v9, v3

    mul-double v9, v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    neg-double v9, v9

    const/4 v13, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_a

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    add-int/lit8 v15, v13, 0x1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroid/graphics/PointF;

    if-eqz v14, :cond_3

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    iget v12, v14, Landroid/graphics/PointF;->x:F

    iget v2, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    move/from16 v16, v3

    float-to-double v2, v12

    move-wide/from16 v17, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v12, v14, Landroid/graphics/PointF;->y:F

    iget v7, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v7

    float-to-double v7, v12

    move v12, v4

    move-wide/from16 v19, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v16, v3

    move v12, v4

    move-wide/from16 v19, v5

    move-wide/from16 v17, v7

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v2, 0x0

    :goto_2
    add-double v6, v2, v9

    iget v8, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->a:F

    float-to-double v4, v8

    cmpg-double v21, v6, v4

    if-gez v21, :cond_4

    move/from16 v24, v12

    move/from16 v12, v16

    move-wide/from16 v8, v17

    goto/16 :goto_6

    :cond_4
    float-to-double v4, v8

    div-double v4, v2, v4

    float-to-double v6, v8

    sub-double/2addr v6, v9

    move-wide/from16 v21, v9

    float-to-double v8, v8

    div-double/2addr v6, v8

    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v9, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double v2, v2, v8

    const-wide v23, 0x400921fb54442d18L    # Math.PI

    div-double v2, v2, v23

    iget v10, v11, Landroid/graphics/PointF;->x:F

    iget v8, v14, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v10, v8

    if-gtz v8, :cond_5

    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v14, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    const-wide v8, 0x4066800000000000L    # 180.0

    sub-double v2, v8, v2

    add-double/2addr v2, v8

    goto :goto_3

    :cond_5
    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v9, v14, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    iget v8, v11, Landroid/graphics/PointF;->y:F

    iget v9, v14, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double v2, v8, v2

    :cond_6
    :goto_3
    move-wide/from16 v9, v21

    :goto_4
    cmpg-double v8, v6, v4

    if-gtz v8, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ne v13, v8, :cond_7

    add-double v21, v6, v19

    cmpl-double v8, v21, v4

    if-lez v8, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v14, Landroid/graphics/PointF;->x:F

    move-wide/from16 v21, v9

    float-to-double v8, v8

    iget v10, v11, Landroid/graphics/PointF;->x:F

    move/from16 v23, v13

    iget v13, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v13

    move/from16 v24, v12

    float-to-double v12, v10

    mul-double v12, v12, v6

    div-double/2addr v12, v4

    add-double/2addr v8, v12

    double-to-float v8, v8

    iget v9, v14, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    iget v12, v11, Landroid/graphics/PointF;->y:F

    iget v13, v14, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    mul-double v12, v12, v6

    div-double/2addr v12, v4

    add-double/2addr v9, v12

    double-to-float v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move-wide/from16 v8, v17

    double-to-float v10, v8

    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    neg-double v12, v2

    double-to-float v10, v12

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v10, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    invoke-virtual {v10}, Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    move/from16 v12, v16

    neg-int v13, v12

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-wide/from16 v17, v2

    move/from16 v2, v24

    neg-int v3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v13, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    cmpl-double v10, v2, v4

    if-lez v10, :cond_8

    sub-double v6, v4, v6

    iget v10, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->a:F

    float-to-double v0, v10

    mul-double v6, v6, v0

    goto :goto_5

    :cond_8
    move-wide/from16 v6, v21

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v12

    move/from16 v13, v23

    move/from16 v12, v24

    move-wide/from16 v25, v2

    move-wide/from16 v2, v17

    move-wide/from16 v17, v8

    move-wide v9, v6

    move-wide/from16 v6, v25

    goto/16 :goto_4

    :cond_9
    move-wide/from16 v21, v9

    move/from16 v24, v12

    move/from16 v12, v16

    move-wide/from16 v8, v17

    move-wide/from16 v6, v21

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move v13, v15

    move/from16 v4, v24

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide/from16 v25, v6

    move-wide/from16 v5, v19

    move-wide v7, v8

    move-wide/from16 v9, v25

    goto/16 :goto_0

    :cond_a
    :goto_7
    return-void
.end method

.method private static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;D)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    float-to-double v6, v3

    sub-double/2addr v4, v6

    mul-double v6, v4, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v8}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v8

    mul-double v8, v8, v6

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v10, v10, v3

    float-to-double v10, v10

    mul-double v10, v10, v4

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v12

    mul-double v12, v12, v10

    mul-double v12, v12, p2

    add-double/2addr v8, v12

    mul-float v3, v3, v3

    float-to-double v12, v3

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v14

    mul-double v14, v14, v12

    add-double/2addr v8, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v14

    mul-double v14, v14, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v4

    mul-double v4, v4, v10

    mul-double v4, v4, p2

    add-double/2addr v14, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v3}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v3

    mul-double v3, v3, v12

    add-double/2addr v14, v3

    mul-double v10, v10, p2

    add-double/2addr v6, v10

    add-double/2addr v6, v12

    new-instance v3, Lcom/tencent/mapsdk/raster/model/LatLng;

    div-double/2addr v14, v6

    div-double/2addr v8, v6

    invoke-direct {v3, v14, v15, v8, v9}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->builder()Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/mapsdk/raster/model/LatLng;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    if-nez v5, :cond_1

    :goto_1
    iget-object v2, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    goto/16 :goto_3

    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v9, v5, v7

    iget-object v5, v0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    if-gez v9, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    new-instance v8, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v11

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v13

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v15

    add-double/2addr v13, v15

    div-double/2addr v13, v11

    invoke-direct {v8, v9, v10, v13, v14}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->include(Lcom/tencent/mapsdk/raster/model/LatLng;)Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;

    invoke-virtual {v8}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-lez v13, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, -0x1

    :goto_2
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v18

    move-object/from16 v20, v1

    sub-double v0, v16, v18

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    mul-double v0, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v6, v10

    invoke-virtual {v4}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v10, v14

    mul-double v14, v10, v10

    mul-double v16, v6, v6

    div-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    move-wide/from16 v16, v12

    int-to-double v12, v9

    mul-double v12, v12, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v12, v0

    invoke-virtual {v8}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v0

    add-double/2addr v12, v0

    double-to-int v0, v12

    int-to-double v0, v0

    invoke-virtual {v8}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLatitude()D

    move-result-wide v12

    sub-double/2addr v12, v0

    mul-double v12, v12, v10

    div-double/2addr v12, v6

    invoke-virtual {v8}, Lcom/tencent/mapsdk/raster/model/LatLng;->getLongitude()D

    move-result-wide v6

    add-double/2addr v12, v6

    double-to-int v6, v12

    int-to-double v6, v6

    new-instance v8, Lcom/tencent/mapsdk/raster/model/LatLng;

    invoke-direct {v8, v0, v1, v6, v7}, Lcom/tencent/mapsdk/raster/model/LatLng;-><init>(DD)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v1, v16

    invoke-static {v0, v5, v1, v2}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Ljava/util/List;Ljava/util/List;D)V

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v20, v1

    :goto_4
    move-object/from16 v0, p0

    move-object v2, v4

    goto :goto_5

    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v0, p0

    :goto_5
    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_6
    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/tencent/mapsdk/raster/model/LatLngBounds$Builder;->build()Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mapsdk/rastercore/e/a/d;->g:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    return-void

    :cond_7
    :goto_6
    move-object v1, v0

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->k:F

    return v0
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->k:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->j:I

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->b:Ljava/util/List;

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mapsdk/rastercore/e/a/d;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->j:I

    return v0
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/mapsdk/raster/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public checkInBounds()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->g:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/c;->c()Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->g:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v0, v3}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->contains(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->g:Lcom/tencent/mapsdk/raster/model/LatLngBounds;

    invoke-virtual {v3, v0}, Lcom/tencent/mapsdk/raster/model/LatLngBounds;->intersects(Lcom/tencent/mapsdk/raster/model/LatLngBounds;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->k:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v5, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v5}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_0
    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/mapsdk/raster/model/LatLng;

    iget-object v7, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v7}, Lcom/tencent/mapsdk/rastercore/d/e;->b()Lcom/tencent/mapsdk/rastercore/d/c;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/mapsdk/rastercore/d/c;->a(Lcom/tencent/mapsdk/raster/model/LatLng;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v6, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->f:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a()F

    move-result v6

    float-to-int v6, v6

    new-instance v7, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x4

    new-array v8, v8, [F

    mul-int/lit8 v9, v6, 0x3

    int-to-float v9, v9

    aput v9, v8, v4

    int-to-float v4, v6

    aput v4, v8, v3

    const/4 v6, 0x2

    aput v9, v8, v6

    const/4 v6, 0x3

    aput v4, v8, v6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1

    :cond_2
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v3, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->n:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->o:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->n:F

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->b()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a()F

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->m:Lcom/tencent/mapsdk/raster/model/BitmapDescriptor;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->a(Landroid/graphics/Canvas;Ljava/util/List;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    :goto_2
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->h:Z

    return v0
.end method

.method public equalsRemote(Lcom/tencent/mapsdk/rastercore/e/b;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/tencent/mapsdk/rastercore/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Polyline"

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->l:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->i:Z

    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->e:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/e/a/d;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->i:Z

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->e:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a;->c()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->l:F

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->e:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/a;->c()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/d;->d:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method
