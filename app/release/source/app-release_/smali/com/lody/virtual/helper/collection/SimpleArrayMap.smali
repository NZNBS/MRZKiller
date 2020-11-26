.class public Lcom/lody/virtual/helper/collection/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 67
    sget-object v0, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 76
    sget-object p1, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 77
    sget-object p1, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->allocArrays(I)V

    :goto_0
    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/helper/collection/SimpleArrayMap;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;-><init>()V

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->putAll(Lcom/lody/virtual/helper/collection/SimpleArrayMap;)V

    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 204
    const-class v3, Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v3

    .line 205
    :try_start_0
    sget-object v4, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 207
    iput-object v4, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 208
    aget-object p1, v4, v1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    aget-object p1, v4, v2

    check-cast p1, [I

    check-cast p1, [I

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 210
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 211
    sget p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr p1, v2

    sput p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 214
    monitor-exit v3

    return-void

    .line 216
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 218
    const-class v3, Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v3

    .line 219
    :try_start_1
    sget-object v4, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 221
    iput-object v4, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 222
    aget-object p1, v4, v1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 223
    aget-object p1, v4, v2

    check-cast p1, [I

    check-cast p1, [I

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 224
    aput-object v0, v4, v2

    aput-object v0, v4, v1

    .line 225
    sget p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCacheSize:I

    sub-int/2addr p1, v2

    sput p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 228
    monitor-exit v3

    return-void

    .line 230
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 233
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    shl-int/2addr p1, v2

    .line 234
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7

    .line 95
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 96
    const-class v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v0

    .line 97
    :try_start_0
    sget v6, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    .line 98
    sget-object v4, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 99
    aput-object p0, p1, v5

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_0
    if-lt p0, v2, :cond_0

    .line 101
    aput-object v1, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 103
    :cond_0
    sput-object p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 104
    sget p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 108
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 109
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 110
    const-class v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    monitor-enter v0

    .line 111
    :try_start_1
    sget v6, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v6, v4, :cond_4

    .line 112
    sget-object v4, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 113
    aput-object p0, p1, v5

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_1
    if-lt p0, v2, :cond_3

    .line 115
    aput-object v1, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 117
    :cond_3
    sput-object p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 118
    sget p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mBaseCacheSize:I

    .line 122
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 241
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    sget-object v0, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 244
    sget-object v0, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ensureCapacity(I)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 257
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->allocArrays(I)V

    .line 258
    iget p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-lez p1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_0
    iget p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 535
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 536
    check-cast p1, Ljava/util/Map;

    .line 537
    invoke-virtual {p0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 542
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-ge v1, v3, :cond_5

    .line 543
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 544
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 545
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-nez v5, :cond_2

    .line 547
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    return v2

    .line 550
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :catch_0
    :cond_6
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 9

    .line 569
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 570
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 572
    iget v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 573
    aget-object v7, v1, v3

    .line 574
    aget v8, v0, v5

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v6
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 5

    .line 127
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 148
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 149
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 153
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 154
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p1, v2

    return p1
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOfNull()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method indexOfNull()I
    .locals 5

    .line 165
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 186
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 187
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 191
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int v0, v2

    return v0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 5

    .line 287
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 288
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 291
    aget-object v3, v1, p1

    if-nez v3, :cond_0

    shr-int/2addr p1, v2

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 297
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 362
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOfNull()I

    move-result v1

    const/4 v2, 0x0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 381
    invoke-virtual {p0, p1, v1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 385
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 386
    aput-object p2, v0, p1

    return-object v1

    :cond_1
    not-int v1, v1

    .line 391
    iget v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    iget-object v4, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    array-length v5, v4

    if-lt v3, v5, :cond_5

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    goto :goto_1

    :cond_2
    if-lt v3, v5, :cond_3

    const/16 v5, 0x8

    .line 398
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 399
    invoke-direct {p0, v5}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->allocArrays(I)V

    .line 401
    iget-object v5, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    array-length v6, v5

    if-lez v6, :cond_4

    .line 403
    array-length v6, v4

    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v5, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_4
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    invoke-static {v4, v3, v0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 410
    :cond_5
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-ge v1, v0, :cond_6

    .line 413
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    sub-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_6
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    aput v2, v0, v1

    .line 418
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 419
    aput-object p2, v0, v1

    .line 420
    iget p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Lcom/lody/virtual/helper/collection/SimpleArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/helper/collection/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 429
    iget v0, p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    .line 430
    iget v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->ensureCapacity(I)V

    .line 431
    iget v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 433
    iget-object v1, p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget-object p1, p1, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iput v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 439
    invoke-virtual {p1, v2}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 451
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    .line 466
    iget v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    .line 469
    iget-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {p1, v0, v3}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 470
    sget-object p1, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    .line 471
    sget-object p1, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 472
    iput v4, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    goto :goto_0

    .line 474
    :cond_0
    iget-object v6, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    array-length v7, v6

    const/16 v8, 0x8

    if-le v7, v8, :cond_3

    array-length v7, v6

    div-int/lit8 v7, v7, 0x3

    if-ge v3, v7, :cond_3

    if-le v3, v8, :cond_1

    shr-int/lit8 v7, v3, 0x1

    add-int v8, v3, v7

    .line 484
    :cond_1
    invoke-direct {p0, v8}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->allocArrays(I)V

    .line 486
    iget v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-lez p1, :cond_2

    .line 489
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v6, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_2
    iget v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-ge p1, v3, :cond_5

    add-int/lit8 v4, p1, 0x1

    .line 495
    iget-object v7, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mHashes:[I

    sub-int/2addr v3, p1

    invoke-static {v6, v4, v7, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v3, v4, 0x1

    .line 496
    iget-object v4, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, p1

    shl-int/lit8 p1, v6, 0x1

    invoke-static {v0, v3, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    sub-int/2addr v3, v5

    .line 500
    iput v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-ge p1, v3, :cond_4

    add-int/lit8 v0, p1, 0x1

    sub-int/2addr v3, p1

    .line 504
    invoke-static {v6, v0, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/2addr v0, v5

    iget v4, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    sub-int/2addr v4, p1

    shl-int/lit8 p1, v4, 0x1

    invoke-static {v3, v0, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    :cond_4
    iget-object p1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    shl-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    shl-int/2addr v0, v5

    add-int/2addr v0, v5

    .line 509
    aput-object v3, p1, v0

    :cond_5
    :goto_0
    return-object v2
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 353
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 354
    aput-object p2, v0, p1

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 588
    invoke-virtual {p0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 594
    :goto_0
    iget v2, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mSize:I

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x3d

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 609
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method
