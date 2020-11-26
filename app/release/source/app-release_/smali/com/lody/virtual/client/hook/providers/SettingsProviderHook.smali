.class public Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;
.super Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;
.source "SettingsProviderHook.java"


# static fields
.field private static final METHOD_GET:I = 0x0

.field private static final METHOD_PUT:I = 0x1

.field private static final PRE_SET_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SettingsProviderHook"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->PRE_SET_VALUES:Ljava/util/Map;

    const-string v1, "user_setup_complete"

    const-string v2, "1"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install_non_market_apps"

    const-string v2, "0"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static getMethodType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "GET_"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "PUT_"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isSecureMethod(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "secure"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private wrapBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "name"

    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public call(Lcom/lody/virtual/client/hook/base/MethodBox;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p4

    invoke-virtual {p4}, Lcom/lody/virtual/client/VClientImpl;->isBound()Z

    move-result p4

    if-nez p4, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    .line 57
    :cond_0
    invoke-static {p2}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->getMethodType(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_2

    .line 59
    sget-object v0, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->PRE_SET_VALUES:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p3, v0}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->wrapBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "android_id"

    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 64
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/VClientImpl;->getDeviceInfo()Lcom/lody/virtual/remote/VDeviceInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/lody/virtual/remote/VDeviceInfo;->androidId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->wrapBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_3

    .line 68
    invoke-static {p2}, Lcom/lody/virtual/client/hook/providers/SettingsProviderHook;->isSecureMethod(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v0

    .line 73
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/SecurityException;

    if-eqz p2, :cond_4

    return-object v0

    .line 78
    :cond_4
    throw p1
.end method

.method protected varargs processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method
