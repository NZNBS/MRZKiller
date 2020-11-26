.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegisterReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;
    }
.end annotation


# static fields
.field private static final IDX_IIntentReceiver:I

.field private static final IDX_IntentFilter:I

.field private static final IDX_RequiredPermission:I


# instance fields
.field private mProxyIIntentReceivers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/IIntentReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->IDX_IIntentReceiver:I

    .line 1235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    sput v0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->IDX_RequiredPermission:I

    .line 1238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    const/4 v1, 0x3

    :cond_2
    sput v1, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->IDX_IntentFilter:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1230
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    .line 1242
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->mProxyIIntentReceivers:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1230
    iget-object p0, p0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->mProxyIIntentReceivers:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1251
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceFirstAppPkg([Ljava/lang/Object;)Ljava/lang/String;

    .line 1252
    sget v0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->IDX_RequiredPermission:I

    const/4 v1, 0x0

    aput-object v1, p3, v0

    .line 1253
    sget v0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->IDX_IntentFilter:I

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 1254
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->protectIntentFilter(Landroid/content/IntentFilter;)V

    .line 1255
    array-length v0, p3

    sget v1, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->IDX_IIntentReceiver:I

    if-le v0, v1, :cond_1

    const-class v0, Landroid/content/IIntentReceiver;

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    aget-object v0, p3, v1

    check-cast v0, Landroid/os/IInterface;

    .line 1257
    const-class v2, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1258
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1260
    new-instance v3, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$1;

    invoke-direct {v3, p0, v2}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$1;-><init>(Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;Landroid/os/IBinder;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1267
    iget-object v3, p0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->mProxyIIntentReceivers:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IIntentReceiver;

    if-nez v3, :cond_0

    .line 1269
    new-instance v3, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;

    invoke-direct {v3, v0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;-><init>(Landroid/os/IInterface;)V

    .line 1270
    iget-object v4, p0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->mProxyIIntentReceivers:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    :cond_0
    sget-object v2, Lmirror/android/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Lmirror/RefObject;

    invoke-virtual {v2, v0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1274
    sget-object v2, Lmirror/android/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Lmirror/RefObject;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1275
    aput-object v3, p3, v1

    .line 1280
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "registerReceiver"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1286
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;->isAppProcess()Z

    move-result v0

    return v0
.end method
