.class Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getAllPendingJobs;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "JobServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getAllPendingJobs"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getAllPendingJobs;->this$0:Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getAllPendingJobs;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/lody/virtual/client/ipc/VJobScheduler;->get()Lcom/lody/virtual/client/ipc/VJobScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getAllPendingJobs"

    return-object v0
.end method
