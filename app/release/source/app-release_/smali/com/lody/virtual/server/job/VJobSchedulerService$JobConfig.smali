.class public final Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;
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
    name = "JobConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extras:Landroid/os/PersistableBundle;

.field public serviceName:Ljava/lang/String;

.field public virtualJobId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    .line 146
    iput-object p2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->serviceName:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->extras:Landroid/os/PersistableBundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->serviceName:Ljava/lang/String;

    .line 153
    const-class v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    iput-object p1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->extras:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 163
    iget v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
