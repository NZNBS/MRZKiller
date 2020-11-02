.class public Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "AlarmManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$Set;,
        Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$SetTime;,
        Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$SetTimeZone;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    sget-object v0, Lmirror/android/app/IAlarmManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "alarm"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 29
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$Set;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$Set;-><init>(Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 30
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$SetTime;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$SetTime;-><init>(Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 31
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$SetTimeZone;

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$SetTimeZone;-><init>(Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
