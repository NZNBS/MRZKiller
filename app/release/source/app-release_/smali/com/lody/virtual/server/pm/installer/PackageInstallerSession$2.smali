.class Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->commitLocked()V
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

    .line 169
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$2;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$2;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-static {p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$300(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;)V

    .line 179
    iget-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$2;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    invoke-static {p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;->access$400(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    .line 172
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
