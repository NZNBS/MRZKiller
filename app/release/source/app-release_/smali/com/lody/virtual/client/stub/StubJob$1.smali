.class Lcom/lody/virtual/client/stub/StubJob$1;
.super Landroid/app/job/IJobService$Stub;
.source "StubJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/StubJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/stub/StubJob;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/stub/StubJob;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 44
    sget-object v1, Lmirror/android/app/job/JobParameters;->callback:Lmirror/RefObject;

    invoke-virtual {v1, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 45
    invoke-static {v1}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/lody/virtual/server/job/VJobSchedulerService;->get()Lcom/lody/virtual/server/job/VJobSchedulerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lody/virtual/server/job/VJobSchedulerService;->findJobByVirtualJobId(I)Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    .line 48
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {p1, v1, v0}, Lcom/lody/virtual/client/stub/StubJob;->access$000(Lcom/lody/virtual/client/stub/StubJob;Landroid/app/job/IJobCallback;I)V

    .line 49
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {p1}, Lcom/lody/virtual/client/stub/StubJob;->access$100(Lcom/lody/virtual/client/stub/StubJob;)Landroid/app/job/JobScheduler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto/16 :goto_2

    .line 51
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;

    .line 53
    iget-object v4, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {v4}, Lcom/lody/virtual/client/stub/StubJob;->access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {v5}, Lcom/lody/virtual/client/stub/StubJob;->access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/client/stub/StubJob$JobSession;

    if-eqz v5, :cond_1

    .line 57
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {p1, v1, v0}, Lcom/lody/virtual/client/stub/StubJob;->access$000(Lcom/lody/virtual/client/stub/StubJob;Landroid/app/job/IJobCallback;I)V

    goto :goto_1

    .line 59
    :cond_1
    new-instance v5, Lcom/lody/virtual/client/stub/StubJob$JobSession;

    iget-object v6, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-direct {v5, v6, v0, v1, p1}, Lcom/lody/virtual/client/stub/StubJob$JobSession;-><init>(Lcom/lody/virtual/client/stub/StubJob;ILandroid/app/job/IJobCallback;Landroid/app/job/JobParameters;)V

    .line 60
    sget-object v6, Lmirror/android/app/job/JobParameters;->callback:Lmirror/RefObject;

    invoke-virtual {v5}, Lcom/lody/virtual/client/stub/StubJob$JobSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    sget-object v6, Lmirror/android/app/job/JobParameters;->jobId:Lmirror/RefInt;

    iget v7, v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->clientJobId:I

    invoke-virtual {v6, p1, v7}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 62
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 63
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/lody/virtual/server/job/VJobSchedulerService$JobConfig;->serviceName:Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "_VA_|_user_id_"

    .line 64
    iget v3, v3, Lcom/lody/virtual/server/job/VJobSchedulerService$JobId;->vuid:I

    invoke-static {v3}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 67
    :try_start_1
    iget-object v3, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-virtual {v3, p1, v5, v2}, Lcom/lody/virtual/client/stub/StubJob;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 69
    :try_start_2
    invoke-static {}, Lcom/lody/virtual/client/stub/StubJob;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v2, :cond_2

    .line 72
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {p1}, Lcom/lody/virtual/client/stub/StubJob;->access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Lcom/lody/virtual/helper/collection/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {p1, v1, v0}, Lcom/lody/virtual/client/stub/StubJob;->access$000(Lcom/lody/virtual/client/stub/StubJob;Landroid/app/job/IJobCallback;I)V

    .line 75
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {p1}, Lcom/lody/virtual/client/stub/StubJob;->access$100(Lcom/lody/virtual/client/stub/StubJob;)Landroid/app/job/JobScheduler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 76
    invoke-static {}, Lcom/lody/virtual/server/job/VJobSchedulerService;->get()Lcom/lody/virtual/server/job/VJobSchedulerService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lody/virtual/server/job/VJobSchedulerService;->cancel(I)V

    .line 79
    :goto_1
    monitor-exit v4

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    .line 86
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {v0}, Lcom/lody/virtual/client/stub/StubJob;->access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/client/stub/StubJob$1;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {v1}, Lcom/lody/virtual/client/stub/StubJob;->access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lody/virtual/helper/collection/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/stub/StubJob$JobSession;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/lody/virtual/client/stub/StubJob$JobSession;->stopSession()V

    .line 91
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
