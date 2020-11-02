.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetTasks;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetTasks"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1182
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1192
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1194
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    iget v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v1, v0, Lcom/lody/virtual/remote/AppTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1197
    iget-object v0, v0, Lcom/lody/virtual/remote/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getTasks"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1205
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$GetTasks;->isAppProcess()Z

    move-result v0

    return v0
.end method
