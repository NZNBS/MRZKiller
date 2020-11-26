.class final Lcom/lody/virtual/client/stub/StubJob$JobSession;
.super Landroid/app/job/IJobCallback$Stub;
.source "StubJob.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/StubJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobSession"
.end annotation


# instance fields
.field private clientCallback:Landroid/app/job/IJobCallback;

.field private clientJobService:Landroid/app/job/IJobService;

.field private jobId:I

.field private jobParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/lody/virtual/client/stub/StubJob;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/stub/StubJob;ILandroid/app/job/IJobCallback;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    .line 127
    iput p2, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobId:I

    .line 128
    iput-object p3, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientCallback:Landroid/app/job/IJobCallback;

    .line 129
    iput-object p4, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobParams:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientCallback:Landroid/app/job/IJobCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V

    return-void
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientCallback:Landroid/app/job/IJobCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V

    return-void
.end method

.method forceFinishJob()V
    .locals 3

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientCallback:Landroid/app/job/IJobCallback;

    iget v1, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubJob$JobSession;->stopSession()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubJob$JobSession;->stopSession()V

    .line 175
    throw v0
.end method

.method public jobFinished(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientCallback:Landroid/app/job/IJobCallback;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 149
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientJobService:Landroid/app/job/IJobService;

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    iget-object p2, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientCallback:Landroid/app/job/IJobCallback;

    iget v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobId:I

    invoke-static {p1, p2, v0}, Lcom/lody/virtual/client/stub/StubJob;->access$000(Lcom/lody/virtual/client/stub/StubJob;Landroid/app/job/IJobCallback;I)V

    .line 152
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubJob$JobSession;->stopSession()V

    return-void

    .line 156
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, p2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/StubJob$JobSession;->forceFinishJob()V

    .line 159
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method stopSession()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->clientJobService:Landroid/app/job/IJobService;

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v1}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 186
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-static {v0}, Lcom/lody/virtual/client/stub/StubJob;->access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->jobId:I

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/collection/SparseArray;->remove(I)V

    .line 187
    iget-object v0, p0, Lcom/lody/virtual/client/stub/StubJob$JobSession;->this$0:Lcom/lody/virtual/client/stub/StubJob;

    invoke-virtual {v0, p0}, Lcom/lody/virtual/client/stub/StubJob;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
