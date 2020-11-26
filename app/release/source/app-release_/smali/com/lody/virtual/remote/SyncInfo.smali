.class public Lcom/lody/virtual/remote/SyncInfo;
.super Ljava/lang/Object;
.source "SyncInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/remote/SyncInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final authorityId:I

.field public final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/lody/virtual/remote/SyncInfo$1;

    invoke-direct {v0}, Lcom/lody/virtual/remote/SyncInfo$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/remote/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/lody/virtual/remote/SyncInfo;->authorityId:I

    .line 34
    iput-object p2, p0, Lcom/lody/virtual/remote/SyncInfo;->account:Landroid/accounts/Account;

    .line 35
    iput-object p3, p0, Lcom/lody/virtual/remote/SyncInfo;->authority:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/lody/virtual/remote/SyncInfo;->startTime:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/SyncInfo;->authorityId:I

    .line 52
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1}, Landroid/accounts/Account;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/lody/virtual/remote/SyncInfo;->account:Landroid/accounts/Account;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/SyncInfo;->authority:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/remote/SyncInfo;->startTime:J

    return-void
.end method


# virtual methods
.method public create()Landroid/content/SyncInfo;
    .locals 4

    .line 58
    sget-object v0, Lmirror/android/content/SyncInfo;->ctor:Lmirror/RefConstructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/remote/SyncInfo;->authorityId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lody/virtual/remote/SyncInfo;->account:Landroid/accounts/Account;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lody/virtual/remote/SyncInfo;->authority:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/lody/virtual/remote/SyncInfo;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget p2, p0, Lcom/lody/virtual/remote/SyncInfo;->authorityId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p2, p0, Lcom/lody/virtual/remote/SyncInfo;->account:Landroid/accounts/Account;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    iget-object p2, p0, Lcom/lody/virtual/remote/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-wide v0, p0, Lcom/lody/virtual/remote/SyncInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
