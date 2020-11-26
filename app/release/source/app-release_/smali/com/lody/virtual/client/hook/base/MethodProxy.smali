.class public abstract Lcom/lody/virtual/client/hook/base/MethodProxy;
.super Ljava/lang/Object;
.source "MethodProxy.java"


# instance fields
.field private enable:Z

.field private mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->enable:Z

    .line 22
    sget-object v0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->NEVER:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/base/LogInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/LogInvocation;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/lody/virtual/client/hook/base/LogInvocation;->value()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    :cond_0
    return-void
.end method

.method public static getAppPkg()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getCurrentPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppUserId()I
    .locals 1

    .line 60
    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getVUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method protected static getBaseVUid()I
    .locals 1

    .line 64
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getBaseVUid()I

    move-result v0

    return v0
.end method

.method protected static getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;
    .locals 1

    .line 72
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected static getHostContext()Landroid/content/Context;
    .locals 1

    .line 40
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getHostPkg()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getRealUid()I
    .locals 1

    .line 68
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v0

    return v0
.end method

.method protected static getVUid()I
    .locals 1

    .line 56
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v0

    return v0
.end method

.method protected static isAppProcess()Z
    .locals 1

    .line 44
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    return v0
.end method

.method protected static isFakeLocationEnable()Z
    .locals 3

    .line 76
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/VClientImpl;->getCurrentPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getMode(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static isMainProcess()Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isMainProcess()Z

    move-result v0

    return v0
.end method

.method protected static isServerProcess()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isServerProcess()Z

    move-result v0

    return v0
.end method

.method public static isVisiblePackage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 80
    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsidePackageVisible(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-object p4
.end method

.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInvocationLoggingCondition()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-object v0
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method protected getPM()Landroid/content/pm/PackageManager;
    .locals 1

    .line 120
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public isAppPkg(Ljava/lang/String;)Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->isAppInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEnable()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->enable:Z

    return-void
.end method

.method public setInvocationloggingCondition(Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodProxy;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
