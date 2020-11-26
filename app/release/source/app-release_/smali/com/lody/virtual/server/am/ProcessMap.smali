.class Lcom/lody/virtual/server/am/ProcessMap;
.super Ljava/lang/Object;
.source "ProcessMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Lcom/lody/virtual/helper/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/helper/collection/SparseArray;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMap()Lcom/lody/virtual/helper/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lody/virtual/helper/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "TE;>;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    return-object v0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/collection/SparseArray;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/lody/virtual/helper/collection/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;-><init>(I)V

    .line 20
    iget-object v1, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    return-object p3
.end method

.method public remove(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/helper/collection/SparseArray;

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0, p2}, Lcom/lody/virtual/helper/collection/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p2

    .line 30
    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/server/am/ProcessMap;->mMap:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/helper/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
