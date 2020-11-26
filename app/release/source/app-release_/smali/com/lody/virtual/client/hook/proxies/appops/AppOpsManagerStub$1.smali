.class Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$1;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "AppOpsManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub$1;->this$0:Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

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

    const/4 p1, 0x0

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "noteProxyOperation"

    return-object v0
.end method
