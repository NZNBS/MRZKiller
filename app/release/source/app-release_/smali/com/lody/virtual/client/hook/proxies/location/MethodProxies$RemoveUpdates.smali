.class Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RemoveUpdates;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoveUpdates"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "removeUpdates"

    .line 94
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/MethodProxies$RemoveUpdates;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
