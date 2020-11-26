.class public Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "JobServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$cancel;,
        Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$cancelAll;,
        Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getAllPendingJobs;,
        Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$schedule;,
        Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$enqueue;,
        Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getPendingJob;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    sget-object v0, Lmirror/android/app/job/IJobScheduler$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "jobscheduler"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->redirect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private redirect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    .line 76
    sget-object v2, Lmirror/android/app/job/JobWorkItem;->getIntent:Lmirror/RefMethod;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {v1, p2, v2, v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->redirectIntentSender(ILjava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;)Landroid/content/Intent;

    move-result-object p2

    .line 77
    sget-object v0, Lmirror/android/app/job/JobWorkItem;->ctor:Lmirror/RefConstructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 78
    sget-object v0, Lmirror/android/app/job/JobWorkItem;->mWorkId:Lmirror/RefObject;

    sget-object v1, Lmirror/android/app/job/JobWorkItem;->mWorkId:Lmirror/RefObject;

    invoke-virtual {v1, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lmirror/android/app/job/JobWorkItem;->mGrants:Lmirror/RefObject;

    sget-object v1, Lmirror/android/app/job/JobWorkItem;->mGrants:Lmirror/RefObject;

    invoke-virtual {v1, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    sget-object v0, Lmirror/android/app/job/JobWorkItem;->mDeliveryCount:Lmirror/RefObject;

    sget-object v1, Lmirror/android/app/job/JobWorkItem;->mDeliveryCount:Lmirror/RefObject;

    invoke-virtual {v1, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$schedule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$schedule;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getAllPendingJobs;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getAllPendingJobs;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$cancelAll;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$cancelAll;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$cancel;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$cancel;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 40
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getPendingJob;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$getPendingJob;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 42
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$enqueue;

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$enqueue;-><init>(Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    :cond_1
    return-void
.end method
