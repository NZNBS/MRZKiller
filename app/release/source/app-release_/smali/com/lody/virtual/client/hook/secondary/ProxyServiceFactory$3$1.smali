.class Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;
.super Lcom/lody/virtual/client/hook/secondary/StubBinder;
.source "ProxyServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;->getService(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/os/IBinder;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;Ljava/lang/ClassLoader;Landroid/os/IBinder;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;->this$0:Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3;

    invoke-direct {p0, p2, p3}, Lcom/lody/virtual/client/hook/secondary/StubBinder;-><init>(Ljava/lang/ClassLoader;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public createHandler(Ljava/lang/Class;Landroid/os/IInterface;)Ljava/lang/reflect/InvocationHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/IInterface;",
            ")",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation

    .line 80
    new-instance p1, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1$1;

    invoke-direct {p1, p0, p2}, Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1$1;-><init>(Lcom/lody/virtual/client/hook/secondary/ProxyServiceFactory$3$1;Landroid/os/IInterface;)V

    return-object p1
.end method
