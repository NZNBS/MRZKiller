.class Lcom/lody/virtual/helper/collection/ArrayMap$1;
.super Lcom/lody/virtual/helper/collection/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/helper/collection/ArrayMap;->getCollection()Lcom/lody/virtual/helper/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/helper/collection/MapCollections<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/collection/ArrayMap;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/collection/ArrayMap;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-direct {p0}, Lcom/lody/virtual/helper/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    iget-object v0, v0, Lcom/lody/virtual/helper/collection/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    iget v0, v0, Lcom/lody/virtual/helper/collection/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/lody/virtual/helper/collection/ArrayMap$1;->this$0:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/lody/virtual/helper/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
