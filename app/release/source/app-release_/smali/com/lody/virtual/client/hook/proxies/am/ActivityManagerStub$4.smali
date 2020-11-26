.class Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$4;
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

    .line 121
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$4;->this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

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

    .line 124
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 127
    invoke-static {p2}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lmirror/android/content/pm/ParceledListSlice;->getList:Lmirror/RefMethod;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p2, p1, p3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Ljava/util/List;

    .line 130
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 131
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    iget v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getTaskInfo(I)Lcom/lody/virtual/remote/AppTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Virtual"

    .line 135
    iput-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 136
    iget-object v1, v0, Lcom/lody/virtual/remote/AppTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 137
    iget-object v0, v0, Lcom/lody/virtual/remote/AppTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    return-object p1
.end method
