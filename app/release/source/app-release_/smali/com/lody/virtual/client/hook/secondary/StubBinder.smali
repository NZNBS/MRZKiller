.class abstract Lcom/lody/virtual/client/hook/secondary/StubBinder;
.super Ljava/lang/Object;
.source "StubBinder.java"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field private mBase:Landroid/os/IBinder;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mInterface:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Landroid/os/IBinder;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mClassLoader:Ljava/lang/ClassLoader;

    .line 25
    iput-object p2, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public abstract createHandler(Ljava/lang/Class;Landroid/os/IInterface;)Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/IInterface;",
            ")",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public pingBinder()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 11

    .line 52
    iget-object p1, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mInterface:Landroid/os/IInterface;

    if-nez p1, :cond_6

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 54
    array-length v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto/16 :goto_2

    .line 60
    :cond_0
    array-length v1, p1

    const/4 v3, 0x0

    move-object v5, v0

    move-object v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v7, p1, v4

    .line 61
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 66
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v3

    invoke-virtual {v8, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 67
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_2

    .line 68
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 70
    invoke-virtual {v8}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_2

    const-class v9, Landroid/os/IInterface;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_2

    :try_start_1
    new-array v5, v2, [Ljava/lang/Object;

    .line 72
    iget-object v9, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    aput-object v9, v5, v3

    invoke-virtual {v7, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v5

    :catch_0
    move-object v5, v8

    :catch_1
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    if-nez v6, :cond_4

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, v5, v6}, Lcom/lody/virtual/client/hook/secondary/StubBinder;->createHandler(Ljava/lang/Class;Landroid/os/IInterface;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mClassLoader:Ljava/lang/ClassLoader;

    new-array v1, v2, [Ljava/lang/Class;

    aput-object v5, v1, v3

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mInterface:Landroid/os/IInterface;

    goto :goto_3

    :cond_5
    :goto_2
    return-object v0

    .line 85
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/lody/virtual/client/hook/secondary/StubBinder;->mBase:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p1

    return p1
.end method
