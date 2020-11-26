.class final Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Lcom/lody/virtual/helper/collection/MapCollections;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/collection/MapCollections;I)V
    .locals 1

    .line 153
    iput-object p1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 154
    iput p2, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mOffset:I

    .line 155
    invoke-virtual {p1}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetSize()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 160
    iget v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    iget v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mIndex:I

    iget v2, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 166
    iget v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mIndex:I

    .line 167
    iput-boolean v2, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mIndex:I

    .line 177
    iget v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mSize:I

    const/4 v1, 0x0

    .line 178
    iput-boolean v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 179
    iget-object v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colRemoveAt(I)V

    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
