.class Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$1;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ActivityTaskManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub$1;->this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;

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

    const/4 v0, 0x0

    .line 31
    aget-object v0, p3, v0

    check-cast v0, Landroid/os/IBinder;

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/ipc/VActivityManager;->onActivityDestroy(Landroid/os/IBinder;)Z

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
