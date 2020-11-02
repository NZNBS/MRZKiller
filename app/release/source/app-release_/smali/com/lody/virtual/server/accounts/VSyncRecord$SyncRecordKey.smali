.class public Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;
.super Ljava/lang/Object;
.source "VSyncRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VSyncRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncRecordKey"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field account:Landroid/accounts/Account;

.field authority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->account:Landroid/accounts/Account;

    .line 77
    iput-object p2, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->authority:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->account:Landroid/accounts/Account;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->authority:Ljava/lang/String;

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

    if-eqz p1, :cond_6

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 101
    :cond_1
    check-cast p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;

    .line 103
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->authority:Ljava/lang/String;

    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->authority:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-object p2, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;->authority:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
