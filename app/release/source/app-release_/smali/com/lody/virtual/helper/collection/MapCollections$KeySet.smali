.class final Lcom/lody/virtual/helper/collection/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/collection/MapCollections;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/collection/MapCollections;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 381
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 386
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 451
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 458
    iget-object v3, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v3, v0, v1}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 459
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 411
    new-instance v0, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;

    iget-object v1, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/helper/collection/MapCollections$ArrayIterator;-><init>(Lcom/lody/virtual/helper/collection/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->colRemoveAt(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/collection/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/MapCollections$KeySet;->this$0:Lcom/lody/virtual/helper/collection/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/helper/collection/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
