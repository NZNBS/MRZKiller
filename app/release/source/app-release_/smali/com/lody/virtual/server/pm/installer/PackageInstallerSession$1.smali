.class Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-static {v0}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$000(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/IPackageInstallObserver2;

    invoke-static {v1, p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$102(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;Landroid/content/pm/IPackageInstallObserver2;)Landroid/content/pm/IPackageInstallObserver2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-static {p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$200(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V
    :try_end_1
    .catch Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    :try_start_2
    invoke-static {p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commit of session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    iget v4, v4, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-static {v2}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$300(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    .line 111
    iget-object v2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    iget p1, p1, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;->error:I

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$400(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x1

    .line 114
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
