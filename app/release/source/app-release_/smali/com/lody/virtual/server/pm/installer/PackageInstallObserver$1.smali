.class Lcom/lody/virtual/server/pm/installer/PackageInstallObserver$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver$1;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;->onUserActionRequired(Landroid/content/Intent;)V

    return-void
.end method
