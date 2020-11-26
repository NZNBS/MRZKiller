.class final Lcom/lody/virtual/remote/VParceledListSlice$1;
.super Ljava/lang/Object;
.source "VParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/remote/VParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/lody/virtual/remote/VParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 2

    .line 33
    new-instance v0, Lcom/lody/virtual/remote/VParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/lody/virtual/remote/VParceledListSlice$1;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 2

    .line 38
    new-instance v0, Lcom/lody/virtual/remote/VParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/lody/virtual/remote/VParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/lody/virtual/remote/VParceledListSlice$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/lody/virtual/remote/VParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/remote/VParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lody/virtual/remote/VParceledListSlice;
    .locals 0

    .line 42
    new-array p1, p1, [Lcom/lody/virtual/remote/VParceledListSlice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/lody/virtual/remote/VParceledListSlice$1;->newArray(I)[Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    return-object p1
.end method
