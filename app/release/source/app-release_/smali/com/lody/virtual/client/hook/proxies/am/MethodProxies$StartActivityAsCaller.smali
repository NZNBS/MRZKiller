.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivityAsCaller;
.super Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartActivityAsCaller"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1148
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "startActivityAsCaller"

    return-object v0
.end method
