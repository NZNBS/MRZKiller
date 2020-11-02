.class Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/utils/FileUtils$FileLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLockCount"
.end annotation


# instance fields
.field fChannel:Ljava/nio/channels/FileChannel;

.field fOs:Ljava/io/RandomAccessFile;

.field mFileLock:Ljava/nio/channels/FileLock;

.field mRefCount:I

.field final synthetic this$0:Lcom/lody/virtual/helper/utils/FileUtils$FileLock;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/utils/FileUtils$FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->this$0:Lcom/lody/virtual/helper/utils/FileUtils$FileLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p2, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 457
    iput p3, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->mRefCount:I

    .line 458
    iput-object p4, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 459
    iput-object p5, p0, Lcom/lody/virtual/helper/utils/FileUtils$FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method
