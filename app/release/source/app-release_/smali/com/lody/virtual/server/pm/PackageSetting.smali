.class public Lcom/lody/virtual/server/pm/PackageSetting;
.super Ljava/lang/Object;
.source "PackageSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_USER_STATE:Lcom/lody/virtual/server/pm/PackageUserState;


# instance fields
.field public apkPath:Ljava/lang/String;

.field public appId:I

.field public dependSystem:Z

.field public firstInstallTime:J

.field public lastUpdateTime:J

.field public libPath:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public skipDexOpt:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/lody/virtual/server/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/lody/virtual/server/pm/PackageSetting$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/PackageSetting$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/PackageSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    new-instance v0, Lcom/lody/virtual/server/pm/PackageUserState;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/PackageSetting;->DEFAULT_USER_STATE:Lcom/lody/virtual/server/pm/PackageUserState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->libPath:Ljava/lang/String;

    .line 45
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
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    .line 48
    const-class v0, Lcom/lody/virtual/server/pm/PackageUserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->skipDexOpt:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfo()Lcom/lody/virtual/remote/InstalledAppInfo;
    .locals 8

    .line 53
    new-instance v7, Lcom/lody/virtual/remote/InstalledAppInfo;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/server/pm/PackageSetting;->libPath:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    iget-boolean v5, p0, Lcom/lody/virtual/server/pm/PackageSetting;->skipDexOpt:Z

    iget v6, p0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/remote/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-object v7
.end method

.method public isHidden(I)Z
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lody/virtual/server/pm/PackageUserState;->hidden:Z

    return p1
.end method

.method public isInstalled(I)Z
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lody/virtual/server/pm/PackageUserState;->installed:Z

    return p1
.end method

.method public isLaunched(I)Z
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/lody/virtual/server/pm/PackageUserState;->launched:Z

    return p1
.end method

.method modifyUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/PackageUserState;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/lody/virtual/server/pm/PackageUserState;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/PackageUserState;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/pm/PackageUserState;

    if-eqz p1, :cond_0

    return-object p1

    .line 77
    :cond_0
    sget-object p1, Lcom/lody/virtual/server/pm/PackageSetting;->DEFAULT_USER_STATE:Lcom/lody/virtual/server/pm/PackageUserState;

    return-object p1
.end method

.method removeUser(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public setHidden(IZ)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->modifyUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    iput-boolean p2, p1, Lcom/lody/virtual/server/pm/PackageUserState;->hidden:Z

    return-void
.end method

.method public setInstalled(IZ)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->modifyUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    iput-boolean p2, p1, Lcom/lody/virtual/server/pm/PackageUserState;->installed:Z

    return-void
.end method

.method public setLaunched(IZ)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->modifyUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    iput-boolean p2, p1, Lcom/lody/virtual/server/pm/PackageUserState;->launched:Z

    return-void
.end method

.method setUserState(IZZZ)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/PackageSetting;->modifyUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object p1

    .line 67
    iput-boolean p2, p1, Lcom/lody/virtual/server/pm/PackageUserState;->launched:Z

    .line 68
    iput-boolean p3, p1, Lcom/lody/virtual/server/pm/PackageUserState;->hidden:Z

    .line 69
    iput-boolean p4, p1, Lcom/lody/virtual/server/pm/PackageUserState;->installed:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->libPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-boolean p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->userState:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 98
    iget-boolean p2, p0, Lcom/lody/virtual/server/pm/PackageSetting;->skipDexOpt:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
