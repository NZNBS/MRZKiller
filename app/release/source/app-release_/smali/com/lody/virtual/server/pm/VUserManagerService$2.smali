.class Lcom/lody/virtual/server/pm/VUserManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "VUserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/VUserManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/VUserManagerService;I)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    iput p2, p0, Lcom/lody/virtual/server/pm/VUserManagerService$2;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 761
    new-instance p1, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;

    invoke-direct {p1, p0}, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;-><init>(Lcom/lody/virtual/server/pm/VUserManagerService$2;)V

    .line 769
    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/VUserManagerService$2$1;->start()V

    return-void
.end method
