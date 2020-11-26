.class final Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "WifiManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetConnectionInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;->this$0:Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 138
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;->isFakeLocationEnable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    sget-object p2, Lmirror/android/net/wifi/WifiInfo;->mBSSID:Lmirror/RefObject;

    const-string p3, "00:00:00:00:00:00"

    invoke-virtual {p2, p1, p3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    sget-object p2, Lmirror/android/net/wifi/WifiInfo;->mMacAddress:Lmirror/RefObject;

    invoke-virtual {p2, p1, p3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_0
    sget-boolean p2, Lcom/lody/virtual/client/stub/VASettings$Wifi;->FAKE_WIFI_STATE:Z

    if-eqz p2, :cond_1

    .line 143
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->access$300()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 146
    sget-object p2, Lmirror/android/net/wifi/WifiInfo;->mMacAddress:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/lody/virtual/remote/VDeviceInfo;->wifiMac:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getConnectionInfo"

    return-object v0
.end method
