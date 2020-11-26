.class public Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "VibratorStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    sget-object v0, Lmirror/com/android/internal/os/IVibratorService$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "vibrator"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 3

    .line 25
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;

    const-string v1, "vibrateMagnitude"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;-><init>(Ljava/lang/String;Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 26
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;

    const-string v1, "vibratePatternMagnitude"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;-><init>(Ljava/lang/String;Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 28
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;

    const-string v1, "vibrate"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;-><init>(Ljava/lang/String;Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 29
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;

    const-string v1, "vibratePattern"

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$VibrateMethodProxy;-><init>(Ljava/lang/String;Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
