.class public Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "WifiManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;,
        Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetScanResults;,
        Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;,
        Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    sget-object v0, Lmirror/android/net/wifi/IWifiManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "wifi"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method

.method private static InetAddress_to_hex(Ljava/net/InetAddress;)I
    .locals 4

    .line 229
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 231
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic access$000()Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;
    .locals 1

    .line 42
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->getIPInfo()Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;)Landroid/net/DhcpInfo;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->createDhcpInfo(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;)Landroid/net/DhcpInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Landroid/net/wifi/WifiInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->createWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method private static cloneScanResult(Landroid/os/Parcelable;)Landroid/net/wifi/ScanResult;
    .locals 3

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p0

    const-string v2, "CREATOR"

    invoke-virtual {p0, v2}, Lcom/lody/virtual/helper/utils/Reflect;->field(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "createFromParcel"

    invoke-virtual {p0, v1, v2}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private createDhcpInfo(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;)Landroid/net/DhcpInfo;
    .locals 2

    .line 236
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    .line 237
    iget v1, p1, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->ip_hex:I

    iput v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 238
    iget p1, p1, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->netmask_hex:I

    iput p1, v0, Landroid/net/DhcpInfo;->netmask:I

    const p1, 0x4040404

    .line 239
    iput p1, v0, Landroid/net/DhcpInfo;->dns1:I

    const p1, 0x8080808

    .line 240
    iput p1, v0, Landroid/net/DhcpInfo;->dns2:I

    return-object v0
.end method

.method private static createWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    sget-object v0, Lmirror/android/net/wifi/WifiInfo;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 246
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->getIPInfo()Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, v1, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->addr:Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    sget-object v2, Lmirror/android/net/wifi/WifiInfo;->mNetworkId:Lmirror/RefInt;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 249
    sget-object v2, Lmirror/android/net/wifi/WifiInfo;->mSupplicantState:Lmirror/RefObject;

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v2, v0, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    sget-object v2, Lmirror/android/net/wifi/WifiInfo;->mBSSID:Lmirror/RefObject;

    sget-object v4, Lcom/lody/virtual/client/stub/VASettings$Wifi;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    sget-object v2, Lmirror/android/net/wifi/WifiInfo;->mMacAddress:Lmirror/RefObject;

    sget-object v4, Lcom/lody/virtual/client/stub/VASettings$Wifi;->MAC:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    sget-object v2, Lmirror/android/net/wifi/WifiInfo;->mIpAddress:Lmirror/RefObject;

    invoke-virtual {v2, v0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    sget-object v1, Lmirror/android/net/wifi/WifiInfo;->mLinkSpeed:Lmirror/RefInt;

    const/16 v2, 0x41

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 254
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 255
    sget-object v1, Lmirror/android/net/wifi/WifiInfo;->mFrequency:Lmirror/RefInt;

    const/16 v2, 0x1388

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 257
    :cond_1
    sget-object v1, Lmirror/android/net/wifi/WifiInfo;->mRssi:Lmirror/RefInt;

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 258
    sget-object v1, Lmirror/android/net/wifi/WifiInfo;->mWifiSsid:Lmirror/RefObject;

    if-eqz v1, :cond_2

    .line 259
    sget-object v1, Lmirror/android/net/wifi/WifiInfo;->mWifiSsid:Lmirror/RefObject;

    sget-object v2, Lmirror/android/net/wifi/WifiSsid;->createFromAsciiEncoded:Lmirror/RefStaticMethod;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/lody/virtual/client/stub/VASettings$Wifi;->SSID:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 261
    :cond_2
    sget-object v1, Lmirror/android/net/wifi/WifiInfo;->mSSID:Lmirror/RefObject;

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings$Wifi;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method private static getIPInfo()Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;
    .locals 6

    .line 189
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 191
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 193
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-static {v4}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;-><init>()V

    .line 198
    iput-object v3, v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->addr:Ljava/net/InetAddress;

    .line 199
    iput-object v1, v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->intf:Ljava/net/NetworkInterface;

    .line 200
    iput-object v4, v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->ip:Ljava/lang/String;

    .line 201
    invoke-static {v3}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->InetAddress_to_hex(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->ip_hex:I

    .line 202
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    invoke-static {v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->netmask_to_hex(I)I

    move-result v1

    iput v1, v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$IPInfo;->netmask_hex:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isIPv4Address(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    .line 215
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static netmask_to_hex(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v3, v1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 68
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$1;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 82
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$2;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$2;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 96
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$3;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$3;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 113
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetConnectionInfo;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 114
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetScanResults;

    invoke-direct {v0, p0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$GetScanResults;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 115
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    const-string v1, "getBatchedScanResults"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 116
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;

    const-string v1, "acquireWifiLock"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 117
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;

    const-string v1, "updateWifiLockWorkSource"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 119
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;

    const-string v1, "startLocationRestrictedScan"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 122
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;

    const-string v1, "startScan"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 123
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;

    const-string v1, "requestBatchedScan"

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;-><init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    :cond_1
    return-void
.end method
