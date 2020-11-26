.class public abstract Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;
.super Ljava/lang/Object;
.source "MethodInvocationProxy.java"

# interfaces
.implements Lcom/lody/virtual/client/interfaces/IInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/lody/virtual/client/hook/base/MethodInvocationStub;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lody/virtual/client/interfaces/IInjector;"
    }
.end annotation


# instance fields
.field protected mInvocationStub:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->mInvocationStub:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    .line 31
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->onBindMethods()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->afterHookApply(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/base/LogInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/LogInvocation;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/lody/virtual/client/hook/base/LogInvocation;->value()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->setInvocationLoggingCondition(Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;)V

    :cond_0
    return-void
.end method

.method private addMethodProxy(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 64
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/MethodProxy;

    goto :goto_0

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v1

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->mInvocationStub:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instance Hook : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->mInvocationStub:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    move-result-object p1

    return-object p1
.end method

.method protected afterHookApply(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 90
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->mInvocationStub:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    return-object v0
.end method

.method public abstract inject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected onBindMethods()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->mInvocationStub:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    const-class v1, Lcom/lody/virtual/client/hook/base/Inject;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/base/Inject;

    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v0}, Lcom/lody/virtual/client/hook/base/Inject;->value()Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 50
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-class v4, Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Lcom/lody/virtual/client/hook/base/SkipInject;

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_1

    .line 54
    invoke-direct {p0, v3}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->addMethodProxy(Ljava/lang/Class;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
