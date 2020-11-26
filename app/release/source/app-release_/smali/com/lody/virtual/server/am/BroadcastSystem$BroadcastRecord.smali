.class final Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;
.super Ljava/lang/Object;
.source "BroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/BroadcastSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BroadcastRecord"
.end annotation


# instance fields
.field pendingResult:Lcom/lody/virtual/remote/PendingResultData;

.field receiverInfo:Landroid/content/pm/ActivityInfo;

.field vuid:I


# direct methods
.method constructor <init>(ILandroid/content/pm/ActivityInfo;Lcom/lody/virtual/remote/PendingResultData;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;->vuid:I

    .line 209
    iput-object p2, p0, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;->receiverInfo:Landroid/content/pm/ActivityInfo;

    .line 210
    iput-object p3, p0, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;->pendingResult:Lcom/lody/virtual/remote/PendingResultData;

    return-void
.end method
