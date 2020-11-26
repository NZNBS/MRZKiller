.class public Lcom/lody/virtual/helper/collection/ArrayMap;
.super Lcom/lody/virtual/helper/collection/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lody/virtual/helper/collection/SimpleArrayMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Lcom/lody/virtual/helper/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/helper/collection/SimpleArrayMap;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/collection/SimpleArrayMap;-><init>(Lcom/lody/virtual/helper/collection/SimpleArrayMap;)V

    return-void
.end method

.method private getCollection()Lcom/lody/virtual/helper/collection/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/collection/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap;->mCollections:Lcom/lody/virtual/helper/collection/MapCollections;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/helper/collection/ArrayMap$1;-><init>(Lcom/lody/virtual/helper/collection/ArrayMap;)V

    iput-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap;->mCollections:Lcom/lody/virtual/helper/collection/MapCollections;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap;->mCollections:Lcom/lody/virtual/helper/collection/MapCollections;

    return-object v0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 130
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->getCollection()Lcom/lody/virtual/helper/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->getCollection()Lcom/lody/virtual/helper/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 139
    iget v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->ensureCapacity(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 161
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->getCollection()Lcom/lody/virtual/helper/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
