.class public Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;
.super Landroid/app/IServiceConnection$Stub;
.source "ServiceConnectionDelegate.java"


# static fields
.field private static final DELEGATE_MAP:Lcom/lody/virtual/helper/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConn:Landroid/app/IServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/collection/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/IServiceConnection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    return-void
.end method

.method public static getDelegate(Landroid/content/Context;Landroid/content/ServiceConnection;I)Landroid/app/IServiceConnection;
    .locals 5

    if-eqz p1, :cond_1

    .line 41
    :try_start_0
    sget-object v0, Lmirror/android/app/ActivityThread;->currentActivityThread:Lmirror/RefStaticMethod;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    sget-object v2, Lmirror/android/app/ContextImpl;->mPackageInfo:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 43
    sget-object v3, Lmirror/android/app/ActivityThread;->getHandler:Lmirror/RefMethod;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 44
    sget-object v3, Lmirror/android/app/LoadedApk;->getServiceDispatcher:Lmirror/RefMethod;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const/4 p0, 0x2

    aput-object v0, v4, p0

    const/4 p0, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p0

    invoke-virtual {v3, v2, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConnectionDelegate"

    const-string p2, "getServiceDispatcher"

    .line 46
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->getDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported in system context"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connection is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;
    .locals 3

    .line 69
    instance-of v0, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    return-object p0

    .line 72
    :cond_0
    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    invoke-direct {v2, p0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;-><init>(Landroid/app/IServiceConnection;)V

    .line 76
    invoke-virtual {v1, v0, v2}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method public static removeDelegate(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .locals 5

    const/4 v0, 0x0

    .line 57
    :try_start_0
    sget-object v1, Lmirror/android/app/ContextImpl;->mPackageInfo:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    sget-object v2, Lmirror/android/app/LoadedApk;->forgetServiceDispatcher:Lmirror/RefMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v2, v1, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConnectionDelegate"

    const-string v1, "forgetServiceDispatcher"

    .line 60
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    return-object v0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->removeDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static removeDelegate(Landroid/app/IServiceConnection;)Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;
    .locals 1

    .line 82
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->DELEGATE_MAP:Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-interface {p0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lody/virtual/helper/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;

    return-object p0
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {p2}, Lcom/lody/virtual/server/IBinderDelegateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IBinderDelegateService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/lody/virtual/server/IBinderDelegateService;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 94
    invoke-interface {v0}, Lcom/lody/virtual/server/IBinderDelegateService;->getService()Landroid/os/IBinder;

    move-result-object p2

    .line 95
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->getProxyService(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 101
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 102
    sget-object v0, Lmirror/android/app/IServiceConnectionO;->connected:Lmirror/RefMethod;

    iget-object v1, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    iget-object p3, p0, Lcom/lody/virtual/client/hook/secondary/ServiceConnectionDelegate;->mConn:Landroid/app/IServiceConnection;

    invoke-interface {p3, p1, p2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method
