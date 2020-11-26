.class final Lcom/lody/virtual/remote/ReceiverInfo$1;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/remote/ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lody/virtual/remote/ReceiverInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/remote/ReceiverInfo;
    .locals 1

    .line 16
    new-instance v0, Lcom/lody/virtual/remote/ReceiverInfo;

    invoke-direct {v0, p1}, Lcom/lody/virtual/remote/ReceiverInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/lody/virtual/remote/ReceiverInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/remote/ReceiverInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lody/virtual/remote/ReceiverInfo;
    .locals 0

    .line 21
    new-array p1, p1, [Lcom/lody/virtual/remote/ReceiverInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/lody/virtual/remote/ReceiverInfo$1;->newArray(I)[Lcom/lody/virtual/remote/ReceiverInfo;

    move-result-object p1

    return-object p1
.end method
