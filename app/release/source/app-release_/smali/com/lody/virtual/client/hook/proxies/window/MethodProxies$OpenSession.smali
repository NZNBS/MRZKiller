.class Lcom/lody/virtual/client/hook/proxies/window/MethodProxies$OpenSession;
.super Lcom/lody/virtual/client/hook/proxies/window/MethodProxies$BasePatchSession;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/window/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenSession"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/window/MethodProxies$BasePatchSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "openSession"

    return-object v0
.end method
