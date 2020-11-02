.class public Lcom/lody/virtual/server/am/UidSystem;
.super Ljava/lang/Object;
.source "UidSystem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UidSystem"


# instance fields
.field private mFreeUid:I

.field private final mSharedUserIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    const/16 v0, 0x2710

    .line 28
    iput v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    return-void
.end method

.method private loadUidList(Ljava/io/File;)Z
    .locals 3

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    .line 48
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 49
    iget-object v2, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    return v1
.end method

.method private save()V
    .locals 5

    .line 58
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getUidListFile()Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getBakUidListFile()Ljava/io/File;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    sget-object v2, Lcom/lody/virtual/server/am/UidSystem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: Unable to delete the expired file --\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    iget v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getOrCreateUid(Lcom/lody/virtual/server/pm/parser/VPackage;)I
    .locals 3

    .line 81
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 89
    :cond_1
    iget p1, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/lody/virtual/server/am/UidSystem;->mFreeUid:I

    .line 90
    iget-object v1, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Lcom/lody/virtual/server/am/UidSystem;->save()V

    return p1
.end method

.method public initUidList()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/lody/virtual/server/am/UidSystem;->mSharedUserIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 33
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getUidListFile()Ljava/io/File;

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/am/UidSystem;->loadUidList(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getBakUidListFile()Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/am/UidSystem;->loadUidList(Ljava/io/File;)Z

    :cond_0
    return-void
.end method
