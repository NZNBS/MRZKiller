.class Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getPendingJob;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "JobServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getPendingJob"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getPendingJob;->this$0:Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getPendingJob;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;)V

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

    .line 51
    invoke-static {}, Lcom/lody/virtual/client/ipc/VJobScheduler;->get()Lcom/lody/virtual/client/ipc/VJobScheduler;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/lody/virtual/client/ipc/VJobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getPendingJob"

    return-object v0
.end method
