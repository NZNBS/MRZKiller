.class Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub$1;
.super Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;
.source "TelephonyRegistryStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;->onBindMethods()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;Ljava/lang/String;I)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub$1;->this$0:Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;

    invoke-direct {p0, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 27
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub$1;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 29
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 30
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit16 v1, v1, 0x400

    xor-int/lit8 v1, v1, 0x10

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceSequencePkgMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
