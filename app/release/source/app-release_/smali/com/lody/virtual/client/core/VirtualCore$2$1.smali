.class Lcom/lody/virtual/client/core/VirtualCore$2$1;
.super Ljava/lang/Object;
.source "VirtualCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/core/VirtualCore$2;->onRequestInstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lody/virtual/client/core/VirtualCore$2;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/core/VirtualCore$2;Ljava/lang/String;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore$2$1;->this$1:Lcom/lody/virtual/client/core/VirtualCore$2;

    iput-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore$2$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore$2$1;->this$1:Lcom/lody/virtual/client/core/VirtualCore$2;

    iget-object v0, v0, Lcom/lody/virtual/client/core/VirtualCore$2;->val$listener:Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore$2$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;->onRequestInstall(Ljava/lang/String;)V

    return-void
.end method
