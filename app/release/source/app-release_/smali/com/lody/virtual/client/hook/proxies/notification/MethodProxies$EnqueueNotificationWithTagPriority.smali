.class Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTagPriority;
.super Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnqueueNotificationWithTagPriority"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/notification/MethodProxies$EnqueueNotificationWithTag;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "enqueueNotificationWithTagPriority"

    return-object v0
.end method
