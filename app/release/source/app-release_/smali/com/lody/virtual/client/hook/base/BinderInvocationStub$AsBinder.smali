.class final Lcom/lody/virtual/client/hook/base/BinderInvocationStub$AsBinder;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "BinderInvocationStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/base/BinderInvocationStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/base/BinderInvocationStub;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub$AsBinder;->this$0:Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;Lcom/lody/virtual/client/hook/base/BinderInvocationStub$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub$AsBinder;-><init>(Lcom/lody/virtual/client/hook/base/BinderInvocationStub;)V

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

    .line 79
    iget-object p1, p0, Lcom/lody/virtual/client/hook/base/BinderInvocationStub$AsBinder;->this$0:Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "asBinder"

    return-object v0
.end method
