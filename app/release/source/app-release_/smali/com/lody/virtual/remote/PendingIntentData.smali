.class public Lcom/lody/virtual/remote/PendingIntentData;
.super Ljava/lang/Object;
.source "PendingIntentData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/remote/PendingIntentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public creator:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/lody/virtual/remote/PendingIntentData$1;

    invoke-direct {v0}, Lcom/lody/virtual/remote/PendingIntentData$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/remote/PendingIntentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingIntentData;->creator:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/remote/PendingIntentData;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lody/virtual/remote/PendingIntentData;->creator:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Lcom/lody/virtual/remote/PendingIntentData;->readPendingIntent(Landroid/os/IBinder;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/remote/PendingIntentData;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static readPendingIntent(Landroid/os/IBinder;)Landroid/app/PendingIntent;
    .locals 1

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p0, 0x0

    .line 35
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    :try_start_0
    invoke-static {v0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/lody/virtual/remote/PendingIntentData;->creator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lody/virtual/remote/PendingIntentData;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
