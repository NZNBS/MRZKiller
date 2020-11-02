.class Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.source "WifiManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveWorkSourceMethodProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub$RemoveWorkSourceMethodProxy;->this$0:Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;

    .line 47
    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    const-class v0, Landroid/os/WorkSource;

    invoke-static {p3, v0}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfFirst([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    aput-object v1, p3, v0

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
