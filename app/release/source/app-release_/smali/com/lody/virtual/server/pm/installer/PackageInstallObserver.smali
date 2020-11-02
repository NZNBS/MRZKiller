.class public Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;
.super Ljava/lang/Object;
.source "PackageInstallObserver.java"


# instance fields
.field private final mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver$1;-><init>(Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/content/pm/IPackageInstallObserver2;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallObserver;->mBinder:Landroid/content/pm/IPackageInstallObserver2$Stub;

    return-object v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
