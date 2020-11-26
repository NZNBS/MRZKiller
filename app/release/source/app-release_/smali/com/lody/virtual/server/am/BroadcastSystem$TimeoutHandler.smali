.class final Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;
.super Landroid/os/Handler;
.source "BroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/BroadcastSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/am/BroadcastSystem;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/am/BroadcastSystem;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;->this$0:Lcom/lody/virtual/server/am/BroadcastSystem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/am/BroadcastSystem;Lcom/lody/virtual/server/am/BroadcastSystem$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;-><init>(Lcom/lody/virtual/server/am/BroadcastSystem;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 217
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 218
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem$TimeoutHandler;->this$0:Lcom/lody/virtual/server/am/BroadcastSystem;

    invoke-static {v0}, Lcom/lody/virtual/server/am/BroadcastSystem;->access$300(Lcom/lody/virtual/server/am/BroadcastSystem;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;

    if-eqz p1, :cond_0

    .line 220
    invoke-static {}, Lcom/lody/virtual/server/am/BroadcastSystem;->access$400()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Broadcast timeout, cancel to dispatch it."

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object p1, p1, Lcom/lody/virtual/server/am/BroadcastSystem$BroadcastRecord;->pendingResult:Lcom/lody/virtual/remote/PendingResultData;

    invoke-virtual {p1}, Lcom/lody/virtual/remote/PendingResultData;->finish()V

    :cond_0
    return-void
.end method
