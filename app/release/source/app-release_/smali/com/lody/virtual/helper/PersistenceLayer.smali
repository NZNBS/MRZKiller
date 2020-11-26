.class public abstract Lcom/lody/virtual/helper/PersistenceLayer;
.super Ljava/lang/Object;
.source "PersistenceLayer.java"


# instance fields
.field private mPersistenceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lody/virtual/helper/PersistenceLayer;->mPersistenceFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract getCurrentVersion()I
.end method

.method public final getPersistenceFile()Ljava/io/File;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/lody/virtual/helper/PersistenceLayer;->mPersistenceFile:Ljava/io/File;

    return-object v0
.end method

.method public onPersistenceFileDamage()V
    .locals 0

    return-void
.end method

.method public onVersionConflict(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public read()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/lody/virtual/helper/PersistenceLayer;->mPersistenceFile:Ljava/io/File;

    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 66
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [B

    .line 68
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-ne v4, v0, :cond_3

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v3, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 74
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/PersistenceLayer;->verifyMagic(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/lody/virtual/helper/PersistenceLayer;->getCurrentVersion()I

    move-result v2

    .line 81
    invoke-virtual {p0}, Lcom/lody/virtual/helper/PersistenceLayer;->getCurrentVersion()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 82
    invoke-virtual {p0, v0, v2}, Lcom/lody/virtual/helper/PersistenceLayer;->onVersionConflict(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to process the bad version persistence file."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/PersistenceLayer;->readPersistenceData(Landroid/os/Parcel;)V

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/lody/virtual/helper/PersistenceLayer;->onPersistenceFileDamage()V

    .line 77
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid persistence file."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to read Persistence file."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_4

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    throw v0
.end method

.method public abstract readPersistenceData(Landroid/os/Parcel;)V
.end method

.method public save()V
    .locals 3

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/PersistenceLayer;->writeMagic(Landroid/os/Parcel;)V

    .line 50
    invoke-virtual {p0}, Lcom/lody/virtual/helper/PersistenceLayer;->getCurrentVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/PersistenceLayer;->writePersistenceData(Landroid/os/Parcel;)V

    .line 52
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/lody/virtual/helper/PersistenceLayer;->mPersistenceFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 56
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 59
    throw v1
.end method

.method public verifyMagic(Landroid/os/Parcel;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public writeMagic(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public abstract writePersistenceData(Landroid/os/Parcel;)V
.end method
