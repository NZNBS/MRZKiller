.class public Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "BluetoothStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub$GetAddress;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "bluetooth_manager"

    goto :goto_0

    :cond_0
    const-string v0, "bluetooth"

    :goto_0
    sput-object v0, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    sget-object v0, Lmirror/android/bluetooth/IBluetooth$Stub;->asInterface:Lmirror/RefStaticMethod;

    sget-object v1, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub$GetAddress;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub$GetAddress;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
