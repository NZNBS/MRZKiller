.class final Lcom/lody/virtual/server/pm/PackageUserState$1;
.super Ljava/lang/Object;
.source "PackageUserState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/PackageUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lody/virtual/server/pm/PackageUserState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/server/pm/PackageUserState;
    .locals 1

    .line 15
    new-instance v0, Lcom/lody/virtual/server/pm/PackageUserState;

    invoke-direct {v0, p1}, Lcom/lody/virtual/server/pm/PackageUserState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageUserState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lody/virtual/server/pm/PackageUserState;
    .locals 0

    .line 20
    new-array p1, p1, [Lcom/lody/virtual/server/pm/PackageUserState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageUserState$1;->newArray(I)[Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    return-object p1
.end method
