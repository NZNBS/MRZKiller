.class Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub$1;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;
.source "NotificationManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub$1;->this$0:Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    .line 55
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
