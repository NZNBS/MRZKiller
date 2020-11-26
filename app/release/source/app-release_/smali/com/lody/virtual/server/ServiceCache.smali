.class public Lcom/lody/virtual/server/ServiceCache;
.super Ljava/lang/Object;
.source "ServiceCache.java"


# static fields
.field private static final sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/lody/virtual/helper/collection/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/server/ServiceCache;->sCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/lody/virtual/server/ServiceCache;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 26
    sget-object v0, Lcom/lody/virtual/server/ServiceCache;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public static removeService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 22
    sget-object v0, Lcom/lody/virtual/server/ServiceCache;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method
