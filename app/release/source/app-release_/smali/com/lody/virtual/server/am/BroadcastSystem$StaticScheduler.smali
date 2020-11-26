.class final Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;
.super Landroid/os/Handler;
.source "BroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/BroadcastSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticScheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/am/BroadcastSystem$1;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticScheduler;-><init>()V

    return-void
.end method
