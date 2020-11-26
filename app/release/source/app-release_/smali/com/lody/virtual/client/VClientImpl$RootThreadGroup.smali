.class Lcom/lody/virtual/client/VClientImpl$RootThreadGroup;
.super Ljava/lang/ThreadGroup;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/VClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootThreadGroup"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 1

    const-string v0, "VA-Root"

    .line 761
    invoke-direct {p0, p1, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 766
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->access$500()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/client/VClientImpl;->access$600(Lcom/lody/virtual/client/VClientImpl;)Lcom/lody/virtual/client/core/CrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0, p1, p2}, Lcom/lody/virtual/client/core/CrashHandler;->handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "uncaught"

    .line 770
    invoke-static {p1, p2}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 771
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method
