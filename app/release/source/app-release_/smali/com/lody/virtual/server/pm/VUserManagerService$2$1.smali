.class Lcom/lody/virtual/server/pm/VUserManagerService$2$1;
.super Ljava/lang/Thread;
.source "VUserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/VUserManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/VUserManagerService$2;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget-object v0, v0, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/VUserManagerService;->access$000(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    invoke-static {v1}, Lcom/lody/virtual/server/pm/VUserManagerService;->access$100(Lcom/lody/virtual/server/pm/VUserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 765
    :try_start_1
    iget-object v2, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget-object v2, v2, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    iget-object v3, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->this$1:Lcom/lody/virtual/server/pm/VUserManagerService$2;

    iget v3, v3, Lcom/lody/virtual/server/pm/VUserManagerService$2;->val$userHandle:I

    invoke-static {v2, v3}, Lcom/lody/virtual/server/pm/VUserManagerService;->access$200(Lcom/lody/virtual/server/pm/VUserManagerService;I)V

    .line 766
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 766
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 767
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
