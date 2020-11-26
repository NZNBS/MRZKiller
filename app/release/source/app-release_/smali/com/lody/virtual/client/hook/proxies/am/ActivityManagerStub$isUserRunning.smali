.class Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$isUserRunning;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "isUserRunning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$isUserRunning;->this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$isUserRunning;-><init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    .line 158
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 159
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "isUserRunning"

    return-object v0
.end method
