.class Lcom/lody/virtual/client/core/VirtualCore$2;
.super Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;
.source "VirtualCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/core/VirtualCore;->setAppRequestListener(Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/core/VirtualCore;

.field final synthetic val$listener:Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/core/VirtualCore;Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore$2;->this$0:Lcom/lody/virtual/client/core/VirtualCore;

    iput-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore$2;->val$listener:Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;

    invoke-direct {p0}, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestInstall(Ljava/lang/String;)V
    .locals 2

    .line 811
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/client/core/VirtualCore$2$1;

    invoke-direct {v1, p0, p1}, Lcom/lody/virtual/client/core/VirtualCore$2$1;-><init>(Lcom/lody/virtual/client/core/VirtualCore$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestUninstall(Ljava/lang/String;)V
    .locals 2

    .line 821
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualRuntime;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lody/virtual/client/core/VirtualCore$2$2;

    invoke-direct {v1, p0, p1}, Lcom/lody/virtual/client/core/VirtualCore$2$2;-><init>(Lcom/lody/virtual/client/core/VirtualCore$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
