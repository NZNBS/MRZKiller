.class Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$2;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub$2;->this$0:Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
