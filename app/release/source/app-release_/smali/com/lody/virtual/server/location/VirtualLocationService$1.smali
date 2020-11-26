.class Lcom/lody/virtual/server/location/VirtualLocationService$1;
.super Lcom/lody/virtual/helper/PersistenceLayer;
.source "VirtualLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/location/VirtualLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/location/VirtualLocationService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/location/VirtualLocationService;Ljava/io/File;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-direct {p0, p2}, Lcom/lody/virtual/helper/PersistenceLayer;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getCurrentVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readPersistenceData(Landroid/os/Parcel;)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$000(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    invoke-direct {v1, p1}, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->set(Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;)V

    .line 106
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/SparseArray;->clear()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v3}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writePersistenceData(Landroid/os/Parcel;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$000(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/server/location/VirtualLocationService$VLocConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/collection/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v0}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->keyAt(I)I

    move-result v0

    .line 97
    iget-object v2, p0, Lcom/lody/virtual/server/location/VirtualLocationService$1;->this$0:Lcom/lody/virtual/server/location/VirtualLocationService;

    invoke-static {v2}, Lcom/lody/virtual/server/location/VirtualLocationService;->access$100(Lcom/lody/virtual/server/location/VirtualLocationService;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
