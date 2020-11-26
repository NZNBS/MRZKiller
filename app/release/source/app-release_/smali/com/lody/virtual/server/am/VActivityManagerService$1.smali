.class Lcom/lody/virtual/server/am/VActivityManagerService$1;
.super Ljava/lang/Object;
.source "VActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/am/VActivityManagerService;->attachClient(ILandroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/am/VActivityManagerService;

.field final synthetic val$clientBinder:Landroid/os/IBinder;

.field final synthetic val$record:Lcom/lody/virtual/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/VActivityManagerService;Landroid/os/IBinder;Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/lody/virtual/server/am/VActivityManagerService$1;->this$0:Lcom/lody/virtual/server/am/VActivityManagerService;

    iput-object p2, p0, Lcom/lody/virtual/server/am/VActivityManagerService$1;->val$clientBinder:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/lody/virtual/server/am/VActivityManagerService$1;->val$record:Lcom/lody/virtual/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService$1;->val$clientBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 726
    iget-object v0, p0, Lcom/lody/virtual/server/am/VActivityManagerService$1;->this$0:Lcom/lody/virtual/server/am/VActivityManagerService;

    iget-object v1, p0, Lcom/lody/virtual/server/am/VActivityManagerService$1;->val$record:Lcom/lody/virtual/server/am/ProcessRecord;

    invoke-static {v0, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->access$000(Lcom/lody/virtual/server/am/VActivityManagerService;Lcom/lody/virtual/server/am/ProcessRecord;)V

    return-void
.end method
