.class public Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "LocationManagerStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/location/MethodProxies;
.end annotation

.annotation runtime Lcom/lody/virtual/client/hook/base/LogInvocation;
    value = .enum Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->ALWAYS:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lmirror/android/location/ILocationManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "location"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 6

    .line 30
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "addTestProvider"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 33
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "removeTestProvider"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 34
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "setTestProviderLocation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 35
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "clearTestProviderLocation"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 36
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "setTestProviderEnabled"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "clearTestProviderEnabled"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 38
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "setTestProviderStatus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 39
    new-instance v0, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;

    const-string v1, "clearTestProviderStatus"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 41
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 42
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "addGpsMeasurementsListener"

    invoke-direct {v0, v5, v4, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 43
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "addGpsNavigationMessageListener"

    invoke-direct {v0, v4, v1, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 44
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "removeGpsMeasurementListener"

    invoke-direct {v0, v4, v1, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 45
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "removeGpsNavigationMessageListener"

    invoke-direct {v0, v4, v1, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 47
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 48
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "requestGeofence"

    invoke-direct {v0, v5, v4, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 49
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "removeGeofence"

    invoke-direct {v0, v5, v4, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 52
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-gt v0, v4, :cond_3

    .line 53
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "addProximityAlert"

    invoke-direct {v0, v5, v4, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 56
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 57
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "addNmeaListener"

    invoke-direct {v0, v4, v1, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 58
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "removeNmeaListener"

    invoke-direct {v0, v2, v1, v3}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    :cond_4
    return-void
.end method
