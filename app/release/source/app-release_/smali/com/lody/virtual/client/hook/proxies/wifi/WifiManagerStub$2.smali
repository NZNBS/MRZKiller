.class Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$2;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "WifiManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$2;->this$0:Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

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

    .line 90
    sget-boolean v0, Lcom/lody/virtual/client/stub/VASettings$Wifi;->FAKE_WIFI_STATE:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/MethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getWifiEnabledState"

    return-object v0
.end method
