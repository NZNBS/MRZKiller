.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivityAndWait;
.super Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartActivityAndWait"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 948
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;-><init>()V

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

    .line 956
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "startActivityAndWait"

    return-object v0
.end method
