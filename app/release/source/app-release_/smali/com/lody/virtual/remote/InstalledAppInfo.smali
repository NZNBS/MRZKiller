.class public final Lcom/lody/virtual/remote/InstalledAppInfo;
.super Ljava/lang/Object;
.source "InstalledAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/remote/InstalledAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkPath:Ljava/lang/String;

.field public appId:I

.field public dependSystem:Z

.field public libPath:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/lody/virtual/remote/InstalledAppInfo$1;

    invoke-direct {v0}, Lcom/lody/virtual/remote/InstalledAppInfo$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/remote/InstalledAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->apkPath:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->libPath:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->dependSystem:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->appId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->apkPath:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->libPath:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->dependSystem:Z

    .line 30
    iput p6, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->appId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 38
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/lody/virtual/client/ipc/VPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledUsers()[I
    .locals 2

    .line 46
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->getPackageInstalledUsers(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getOdexFile()Ljava/io/File;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getOdexFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(I)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 42
    invoke-static {}, Lcom/lody/virtual/client/ipc/VPackageManager;->get()Lcom/lody/virtual/client/ipc/VPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/lody/virtual/client/ipc/VPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public isLaunched(I)Z
    .locals 2

    .line 50
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/client/core/VirtualCore;->isPackageLaunched(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    iget-object p2, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->libPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-boolean p2, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->dependSystem:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget p2, p0, Lcom/lody/virtual/remote/InstalledAppInfo;->appId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
