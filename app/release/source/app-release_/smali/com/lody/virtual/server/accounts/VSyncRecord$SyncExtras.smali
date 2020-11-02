.class public Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;
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
    name = "SyncExtras"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field extras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;->extras:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;->extras:Landroid/os/Bundle;

    check-cast p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;

    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/lody/virtual/server/accounts/VSyncRecord;->equals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
