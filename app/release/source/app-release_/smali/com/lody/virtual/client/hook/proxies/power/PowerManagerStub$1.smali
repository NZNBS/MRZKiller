.class Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$1;
.super Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;
.source "PowerManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;Ljava/lang/String;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$1;->this$0:Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;

    invoke-direct {p0, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;-><init>(Ljava/lang/String;I)V

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

    .line 31
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub$1;->this$0:Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;

    invoke-static {p2, p1}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;->access$000(Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
