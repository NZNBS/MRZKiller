.class final Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig$1;
.super Ljava/lang/Object;
.source "VJobSchedulerService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;
    .locals 1

    .line 171
    new-instance v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    invoke-direct {v0, p1}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;
    .locals 0

    .line 176
    new-array p1, p1, [Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig$1;->newArray(I)[Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    move-result-object p1

    return-object p1
.end method
