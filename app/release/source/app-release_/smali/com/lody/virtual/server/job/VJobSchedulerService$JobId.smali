.class public final Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;
.super Ljava/lang/Object;
.source "VJobSchedulerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/job/VJobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JobId"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clientJobId:I

.field public packageName:Ljava/lang/String;

.field public vuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    .line 79
    iput-object p2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    .line 97
    iget v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    iget v3, p1, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    iget v3, p1, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    .line 99
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 117
    iget p2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object p2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget p2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
