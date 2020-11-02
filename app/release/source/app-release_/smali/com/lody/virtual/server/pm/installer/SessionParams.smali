.class public Lcom/lody/virtual/server/pm/installer/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/pm/installer/SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODE_FULL_INSTALL:I = 0x1

.field public static final MODE_INHERIT_EXISTING:I = 0x2

.field public static final MODE_INVALID:I = -0x1


# instance fields
.field public abiOverride:Ljava/lang/String;

.field public appIcon:Landroid/graphics/Bitmap;

.field public appIconLastModified:J

.field public appLabel:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public grantedRuntimePermissions:[Ljava/lang/String;

.field public installFlags:I

.field public installLocation:I

.field public mode:I

.field public originatingUri:Landroid/net/Uri;

.field public referrerUri:Landroid/net/Uri;

.field public sizeBytes:J

.field public volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Lcom/lody/virtual/server/pm/installer/SessionParams$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/installer/SessionParams$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    .line 46
    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    .line 54
    iput p1, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    .line 46
    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installFlags:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    .line 148
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    .line 151
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->originatingUri:Landroid/net/Uri;

    .line 152
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->referrerUri:Landroid/net/Uri;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->abiOverride:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->volumeUuid:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/pm/PackageInstaller$SessionParams;)Lcom/lody/virtual/server/pm/installer/SessionParams;
    .locals 3

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lcom/lody/virtual/server/pm/installer/SessionParams;

    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->mode:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/pm/installer/SessionParams;-><init>(I)V

    .line 92
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installFlags:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installFlags:I

    .line 93
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installLocation:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    .line 94
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->sizeBytes:Lmirror/RefLong;

    invoke-virtual {v1, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    .line 95
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appPackageName:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    .line 96
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIcon:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 97
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appLabel:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    .line 98
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIconLastModified:Lmirror/RefLong;

    invoke-virtual {v1, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    .line 99
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->originatingUri:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->originatingUri:Landroid/net/Uri;

    .line 100
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->referrerUri:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->referrerUri:Landroid/net/Uri;

    .line 101
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->abiOverride:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->abiOverride:Ljava/lang/String;

    .line 102
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->volumeUuid:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->volumeUuid:Ljava/lang/String;

    .line 103
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->grantedRuntimePermissions:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/pm/installer/SessionParams;

    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->mode:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/pm/installer/SessionParams;-><init>(I)V

    .line 107
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installFlags:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installFlags:I

    .line 108
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installLocation:Lmirror/RefInt;

    invoke-virtual {v1, p0}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    .line 109
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->sizeBytes:Lmirror/RefLong;

    invoke-virtual {v1, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    .line 110
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appPackageName:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    .line 111
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIcon:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 112
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appLabel:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    .line 113
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIconLastModified:Lmirror/RefLong;

    invoke-virtual {v1, p0}, Lmirror/RefLong;->get(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    .line 114
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->originatingUri:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->originatingUri:Landroid/net/Uri;

    .line 115
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->referrerUri:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->referrerUri:Landroid/net/Uri;

    .line 116
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->abiOverride:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/lody/virtual/server/pm/installer/SessionParams;->abiOverride:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 4

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 61
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installFlags:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installFlags:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 62
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->installLocation:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 63
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->sizeBytes:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 64
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appPackageName:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIcon:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appLabel:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->appIconLastModified:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 68
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->originatingUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->referrerUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->abiOverride:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->volumeUuid:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsMarshmallow;->grantedRuntimePermissions:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 76
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installFlags:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installFlags:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 77
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->installLocation:Lmirror/RefInt;

    iget v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 78
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->sizeBytes:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 79
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appPackageName:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIcon:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appLabel:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->appIconLastModified:Lmirror/RefLong;

    iget-wide v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    invoke-virtual {v1, v0, v2, v3}, Lmirror/RefLong;->set(Ljava/lang/Object;J)V

    .line 83
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->originatingUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->referrerUri:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    sget-object v1, Lmirror/android/content/pm/PackageInstaller$SessionParamsLOLLIPOP;->abiOverride:Lmirror/RefObject;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->abiOverride:Ljava/lang/String;

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

    .line 127
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-wide v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->appIconLastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object p2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/lody/virtual/server/pm/installer/SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
