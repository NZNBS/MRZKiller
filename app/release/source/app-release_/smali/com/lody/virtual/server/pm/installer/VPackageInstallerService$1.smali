.class final Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$1;
.super Lcom/lody/virtual/helper/utils/Singleton;
.source "VPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/helper/utils/Singleton<",
        "Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;
    .locals 2

    .line 56
    new-instance v0, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;-><init>(Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/installer/VPackageInstallerService$1;->create()Lcom/lody/virtual/server/pm/installer/VPackageInstallerService;

    move-result-object v0

    return-object v0
.end method
