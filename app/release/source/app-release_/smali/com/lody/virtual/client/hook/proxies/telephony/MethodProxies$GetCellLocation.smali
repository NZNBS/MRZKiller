.class Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetCellLocation;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetCellLocation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "getCellLocation"

    .line 50
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetCellLocation;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetCellLocation;->getAppUserId()I

    move-result v1

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetCellLocation;->getAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getCell(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VCell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;->access$000(Lcom/lody/virtual/remote/vloc/VCell;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
