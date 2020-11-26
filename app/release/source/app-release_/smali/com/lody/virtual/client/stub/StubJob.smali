.class public Lcom/lody/virtual/client/stub/StubJob;
.super Landroid/app/Service;
.source "StubJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/stub/StubJob$JobSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StubJob"


# instance fields
.field private final mJobSessions:Lcom/lody/virtual/helper/collection/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/SparseArray<",
            "Lcom/lody/virtual/client/stub/StubJob$JobSession;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduler:Landroid/app/job/JobScheduler;

.field private final mService:Landroid/app/job/IJobService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/lody/virtual/helper/collection/SparseArray;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/stub/StubJob;->mJobSessions:Lcom/lody/virtual/helper/collection/SparseArray;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/stub/StubJob$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/stub/StubJob$1;-><init>(Lcom/lody/virtual/client/stub/StubJob;)V

    iput-object v0, p0, Lcom/lody/virtual/client/stub/StubJob;->mService:Landroid/app/job/IJobService;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/stub/StubJob;Landroid/app/job/IJobCallback;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/client/stub/StubJob;->emptyCallback(Landroid/app/job/IJobCallback;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/stub/StubJob;)Landroid/app/job/JobScheduler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lody/virtual/client/stub/StubJob;->mScheduler:Landroid/app/job/JobScheduler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lody/virtual/client/stub/StubJob;)Lcom/lody/virtual/helper/collection/SparseArray;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/lody/virtual/client/stub/StubJob;->mJobSessions:Lcom/lody/virtual/helper/collection/SparseArray;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/lody/virtual/client/stub/StubJob;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private emptyCallback(Landroid/app/job/IJobCallback;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V

    .line 101
    invoke-interface {p1, p2, v0}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/lody/virtual/client/stub/StubJob;->mService:Landroid/app/job/IJobService;

    invoke-interface {p1}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 110
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/InvocationStubManager;->checkEnv(Ljava/lang/Class;)V

    const-string v0, "jobscheduler"

    .line 111
    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/stub/StubJob;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/lody/virtual/client/stub/StubJob;->mScheduler:Landroid/app/job/JobScheduler;

    return-void
.end method
