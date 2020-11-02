.class Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$getIccSerialNumberForSubscriber;
.super Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$GetIccSerialNumber;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getIccSerialNumberForSubscriber"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/phonesubinfo/MethodProxies$GetIccSerialNumber;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "getIccSerialNumberForSubscriber"

    return-object v0
.end method
