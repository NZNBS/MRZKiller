.class Lcom/lody/virtual/server/pm/VUserManagerService$1;
.super Landroid/app/IStopUserCallback$Stub;
.source "VUserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/server/pm/VUserManagerService;->removeUser(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/server/pm/VUserManagerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/VUserManagerService;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VUserManagerService$1;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 0

    return-void
.end method

.method public userStopped(I)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VUserManagerService$1;->this$0:Lcom/lody/virtual/server/pm/VUserManagerService;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/server/pm/VUserManagerService;->finishRemoveUser(I)V

    return-void
.end method
