.class public Landroid/content/res/XResources$XTypedArray;
.super Lxposed/dummy/XTypedArraySuperClass;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XTypedArray"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1259
    invoke-direct {p0, v0, v0, v0, v1}, Lxposed/dummy/XTypedArraySuperClass;-><init>(Landroid/content/res/Resources;[I[II)V

    .line 1260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 2

    .line 1265
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1266
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1267
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1268
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1269
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1270
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1271
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 1273
    :cond_1
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public getColor(II)I
    .locals 2

    .line 1278
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1279
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1280
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1281
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1282
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1283
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1284
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 1286
    :cond_1
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getColor(II)I

    move-result p1

    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1291
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1292
    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1293
    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 1294
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1295
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1296
    invoke-static {}, Landroid/content/res/XResources;->access$500()Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1297
    :try_start_0
    invoke-static {}, Landroid/content/res/XResources;->access$500()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 1299
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1300
    invoke-static {}, Landroid/content/res/XResources;->access$500()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1302
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    .line 1303
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1304
    :cond_2
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_3

    .line 1305
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1306
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1307
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 1309
    :cond_3
    invoke-super {p0, p1}, Lxposed/dummy/XTypedArraySuperClass;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getDimension(IF)F
    .locals 2

    .line 1314
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1315
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1316
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1317
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1318
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1

    .line 1320
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getDimension(IF)F

    move-result p1

    return p1
.end method

.method public getDimensionPixelOffset(II)I
    .locals 2

    .line 1325
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1326
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1327
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1328
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1329
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 1331
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelSize(II)I
    .locals 2

    .line 1336
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1337
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1338
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1339
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1340
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 1342
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 1347
    invoke-virtual {p0, p1, v0}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v0

    .line 1348
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast v1, Landroid/content/res/XResources;

    .line 1349
    invoke-static {v1, v0}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v2

    .line 1350
    instance-of v3, v2, Landroid/content/res/XResources$DrawableLoader;

    if-eqz v3, :cond_0

    .line 1352
    :try_start_0
    check-cast v2, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/XResources$DrawableLoader;->newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    return-object v0

    :catchall_0
    move-exception v0

    .line 1355
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1356
    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1357
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 1358
    :cond_1
    instance-of v0, v2, Landroid/content/res/XResForwarder;

    if-eqz v0, :cond_2

    .line 1359
    check-cast v2, Landroid/content/res/XResForwarder;

    invoke-virtual {v2}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1360
    invoke-virtual {v2}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1361
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 1363
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lxposed/dummy/XTypedArraySuperClass;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(IF)F
    .locals 2

    .line 1368
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1369
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1370
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1371
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1373
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1

    .line 1375
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public getFraction(IIIF)F
    .locals 2

    .line 1380
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1381
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1382
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1383
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p4

    .line 1385
    invoke-virtual {p1, p4, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    return p1

    .line 1387
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lxposed/dummy/XTypedArraySuperClass;->getFraction(IIIF)F

    move-result p1

    return p1
.end method

.method public getInt(II)I
    .locals 2

    .line 1392
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1393
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1394
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1395
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1396
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1397
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1398
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 1400
    :cond_1
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getInteger(II)I
    .locals 2

    .line 1405
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1406
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1407
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1408
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1409
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1410
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1411
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 1413
    :cond_1
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public getLayoutDimension(II)I
    .locals 2

    .line 1418
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1419
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1420
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1421
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1422
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 1424
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 2

    .line 1429
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1430
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1431
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1432
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 1433
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 1435
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XTypedArraySuperClass;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 1440
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1441
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1442
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1443
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1444
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1445
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1446
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1448
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XTypedArraySuperClass;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1453
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1454
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1455
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 1456
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1457
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1458
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1459
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1461
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XTypedArraySuperClass;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 2

    .line 1466
    invoke-virtual {p0}, Landroid/content/res/XResources$XTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/XResources$XTypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/res/XResources;->access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;

    move-result-object v0

    .line 1467
    instance-of v1, v0, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1468
    check-cast v0, [Ljava/lang/CharSequence;

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    .line 1469
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1470
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1471
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1472
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1474
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XTypedArraySuperClass;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
