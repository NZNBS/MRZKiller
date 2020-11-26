.class public Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;
.super Ljava/lang/Object;
.source "ProxyServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProxyServiceFactory"

.field private static sHookSecondaryServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    .line 25
    new-instance v1, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1;

    invoke-direct {v1}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$1;-><init>()V

    const-string v2, "com.google.android.auth.IAuthManagerService"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    new-instance v1, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$2;

    invoke-direct {v1}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$2;-><init>()V

    const-string v2, "com.android.vending.billing.IInAppBillingService"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    new-instance v1, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;

    invoke-direct {v1}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;-><init>()V

    const-string v2, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyService(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory;->sHookSecondaryServiceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$ServiceFetcher;->getService(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    return-object p0

    :catchall_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p1
.end method
