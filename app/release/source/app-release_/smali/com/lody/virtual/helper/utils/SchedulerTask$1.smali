.class Lcom/lody/virtual/helper/utils/SchedulerTask$1;
.super Ljava/lang/Object;
.source "SchedulerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/helper/utils/SchedulerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/utils/SchedulerTask;


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/utils/SchedulerTask;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/SchedulerTask$1;->this$0:Lcom/lody/virtual/helper/utils/SchedulerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask$1;->this$0:Lcom/lody/virtual/helper/utils/SchedulerTask;

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/SchedulerTask;->run()V

    .line 30
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask$1;->this$0:Lcom/lody/virtual/helper/utils/SchedulerTask;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/SchedulerTask;->access$000(Lcom/lody/virtual/helper/utils/SchedulerTask;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask$1;->this$0:Lcom/lody/virtual/helper/utils/SchedulerTask;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/SchedulerTask;->access$100(Lcom/lody/virtual/helper/utils/SchedulerTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/SchedulerTask$1;->this$0:Lcom/lody/virtual/helper/utils/SchedulerTask;

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/SchedulerTask;->access$000(Lcom/lody/virtual/helper/utils/SchedulerTask;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
