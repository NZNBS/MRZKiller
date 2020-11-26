.class public Lcom/lody/virtual/helper/collection/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 35
    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/collection/SparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-nez p1, :cond_0

    .line 47
    sget-object p1, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    .line 48
    sget-object p1, Lcom/lody/virtual/helper/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result p1

    .line 51
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    .line 52
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    return-void
.end method

.method private gc()V
    .locals 8

    .line 141
    iget v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    .line 143
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    .line 144
    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 147
    aget-object v6, v2, v4

    .line 149
    sget-object v7, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 151
    aget v7, v1, v4

    aput v7, v1, v5

    .line 152
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 153
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iput-boolean v3, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    .line 161
    iput v5, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 343
    iget v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 348
    :cond_0
    iget-boolean v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 352
    :cond_1
    iget v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    .line 353
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 354
    invoke-static {v1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 356
    new-array v2, v1, [I

    .line 357
    new-array v1, v1, [Ljava/lang/Object;

    .line 360
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iput-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    .line 364
    iput-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 368
    iget-object p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 369
    iput v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 5

    .line 327
    iget v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    .line 328
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 331
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iput v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    .line 335
    iput-boolean v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Lcom/lody/virtual/helper/collection/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/helper/collection/SparseArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    .line 64
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->clone()Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 102
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/helper/collection/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public indexOfKey(I)I
    .locals 2

    .line 294
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1

    return p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 312
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    .line 179
    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 180
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 181
    aput-object p2, v2, v0

    return-void

    .line 185
    :cond_1
    iget-boolean v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 189
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result v0

    not-int v0, v0

    .line 192
    :cond_2
    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 193
    invoke-static {v1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 195
    new-array v2, v1, [I

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    .line 203
    iput-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    .line 206
    :cond_3
    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 208
    iget-object v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_4
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    aput p1, v1, v0

    .line 213
    iget-object p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 214
    iget p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 120
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 1

    .line 132
    iget v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->removeAt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mKeys:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/helper/collection/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lcom/lody/virtual/helper/collection/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 266
    aget-object v1, v0, p1

    .line 267
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 268
    iput-boolean p1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 227
    :cond_0
    iget v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 381
    invoke-virtual {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 387
    :goto_0
    iget v2, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mSize:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->keyAt(I)I

    move-result v2

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SparseArray;->gc()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
