.class public Lcom/lody/virtual/os/VUserInfo;
.super Ljava/lang/Object;
.source "VUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xff

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final NO_PROFILE_GROUP_ID:I = -0x1


# instance fields
.field public creationTime:J

.field public flags:I

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileGroupId:I

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/lody/virtual/os/VUserInfo$1;

    invoke-direct {v0}, Lcom/lody/virtual/os/VUserInfo$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/os/VUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    .line 80
    iput-object p2, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 81
    iput p4, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 82
    iput-object p3, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lody/virtual/os/VUserInfo$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/lody/virtual/os/VUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/lody/virtual/os/VUserInfo;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    .line 116
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    .line 117
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 118
    iget v0, p1, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    iput v0, p0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 119
    iget-wide v0, p1, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    iput-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 120
    iget-wide v0, p1, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 121
    iget-boolean v0, p1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    iput-boolean v0, p0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 122
    iget p1, p1, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    iput p1, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAdmin()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGuest()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManagedProfile()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrimary()Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRestricted()Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 135
    iget p2, p0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object p2, p0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget p2, p0, Lcom/lody/virtual/os/VUserInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget p2, p0, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-wide v0, p0, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-boolean p2, p0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/lody/virtual/os/VUserInfo;->profileGroupId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
