.class Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$Set;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "AlarmManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Set"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$Set;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 71
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$Set;->getHostPkg()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    .line 73
    :cond_0
    const-class p1, Landroid/os/WorkSource;

    invoke-static {p3, p1}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p2, 0x0

    .line 75
    aput-object p2, p3, p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "set"

    return-object v0
.end method
