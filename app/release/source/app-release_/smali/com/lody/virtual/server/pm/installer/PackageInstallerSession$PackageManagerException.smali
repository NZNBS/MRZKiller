.class Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerException"
.end annotation


# instance fields
.field public final error:I

.field final synthetic this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;->this$0:Lcom/lody/virtual/server/pm/installer/PackageInstallerSession;

    .line 504
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 505
    iput p2, p0, Lcom/lody/virtual/server/pm/installer/PackageInstallerSession$PackageManagerException;->error:I

    return-void
.end method
