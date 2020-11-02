.class public Lcom/lody/virtual/server/pm/installer/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    .line 50
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    .line 57
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 59
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create bridge"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->checkOffsetAndCount(III)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 145
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    :cond_1
    return p0

    :catch_0
    move-exception p0

    .line 151
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget p2, Landroid/system/OsConstants;->EAGAIN:I

    if-ne p1, p2, :cond_2

    return v0

    .line 155
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/lody/virtual/helper/utils/ArrayUtils;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 170
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 69
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 70
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClosed:Z

    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClient:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .locals 7

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 86
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 87
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v4, v2}, Lcom/lody/virtual/helper/utils/FileUtils;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/4 v2, 0x4

    .line 90
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/FileUtils;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    :goto_1
    if-lez v2, :cond_0

    .line 92
    iget-object v3, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lcom/lody/virtual/server/pm/installer/FileBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5, v1, v4, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->write(Ljava/io/FileDescriptor;[BII)V

    sub-int/2addr v2, v3

    goto :goto_1

    .line 94
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected EOF; still expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 103
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 104
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v2, v1, v4, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 109
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 110
    iput-boolean v5, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mClosed:Z

    .line 111
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0, v1, v4, v3}, Lcom/lody/virtual/server/pm/installer/FileBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->forceClose()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    :try_start_1
    const-string v1, "FileBridge"

    const-string v2, "Failed during bridge"

    .line 117
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    .line 119
    :goto_5
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/installer/FileBridge;->forceClose()V

    .line 120
    throw v0
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    return-void
.end method
