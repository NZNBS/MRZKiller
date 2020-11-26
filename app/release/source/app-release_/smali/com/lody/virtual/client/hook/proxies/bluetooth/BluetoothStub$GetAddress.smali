.class Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub$GetAddress;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "BluetoothStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetAddress"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "getAddress"

    .line 35
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

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

    .line 40
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub$GetAddress;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->bluetoothMac:Ljava/lang/String;

    return-object p1
.end method
