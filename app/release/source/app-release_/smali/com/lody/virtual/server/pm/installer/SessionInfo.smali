.class public Lcom/lody/virtual/server/pm/installer/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/pm/installer/SessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public active:Z

.field public appIcon:Landroid/graphics/Bitmap;

.field public appLabel:Ljava/lang/CharSequence;

.field public appPackageName:Ljava/lang/String;

.field public installerPackageName:Ljava/lang/String;

.field public mode:I

.field public progress:F

.field public resolvedBaseCodePath:Ljava/lang/String;

.field public sealed:Z

.field public sessionId:I

.field public sizeBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/lody/virtual/server/pm/installer/SessionInfo$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/installer/SessionInfo$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sessionId:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->progress:F

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sealed:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->active:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->mode:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sizeBytes:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appPackageName:Ljava/lang/String;

    .line 95
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public static realloc(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/lody/virtual/server/pm/installer/SessionInfo;
    .locals 3

    .line 45
    new-instance v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/installer/SessionInfo;-><init>()V

    .line 46
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->sessionId:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sessionId:I

    .line 47
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 48
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 49
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->progress:Lmirror/RefFloat;

    invoke-virtual {v1, p0}, Lmirror/RefFloat;->get(Ljava/lang/Object;)F

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->progress:F

    .line 50
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->sealed:Lmirror/RefBoolean;

    invoke-virtual {v1, p0}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sealed:Z

    .line 51
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->active:Lmirror/RefBoolean;

    invoke-virtual {v1, p0}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->active:Z

    .line 52
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->mode:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->mode:I

    .line 53
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->sizeBytes:Lmirror/RefLong;

    invoke-virtual {v1, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sizeBytes:J

    .line 54
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->appPackageName:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appPackageName:Ljava/lang/String;

    .line 55
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->appIcon:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 56
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->appLabel:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appLabel:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public alloc()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 4

    .line 29
    sget-object v0, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 30
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->sessionId:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sessionId:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 31
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->progress:Lmirror/RefFloat;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->progress:F

    invoke-virtual {v1, v0, v2}, Lmirror/RefFloat;->set(Ljava/lang/Object;F)V

    .line 34
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->sealed:Lmirror/RefBoolean;

    iget-boolean v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sealed:Z

    invoke-virtual {v1, v0, v2}, Lmirror/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 35
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->active:Lmirror/RefBoolean;

    iget-boolean v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->active:Z

    invoke-virtual {v1, v0, v2}, Lmirror/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 36
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->mode:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->mode:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 37
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->sizeBytes:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sizeBytes:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 38
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->appPackageName:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->appIcon:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionInfo;->appLabel:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 67
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->progress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sealed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->active:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    iget-object p2, p0, Lcom/lody/virtual/server/pm/installer/SessionInfo;->appLabel:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
