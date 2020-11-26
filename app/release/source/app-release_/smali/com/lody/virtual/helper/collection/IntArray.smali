.class public Lcom/lody/virtual/helper/collection/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# static fields
.field private static final EMPTY_ARRAY:[I


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 24
    sput-object v0, Lcom/lody/virtual/helper/collection/IntArray;->EMPTY_ARRAY:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    return-void
.end method

.method private ensureCapacity()V
    .locals 3

    .line 72
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    array-length v2, v1

    if-gt v0, v2, :cond_0

    return-void

    .line 75
    :cond_0
    array-length v0, v1

    .line 76
    :goto_0
    iget v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    if-le v1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x3

    .line 77
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    return-void
.end method

.method public static varargs of([I)Lcom/lody/virtual/helper/collection/IntArray;
    .locals 2

    .line 36
    new-instance v0, Lcom/lody/virtual/helper/collection/IntArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/IntArray;-><init>()V

    .line 37
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    .line 38
    array-length p0, p0

    iput p0, v0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 94
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    .line 95
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/IntArray;->ensureCapacity()V

    .line 96
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    iget v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method public addAll([I)V
    .locals 4

    .line 87
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    .line 88
    array-length v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    .line 89
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/IntArray;->ensureCapacity()V

    .line 90
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    return-void
.end method

.method public contains(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    :goto_0
    iget v2, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    if-ge v1, v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public get(I)I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    aget p1, v0, p1

    return p1
.end method

.method public getAll()[I
    .locals 2

    .line 53
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lody/virtual/helper/collection/IntArray;->EMPTY_ARRAY:[I

    :goto_0
    return-object v0
.end method

.method public getRange(II)[I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    return-object p1
.end method

.method public optimize()V
    .locals 3

    .line 47
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 48
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/helper/collection/IntArray;->remove(II)V

    return-void
.end method

.method public remove(II)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    add-int v1, p1, p2

    iget v2, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget p1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    return-void
.end method

.method public set(II)V
    .locals 2

    .line 65
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    if-ge p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mData:[I

    aput p2, v0, p1

    return-void

    .line 66
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than the list size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public size()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/lody/virtual/helper/collection/IntArray;->mSize:I

    return v0
.end method
