.class public final Lde/robv/android/xposed/services/BinderService;
.super Lde/robv/android/xposed/services/BaseService;
.source "BinderService.java"


# static fields
.field private static final ACCESS_FILE_TRANSACTION:I = 0x3

.field private static final INTERFACE_TOKEN:Ljava/lang/String; = "de.robv.android.xposed.IXposedService"

.field private static final READ_FILE_TRANSACTION:I = 0x5

.field private static final SERVICE_NAMES:[Ljava/lang/String;

.field private static final STAT_FILE_TRANSACTION:I = 0x4

.field public static final TARGET_APP:I = 0x0

.field public static final TARGET_SYSTEM:I = 0x1

.field private static final sServices:[Lde/robv/android/xposed/services/BinderService;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "user.xposed.app"

    const-string v1, "user.xposed.system"

    .line 156
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/services/BinderService;->SERVICE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lde/robv/android/xposed/services/BinderService;

    .line 157
    sput-object v0, Lde/robv/android/xposed/services/BinderService;->sServices:[Lde/robv/android/xposed/services/BinderService;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .line 160
    invoke-direct {p0}, Lde/robv/android/xposed/services/BaseService;-><init>()V

    .line 161
    sget-object v0, Lde/robv/android/xposed/services/BinderService;->SERVICE_NAMES:[Ljava/lang/String;

    aget-object v1, v0, p1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    iput-object v1, p0, Lde/robv/android/xposed/services/BinderService;->mRemote:Landroid/os/IBinder;

    return-void

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getService(I)Lde/robv/android/xposed/services/BinderService;
    .locals 3

    if-ltz p0, :cond_1

    .line 22
    sget-object v0, Lde/robv/android/xposed/services/BinderService;->sServices:[Lde/robv/android/xposed/services/BinderService;

    array-length v1, v0

    if-gt p0, v1, :cond_1

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lde/robv/android/xposed/services/BinderService;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/services/BinderService;-><init>(I)V

    aput-object v1, v0, p0

    .line 29
    :cond_0
    aget-object p0, v0, p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkFileAccess(Ljava/lang/String;I)Z
    .locals 3

    .line 35
    invoke-static {p1}, Lde/robv/android/xposed/services/BinderService;->ensureAbsolutePath(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "de.robv.android.xposed.IXposedService"

    .line 39
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 44
    :try_start_0
    iget-object p2, p0, Lde/robv/android/xposed/services/BinderService;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    .line 46
    :catch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return p1
.end method

.method public readFile(Ljava/lang/String;IIJJ)Lde/robv/android/xposed/services/FileResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {p1}, Lde/robv/android/xposed/services/BinderService;->ensureAbsolutePath(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "de.robv.android.xposed.IXposedService"

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    :try_start_0
    iget-object p4, p0, Lde/robv/android/xposed/services/BinderService;->mRemote:Landroid/os/IBinder;

    const/4 p5, 0x5

    const/4 p6, 0x0

    invoke-interface {p4, p5, v0, v1, p6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p5

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-eqz p4, :cond_3

    const/16 p6, 0x16

    if-ne p4, p6, :cond_2

    if-eqz p5, :cond_1

    .line 133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 135
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 137
    :cond_0
    throw p1

    .line 139
    :cond_1
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Offset "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / Length "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is out of range for "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with size "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_2
    const-string p2, " while reading "

    .line 143
    invoke-static {p4, p5, p1, p2}, Lde/robv/android/xposed/services/BinderService;->throwCommonIOException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 130
    :cond_3
    new-instance p1, Lde/robv/android/xposed/services/FileResult;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public readFile(Ljava/lang/String;JJ)Lde/robv/android/xposed/services/FileResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 94
    invoke-virtual/range {v0 .. v7}, Lde/robv/android/xposed/services/BinderService;->readFile(Ljava/lang/String;IIJJ)Lde/robv/android/xposed/services/FileResult;

    move-result-object p1

    return-object p1
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 89
    invoke-virtual/range {v0 .. v7}, Lde/robv/android/xposed/services/BinderService;->readFile(Ljava/lang/String;IIJJ)Lde/robv/android/xposed/services/FileResult;

    move-result-object p1

    iget-object p1, p1, Lde/robv/android/xposed/services/FileResult;->content:[B

    return-object p1
.end method

.method public statFile(Ljava/lang/String;)Lde/robv/android/xposed/services/FileResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lde/robv/android/xposed/services/BinderService;->ensureAbsolutePath(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "de.robv.android.xposed.IXposedService"

    .line 64
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v2, p0, Lde/robv/android/xposed/services/BinderService;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 76
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const-string v4, " while retrieving attributes for "

    .line 78
    invoke-static {v2, v3, p1, v4}, Lde/robv/android/xposed/services/BinderService;->throwCommonIOException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 84
    new-instance p1, Lde/robv/android/xposed/services/FileResult;

    invoke-direct {p1, v2, v3, v4, v5}, Lde/robv/android/xposed/services/FileResult;-><init>(JJ)V

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 72
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
