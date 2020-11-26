.class Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;
.super Ljava/lang/Object;
.source "VPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionActiveChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Z)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$200(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iget p1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, p1, p2}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->access$400(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;IIZ)V

    return-void
.end method

.method public onSessionBadgingChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$200(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iget p1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, p1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->access$300(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;II)V

    return-void
.end method

.method public onSessionFinished(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Z)V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$200(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->notifySessionFinished(IIZ)V

    .line 422
    iget-object p2, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {p2}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$700(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback$1;-><init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionPrepared(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 0

    return-void
.end method

.method public onSessionProgressChanged(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;F)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$InternalCallback;->this$0:Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;->access$200(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;)Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    iget p1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, p1, p2}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;->access$500(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$Callbacks;IIF)V

    return-void
.end method

.method public onSessionSealedBlocking(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 0

    return-void
.end method
