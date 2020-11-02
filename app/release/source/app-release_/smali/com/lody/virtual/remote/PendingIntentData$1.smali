.class final Lcom/lody/virtual/remote/PendingIntentData$1;
.super Ljava/lang/Object;
.source "PendingIntentData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/remote/PendingIntentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lody/virtual/remote/PendingIntentData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/remote/PendingIntentData;
    .locals 1

    .line 12
    new-instance v0, Lcom/lody/virtual/remote/PendingIntentData;

    invoke-direct {v0, p1}, Lcom/lody/virtual/remote/PendingIntentData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/lody/virtual/remote/PendingIntentData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/remote/PendingIntentData;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/lody/virtual/remote/PendingIntentData;
    .locals 0

    .line 16
    new-array p1, p1, [Lcom/lody/virtual/remote/PendingIntentData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/lody/virtual/remote/PendingIntentData$1;->newArray(I)[Lcom/lody/virtual/remote/PendingIntentData;

    move-result-object p1

    return-object p1
.end method
