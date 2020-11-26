.class Lcom/lody/virtual/server/am/ActivityStack$1;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/am/ActivityStack;->scheduleFinishMarkedActivityLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/am/ActivityStack;

.field final synthetic val$r:Lcom/lody/virtual/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/ActivityStack;Lcom/lody/virtual/server/am/ActivityRecord;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/lody/virtual/server/am/ActivityStack$1;->this$0:Lcom/lody/virtual/server/am/ActivityStack;

    iput-object p2, p0, Lcom/lody/virtual/server/am/ActivityStack$1;->val$r:Lcom/lody/virtual/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/server/am/ActivityStack$1;->val$r:Lcom/lody/virtual/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ProcessRecord;->client:Lcom/lody/virtual/client/IVClient;

    iget-object v1, p0, Lcom/lody/virtual/server/am/ActivityStack$1;->val$r:Lcom/lody/virtual/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/lody/virtual/client/IVClient;->finishActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
