.class public Lcom/lody/virtual/client/hook/base/MethodInvocationStub;
.super Ljava/lang/Object;
.source "MethodInvocationStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MethodInvocationStub"


# instance fields
.field private mBaseInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIdentityName:Ljava/lang/String;

.field private mInternalMethodProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/base/MethodProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

.field private mProxyInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;-><init>(Ljava/lang/Object;[Ljava/lang/Class;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    .line 36
    sget-object v0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->NEVER:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    iput-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    .line 45
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mBaseInterface:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->getAllInterface(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p2

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-instance v0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;-><init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;Lcom/lody/virtual/client/hook/base/MethodInvocationStub$1;)V

    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mProxyInterface:Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getIdentityName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Unable to build HookDelegate: %s."

    invoke-static {p1, v0, p2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mBaseInterface:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dumpMethodProxies()V
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "*********************"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v2, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 227
    invoke-virtual {v3}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sget-object v1, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;
    .locals 4

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "The Hook(%s, %s) you added has been in existence."

    .line 96
    invoke-static {v0, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public copyMethodProxies(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getAllHooks()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getAllHooks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/base/MethodProxy;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    return-object v0
.end method

.method public getBaseInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mBaseInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdentityName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mIdentityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvocationLoggingCondition()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-object v0
.end method

.method public getMethodProxiesCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getMethodProxy(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/MethodProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lcom/lody/virtual/client/hook/base/MethodProxy;",
            ">(",
            "Ljava/lang/String;",
            ")TH;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-object p1
.end method

.method public getProxyInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mProxyInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public removeAllMethodProxies()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeMethodProxy(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/MethodProxy;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInternalMethodProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-object p1
.end method

.method public removeMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->removeMethodProxy(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    :cond_0
    return-void
.end method

.method public setIdentityName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mIdentityName:Ljava/lang/String;

    return-void
.end method

.method public setInvocationLoggingCondition(Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->mInvocationLoggingCondition:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-void
.end method
