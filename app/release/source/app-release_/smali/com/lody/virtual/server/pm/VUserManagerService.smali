.class public Lcom/lody/virtual/server/pm/VUserManagerService;
.super Lcom/lody/virtual/server/IUserManager$Stub;
.source "VUserManagerService.java"


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "VUserManagerService"

.field private static final MIN_USER_ID:I = 0x1

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x1

.field private static sInstance:Lcom/lody/virtual/server/pm/VUserManagerService;


# instance fields
.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mGuestEnabled:Z

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private mNextUserId:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

.field private mRemovingUserIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUserVersion:I

.field private mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/pm/VUserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 104
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    .line 105
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/server/pm/VUserManagerService;-><init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lody/virtual/server/pm/VPackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Lcom/lody/virtual/server/IUserManager$Stub;-><init>()V

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextUserId:I

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 114
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

    .line 116
    iput-object p3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    .line 117
    iput-object p4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 118
    monitor-enter p3

    .line 119
    :try_start_0
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/lody/virtual/server/pm/VUserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {p1, p5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 123
    new-instance p2, Ljava/io/File;

    const-string p5, "0"

    invoke-direct {p2, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 125
    iput-object p6, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mBaseUserPath:Ljava/io/File;

    .line 130
    new-instance p2, Ljava/io/File;

    const-string p5, "userlist.xml"

    invoke-direct {p2, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    .line 131
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->readUserListLocked()V

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 134
    :goto_0
    iget-object p5, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result p5

    if-ge p2, p5, :cond_1

    .line 135
    iget-object p5, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/lody/virtual/os/VUserInfo;

    .line 136
    iget-boolean p6, p5, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz p6, :cond_0

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 140
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_2

    .line 141
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/lody/virtual/os/VUserInfo;

    const-string p6, "VUserManagerService"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing partially created user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p5, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p6, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget p5, p5, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-direct {p0, p5}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeUserStateLocked(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 146
    :cond_2
    sput-object p0, Lcom/lody/virtual/server/pm/VUserManagerService;->sInstance:Lcom/lody/virtual/server/pm/VUserManagerService;

    .line 147
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 147
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 148
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/pm/VUserManagerService;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3

    .line 166
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 167
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLocked()V
    .locals 5

    .line 477
    new-instance v0, Lcom/lody/virtual/os/VUserInfo;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mContext:Landroid/content/Context;

    .line 478
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lody/virtual/R$string;->owner_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 480
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 481
    iput v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    .line 482
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 484
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    .line 485
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    return-void
.end method

.method public static get()Lcom/lody/virtual/server/pm/VUserManagerService;
    .locals 2

    .line 152
    const-class v0, Lcom/lody/virtual/server/pm/VUserManagerService;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lcom/lody/virtual/server/pm/VUserManagerService;->sInstance:Lcom/lody/virtual/server/pm/VUserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNextAvailableIdLocked()I
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_0
    iget v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextUserId:I

    :goto_0
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    .line 873
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 878
    iput v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextUserId:I

    .line 879
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 880
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    if-eqz v0, :cond_0

    .line 204
    iget-boolean v1, v0, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserInfo: unknown user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VUserManagerService"

    invoke-static {v1, p1, v0}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 332
    invoke-static {}, Lcom/lody/virtual/os/VUserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 653
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p3

    .line 656
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 663
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p3

    .line 666
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p3
.end method

.method private readUser(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    const/4 v2, 0x0

    .line 589
    :try_start_0
    new-instance v3, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 591
    invoke-virtual {v3}, Lcom/lody/virtual/helper/utils/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 593
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 595
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "VUserManagerService"

    const/4 v9, 0x0

    if-eq v5, v7, :cond_2

    .line 601
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 644
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-object v2

    .line 605
    :cond_2
    :try_start_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "user"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_8

    const-string v5, "id"

    const/4 v12, -0x1

    .line 606
    invoke-direct {v1, v4, v5, v12}, Lcom/lody/virtual/server/pm/VUserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v0, :cond_4

    const-string v0, "User id does not match the file name"

    new-array v4, v9, [Ljava/lang/Object;

    .line 608
    invoke-static {v8, v0, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    .line 644
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_3
    return-object v2

    :cond_4
    :try_start_6
    const-string v5, "serialNumber"

    .line 611
    invoke-direct {v1, v4, v5, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "flags"

    .line 612
    invoke-direct {v1, v4, v8, v9}, Lcom/lody/virtual/server/pm/VUserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v12, "icon"

    .line 613
    invoke-interface {v4, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "created"

    .line 614
    invoke-direct {v1, v4, v13, v10, v11}, Lcom/lody/virtual/server/pm/VUserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const-string v15, "lastLoggedIn"

    .line 615
    invoke-direct {v1, v4, v15, v10, v11}, Lcom/lody/virtual/server/pm/VUserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    const-string v15, "partial"

    .line 616
    invoke-interface {v4, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "true"

    .line 617
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    .line 621
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    if-eq v15, v7, :cond_6

    if-eq v15, v6, :cond_6

    goto :goto_1

    :cond_6
    if-ne v15, v7, :cond_7

    .line 624
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 625
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 627
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v2

    :goto_2
    move v6, v9

    move v9, v8

    move-wide v7, v10

    move-wide v10, v13

    goto :goto_3

    :cond_8
    move v5, v0

    move-object v4, v2

    move-object v12, v4

    move-wide v7, v10

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 632
    :goto_3
    new-instance v13, Lcom/lody/virtual/os/VUserInfo;

    invoke-direct {v13, v0, v4, v12, v9}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 633
    iput v5, v13, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 634
    iput-wide v10, v13, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    .line 635
    iput-wide v7, v13, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 636
    iput-boolean v6, v13, Lcom/lody/virtual/os/VUserInfo;->partial:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_9

    .line 644
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_9
    return-object v13

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_3
    nop

    goto :goto_5

    :catch_4
    nop

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_a

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 648
    :catch_5
    :cond_a
    throw v0

    :catch_6
    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_b

    .line 644
    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_7
    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_b

    goto :goto_6

    :catch_8
    :cond_b
    :goto_8
    return-object v2
.end method

.method private readUserList()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->readUserListLocked()V

    .line 378
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readUserListLocked()V
    .locals 8

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    .line 383
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V

    return-void

    .line 388
    :cond_0
    new-instance v1, Lcom/lody/virtual/helper/utils/AtomicFile;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 390
    :try_start_0
    invoke-virtual {v1}, Lcom/lody/virtual/helper/utils/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 392
    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 394
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eq v4, v5, :cond_3

    const-string v2, "VUserManagerService"

    const-string v3, "Unable to read user list"

    new-array v0, v0, [Ljava/lang/Object;

    .line 400
    invoke-static {v2, v3, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 442
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, -0x1

    .line 405
    :try_start_3
    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    .line 406
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "users"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "nextSerialNumber"

    .line 407
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    :cond_4
    const-string v0, "version"

    .line 411
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 417
    :cond_5
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_8

    if-ne v0, v5, :cond_5

    .line 418
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "user"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "id"

    .line 419
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->readUser(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 423
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v7, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v4, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {v0}, Lcom/lody/virtual/os/VUserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 425
    iput-boolean v6, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    .line 427
    :cond_6
    iget v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    if-ltz v4, :cond_7

    iget v7, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    if-gt v4, v7, :cond_5

    .line 428
    :cond_7
    iget v0, v0, Lcom/lody/virtual/os/VUserInfo;->id:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    goto :goto_2

    .line 433
    :cond_8
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 434
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->upgradeIfNecessary()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_9

    .line 442
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_1
    move-object v2, v1

    goto :goto_3

    :catch_2
    move-object v2, v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 438
    :catch_3
    :goto_3
    :try_start_5
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_9

    .line 442
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 436
    :catch_4
    :goto_4
    :try_start_7
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->fallbackToSingleUserLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_9

    .line 442
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_a

    .line 442
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 444
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 447
    :cond_a
    :goto_7
    throw v0
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5

    .line 795
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 797
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 798
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 799
    invoke-direct {p0, v4}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private removeUserStateLocked(I)V
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService;->cleanUpUser(I)V

    .line 783
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 784
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 786
    new-instance v0, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    .line 787
    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/AtomicFile;->delete()V

    .line 789
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    .line 790
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 791
    invoke-static {p1}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "virtual.android.intent.action.USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v1

    new-instance v2, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v2, p1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    return-void
.end method

.method private updateUserIdsLocked()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 829
    :goto_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 830
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/os/VUserInfo;

    iget-boolean v3, v3, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    :cond_1
    new-array v1, v2, [I

    const/4 v2, 0x0

    .line 836
    :goto_1
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 837
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/os/VUserInfo;

    iget-boolean v3, v3, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 838
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 841
    :cond_3
    iput-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    return-void
.end method

.method private upgradeIfNecessary()V
    .locals 5

    .line 455
    iget v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 458
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/os/VUserInfo;

    .line 459
    iget-object v3, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    const-string v4, "Primary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Admin"

    .line 460
    iput-object v3, v0, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 461
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-ge v0, v2, :cond_2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User version "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " didn\'t upgrade as expected to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VUserManagerService"

    invoke-static {v2, v0, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    :cond_2
    iput v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    .line 471
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    :goto_0
    return-void
.end method

.method private writeBitmapLocked(Lcom/lody/virtual/os/VUserInfo;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 337
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    new-instance v1, Ljava/io/File;

    const-string v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 347
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2, v0, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "VUserManagerService"

    const-string v0, "Error setting photo for user "

    .line 356
    invoke-static {p1, v0, p2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_1
    :goto_0
    return-void
.end method

.method private writeUserListLocked()V
    .locals 10

    const-string v0, "user"

    const-string v1, "users"

    .line 546
    new-instance v2, Lcom/lody/virtual/helper/utils/AtomicFile;

    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v2, v3}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 548
    :try_start_0
    invoke-virtual {v2}, Lcom/lody/virtual/helper/utils/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 549
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 552
    new-instance v7, Lcom/lody/virtual/helper/utils/FastXmlSerializer;

    invoke-direct {v7}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;-><init>()V

    const-string v8, "utf-8"

    .line 553
    invoke-interface {v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 554
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 555
    invoke-interface {v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 557
    invoke-interface {v7, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "nextSerialNumber"

    .line 558
    iget v8, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "version"

    .line 559
    iget v8, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    .line 561
    :goto_0
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 562
    iget-object v8, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lody/virtual/os/VUserInfo;

    .line 563
    invoke-interface {v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "id"

    .line 564
    iget v8, v8, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    invoke-interface {v7, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-interface {v7, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 571
    invoke-virtual {v2, v5}, Lcom/lody/virtual/helper/utils/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v5

    .line 573
    :catch_1
    invoke-virtual {v2, v4}, Lcom/lody/virtual/helper/utils/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "VUserManagerService"

    const-string v2, "Error writing user list"

    .line 574
    invoke-static {v1, v2, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V
    .locals 9

    const-string v0, "name"

    const-string v1, "user"

    .line 497
    new-instance v2, Lcom/lody/virtual/helper/utils/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/lody/virtual/helper/utils/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 499
    :try_start_0
    invoke-virtual {v2}, Lcom/lody/virtual/helper/utils/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    new-instance v6, Lcom/lody/virtual/helper/utils/FastXmlSerializer;

    invoke-direct {v6}, Lcom/lody/virtual/helper/utils/FastXmlSerializer;-><init>()V

    const-string v7, "utf-8"

    .line 504
    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 505
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 506
    invoke-interface {v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 508
    invoke-interface {v6, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "id"

    .line 509
    iget v7, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "serialNumber"

    .line 510
    iget v7, p1, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "flags"

    .line 511
    iget v7, p1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "created"

    .line 512
    iget-wide v7, p1, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "lastLoggedIn"

    .line 513
    iget-wide v7, p1, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 514
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    iget-object v5, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "icon"

    .line 516
    iget-object v7, p1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :cond_0
    iget-boolean v5, p1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v5, :cond_1

    const-string v5, "partial"

    const-string v7, "true"

    .line 519
    invoke-interface {v6, v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    :cond_1
    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    iget-object v5, p1, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    invoke-interface {v6, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 529
    invoke-virtual {v2, v4}, Lcom/lody/virtual/helper/utils/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v0

    .line 531
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing user info "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VUserManagerService"

    invoke-static {v1, p1, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    invoke-virtual {v2, v3}, Lcom/lody/virtual/helper/utils/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;
    .locals 11

    const-string v0, "Only the system can create users"

    .line 674
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 680
    :try_start_1
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 681
    :try_start_2
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->isUserLimitReachedLocked()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    .line 682
    :cond_0
    :try_start_4
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->getNextAvailableIdLocked()I

    move-result v4

    .line 683
    new-instance v6, Lcom/lody/virtual/os/VUserInfo;

    invoke-direct {v6, v4, p1, v5, p2}, Lcom/lody/virtual/os/VUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 684
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 685
    iget p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    add-int/lit8 v7, p2, 0x1

    iput v7, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mNextSerialNumber:I

    iput p2, v6, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide v9, 0xdc46c32800L

    cmp-long p2, v7, v9

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    .line 687
    :goto_0
    iput-wide v7, v6, Lcom/lody/virtual/os/VUserInfo;->creationTime:J

    const/4 p2, 0x1

    .line 688
    iput-boolean p2, v6, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 689
    iget p2, v6, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {p2}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 690
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p2, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserListLocked()V

    .line 692
    invoke-direct {p0, v6}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 693
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPm:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-virtual {p2, v4, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService;->createNewUser(ILjava/io/File;)V

    const/4 p1, 0x0

    .line 694
    iput-boolean p1, v6, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 695
    invoke-direct {p0, v6}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 696
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/VUserManagerService;->updateUserIdsLocked()V

    .line 697
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 698
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 699
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    const-string p2, "virtual.android.intent.action.USER_ADDED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.extra.user_handle"

    .line 700
    iget v2, v6, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object p2

    sget-object v2, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    invoke-virtual {p2, p1, v2, v5}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_0
    move-exception p1

    .line 697
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    :catchall_1
    move-exception p1

    .line 698
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    .line 704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public exists(I)Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    invoke-static {v1, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method finishRemoveUser(I)V
    .locals 11

    .line 747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 749
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v2, "virtual.android.intent.action.USER_REMOVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.user_handle"

    .line 750
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v2

    sget-object v4, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    const/4 v5, 0x0

    new-instance v6, Lcom/lody/virtual/server/pm/VUserManagerService$2;

    invoke-direct {v6, p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService$2;-><init>(Lcom/lody/virtual/server/pm/VUserManagerService;I)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    throw p1
.end method

.method public getUserHandle(I)I
    .locals 6

    .line 815
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 817
    invoke-direct {p0, v4}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object v5

    iget v5, v5, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    if-ne v5, p1, :cond_0

    monitor-exit v0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 820
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/os/VUserInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 265
    iget-boolean v3, v1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, v1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 270
    monitor-exit v0

    return-object v2

    .line 272
    :cond_1
    iget-object p1, v1, Lcom/lody/virtual/os/VUserInfo;->iconPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    :goto_0
    const-string v1, "VUserManagerService"

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserIds()[I
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 368
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserIdsLPr()[I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Lcom/lody/virtual/os/VUserInfo;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserSerialNumber(I)I
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x1

    monitor-exit v0

    return p1

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->getUserInfoLocked(I)Lcom/lody/virtual/os/VUserInfo;

    move-result-object p1

    iget p1, p1, Lcom/lody/virtual/os/VUserInfo;->serialNumber:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 810
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/lody/virtual/os/VUserInfo;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/os/VUserInfo;

    .line 179
    iget-boolean v4, v3, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 182
    iget-object v4, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    iget v5, v3, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isGuestEnabled()Z
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeInitialized(I)V
    .locals 5

    const-string v0, "makeInitialized"

    .line 314
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/os/VUserInfo;

    if-eqz v1, :cond_0

    .line 317
    iget-boolean v2, v1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "VUserManagerService"

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :cond_1
    iget p1, v1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    .line 321
    iget p1, v1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v1, Lcom/lody/virtual/os/VUserInfo;->flags:I

    .line 322
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 324
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeUser(I)Z
    .locals 5

    const-string v0, "Only the system can remove users"

    .line 715
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/os/VUserInfo;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mRemovingUserIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 726
    iput-boolean v3, v1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    .line 727
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/server/pm/VUserManagerService$1;

    invoke-direct {v1, p0}, Lcom/lody/virtual/server/pm/VUserManagerService$1;-><init>(Lcom/lody/virtual/server/pm/VUserManagerService;)V

    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->stopUser(ILandroid/app/IStopUserCallback$Stub;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 720
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 728
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setGuestEnabled(Z)V
    .locals 4

    const-string v0, "enable guest users"

    .line 285
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-boolean v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    if-eq v1, p1, :cond_3

    .line 288
    iput-boolean p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mGuestEnabled:Z

    const/4 v1, 0x0

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/os/VUserInfo;

    .line 292
    iget-boolean v3, v2, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/lody/virtual/os/VUserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    .line 294
    iget p1, v2, Lcom/lody/virtual/os/VUserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->removeUser(I)Z

    .line 296
    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "Guest"

    const/4 v1, 0x4

    .line 301
    invoke-virtual {p0, p1, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->createUser(Ljava/lang/String;I)Lcom/lody/virtual/os/VUserInfo;

    .line 304
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "update users"

    .line 240
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/os/VUserInfo;

    if-eqz v1, :cond_1

    .line 243
    iget-boolean v2, v1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeBitmapLocked(Lcom/lody/virtual/os/VUserInfo;Landroid/graphics/Bitmap;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string p2, "VUserManagerService"

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserIcon: unknown user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 249
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 4

    const-string v0, "rename users"

    .line 219
    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/os/VUserInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 223
    iget-boolean v3, v1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 227
    iget-object v3, v1, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    iput-object p2, v1, Lcom/lody/virtual/os/VUserInfo;->name:Ljava/lang/String;

    .line 229
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    const/4 v2, 0x1

    .line 232
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 234
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->sendUserInfoChangedBroadcast(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    :try_start_1
    const-string p2, "VUserManagerService"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserName: unknown user #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, p1, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 232
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public userForeground(I)V
    .locals 6

    .line 849
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/os/VUserInfo;

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_2

    .line 852
    iget-boolean v4, v1, Lcom/lody/virtual/os/VUserInfo;->partial:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v4, 0xdc46c32800L

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 857
    iput-wide v2, v1, Lcom/lody/virtual/os/VUserInfo;->lastLoggedInTime:J

    .line 858
    invoke-direct {p0, v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->writeUserLocked(Lcom/lody/virtual/os/VUserInfo;)V

    .line 860
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    const-string v1, "VUserManagerService"

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userForeground: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 860
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public wipeUser(I)V
    .locals 0

    const-string p1, "wipe user"

    .line 309
    invoke-static {p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    return-void
.end method
