.class Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;
.super Ljava/lang/Object;
.source "VPackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->onSessionFinished(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

.field final synthetic val$session:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;->this$1:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    iput-object p2, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;->val$session:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;->this$1:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    iget-object v0, v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$600(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;->this$1:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$600(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;->val$session:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    iget v2, v2, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 427
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
