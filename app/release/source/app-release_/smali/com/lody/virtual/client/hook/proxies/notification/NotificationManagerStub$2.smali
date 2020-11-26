.class Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub$2;
.super Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
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

    .line 59
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub$2;->this$0:Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;

    invoke-direct {p0, p2}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1

    .line 62
    invoke-static {p3}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceLastUid([Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 64
    :goto_0
    invoke-static {p3, v0}, Lcom/lody/virtual/client/hook/utils/MethodParameterUtils;->replaceSequenceAppPkg([Ljava/lang/Object;I)Ljava/lang/String;

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
