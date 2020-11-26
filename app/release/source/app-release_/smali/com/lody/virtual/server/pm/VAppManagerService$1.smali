.class Lcom/lody/virtual/server/pm/VAppManagerService$1;
.super Ljava/lang/Object;
.source "VAppManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/VAppManagerService;->setAppRequestListener(Lcom/lody/virtual/server/interfaces/IAppRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/pm/VAppManagerService;

.field final synthetic val$listener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/VAppManagerService;Lcom/lody/virtual/server/interfaces/IAppRequestListener;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VAppManagerService$1;->this$0:Lcom/lody/virtual/server/pm/VAppManagerService;

    iput-object p2, p0, Lcom/lody/virtual/server/pm/VAppManagerService$1;->val$listener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService$1;->val$listener:Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    invoke-interface {v0}, Lcom/lody/virtual/server/interfaces/IAppRequestListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 567
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VAppManagerService$1;->this$0:Lcom/lody/virtual/server/pm/VAppManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lody/virtual/server/pm/VAppManagerService;->access$002(Lcom/lody/virtual/server/pm/VAppManagerService;Lcom/lody/virtual/server/interfaces/IAppRequestListener;)Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    return-void
.end method
