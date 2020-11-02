.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$FinishActivity;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FinishActivity"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 580
    aget-object v1, p3, v0

    check-cast v1, Landroid/os/IBinder;

    .line 581
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    move-result-object v2

    .line 582
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->onActivityDestroy(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 583
    iget-object v1, v2, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 586
    iget-object v3, v2, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 587
    iget-object v4, v2, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const v4, 0x10100ae

    .line 588
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    iget v1, v1, Landroid/util/TypedValue;->data:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const v6, 0x10100ba

    aput v6, v4, v0

    const v6, 0x10100bb

    aput v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 595
    iget-object v2, v2, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 596
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 602
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/client/hook/base/MethodProxy;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "finishActivity"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 607
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$FinishActivity;->isAppProcess()Z

    move-result v0

    return v0
.end method
