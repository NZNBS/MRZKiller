.class Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$3;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$3;->this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lmirror/android/content/pm/ParceledListSlice;->getList:Lmirror/RefMethod;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p2, p1, p3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Ljava/util/List;

    .line 98
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 99
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    iget v1, p3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 105
    :try_start_0
    iget-object v1, v0, Lcom/lody/virtual/remote/AppTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 106
    iget-object v1, v0, Lcom/lody/virtual/remote/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :catchall_0
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/lody/virtual/remote/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 113
    iget-object v0, v0, Lcom/lody/virtual/remote/AppTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v0, p3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    goto :goto_1

    :cond_3
    return-object p1
.end method
