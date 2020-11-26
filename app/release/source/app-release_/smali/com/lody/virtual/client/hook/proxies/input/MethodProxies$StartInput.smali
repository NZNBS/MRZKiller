.class Lcom/lody/virtual/client/hook/proxies/input/MethodProxies$StartInput;
.super Lcom/lody/virtual/client/hook/proxies/input/MethodProxies$StartInputOrWindowGainedFocus;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/input/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartInput"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/input/MethodProxies$StartInputOrWindowGainedFocus;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "startInput"

    return-object v0
.end method
