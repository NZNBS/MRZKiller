.class public Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "ResultStaticMethodProxy.java"


# instance fields
.field mResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;->mResult:Ljava/lang/Object;

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

    .line 24
    iget-object p1, p0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/ResultStaticMethodProxy;->mResult:Ljava/lang/Object;

    return-object v0
.end method
