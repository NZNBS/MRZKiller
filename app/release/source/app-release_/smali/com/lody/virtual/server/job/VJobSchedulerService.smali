.class public Lcom/lody/virtual/server/job/VJobSchedulerService;
.super Lcom/lody/virtual/server/IJobScheduler$Stub;
.source "VJobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;,
        Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;
    }
.end annotation


# static fields
.field private static final JOB_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final gDefault:Lcom/lody/virtual/helper/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/utils/Singleton<",
            "Lcom/lody/virtual/server/job/VJobSchedulerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGlobalJobId:I

.field private final mJobProxyComponent:Landroid/content/ComponentName;

.field private final mJobStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;",
            "Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/lody/virtual/client/ipc/VJobScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/server/job/VJobSchedulerService;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/lody/virtual/server/job/VJobSchedulerService$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/job/VJobSchedulerService$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/job/VJobSchedulerService;->gDefault:Lcom/lody/virtual/helper/utils/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/lody/virtual/server/IJobScheduler$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mScheduler:Landroid/app/job/JobScheduler;

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_JOB:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobProxyComponent:Landroid/content/ComponentName;

    .line 53
    invoke-direct {p0}, Lcom/lody/virtual/server/job/VJobSchedulerService;->readJobs()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/job/VJobSchedulerService$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/lody/virtual/server/job/VJobSchedulerService;-><init>()V

    return-void
.end method

.method public static get()Lcom/lody/virtual/server/job/VJobSchedulerService;
    .locals 1

    .line 64
    sget-object v0, Lcom/lody/virtual/server/job/VJobSchedulerService;->gDefault:Lcom/lody/virtual/helper/utils/Singleton;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/VJobSchedulerService;

    return-object v0
.end method

.method private readJobs()V
    .locals 6

    .line 223
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getJobConfigFile()Ljava/io/File;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 229
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [B

    .line 231
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 232
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-ne v4, v0, :cond_3

    const/4 v2, 0x0

    .line 236
    invoke-virtual {v1, v3, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 237
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 242
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 247
    new-instance v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    invoke-direct {v3, v1}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;-><init>(Landroid/os/Parcel;)V

    .line 248
    new-instance v4, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    invoke-direct {v4, v1}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;-><init>(Landroid/os/Parcel;)V

    .line 249
    iget-object v5, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget v3, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mGlobalJobId:I

    iget v4, v4, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mGlobalJobId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad version of job file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unable to read job config."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 253
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    throw v0
.end method

.method private saveJobs()V
    .locals 6

    .line 203
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getJobConfigFile()Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x1

    .line 206
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    invoke-virtual {v3, v1, v5}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 214
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 216
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 265
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 266
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    .line 269
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    .line 270
    iget v6, v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    if-ne v6, v0, :cond_0

    iget v5, v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    .line 272
    iget-object p1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mScheduler:Landroid/app/job/JobScheduler;

    iget v0, v4, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 273
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_1
    if-eqz v2, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/lody/virtual/server/job/VJobSchedulerService;->saveJobs()V

    .line 280
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 289
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    .line 292
    iget v5, v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    if-ne v5, v0, :cond_0

    .line 293
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    .line 294
    iget-object v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mScheduler:Landroid/app/job/JobScheduler;

    iget v0, v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    const/4 v2, 0x1

    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_1
    if-eqz v2, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/lody/virtual/server/job/VJobSchedulerService;->saveJobs()V

    .line 303
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public findJobByVirtualJobId(I)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;",
            "Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    iget v3, v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    if-ne v3, p1, :cond_0

    .line 352
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 355
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 356
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    monitor-enter v2

    .line 311
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 312
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobInfo;

    .line 314
    sget-object v5, Lcom/lody/virtual/client/stub/VASettings;->STUB_JOB:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/lody/virtual/server/job/VJobSchedulerService;->findJobByVirtualJobId(I)Ljava/util/Map$Entry;

    move-result-object v5

    if-nez v5, :cond_1

    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    .line 325
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    .line 326
    iget v7, v6, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    if-eq v7, v0, :cond_2

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 330
    :cond_2
    sget-object v7, Lmirror/android/app/job/JobInfo;->jobId:Lmirror/RefInt;

    iget v8, v6, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    invoke-virtual {v7, v4, v8}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 331
    sget-object v7, Lmirror/android/app/job/JobInfo;->service:Lmirror/RefObject;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v6, v6, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    iget-object v5, v5, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->serviceName:Ljava/lang/String;

    invoke-direct {v8, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4, v8}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_3
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    .line 185
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    .line 186
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;-><init>(ILjava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    iget v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mGlobalJobId:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mGlobalJobId:I

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;-><init>(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 191
    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobStore:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->serviceName:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->extras:Landroid/os/PersistableBundle;

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/lody/virtual/server/job/VJobSchedulerService;->saveJobs()V

    .line 197
    sget-object v1, Lmirror/android/app/job/JobInfo;->jobId:Lmirror/RefInt;

    iget v0, v0, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->virtualJobId:I

    invoke-virtual {v1, p1, v0}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 198
    sget-object v0, Lmirror/android/app/job/JobInfo;->service:Lmirror/RefObject;

    iget-object v1, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mJobProxyComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/lody/virtual/server/job/VJobSchedulerService;->mScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    return p1
.end method
