.class Lcom/lody/virtual/client/hook/proxies/libcore/MethodProxies$Lstat;
.super Lcom/lody/virtual/client/hook/proxies/libcore/MethodProxies$Stat;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/libcore/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lstat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/proxies/libcore/MethodProxies$Stat;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "lstat"

    return-object v0
.end method
