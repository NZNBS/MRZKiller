.class final enum Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$1;
.super Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
.source "LogInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;-><init>(Ljava/lang/String;ILcom/lody/virtual/client/hook/base/LogInvocation$1;)V

    return-void
.end method


# virtual methods
.method public getLogLevel(ZZ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
