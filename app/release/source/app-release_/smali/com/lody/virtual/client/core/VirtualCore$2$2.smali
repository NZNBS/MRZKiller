.class Lcom/lody/virtual/client/core/VirtualCore$2$2;
.super Ljava/lang/Object;
.source "VirtualCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/core/VirtualCore$2;->onRequestUninstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lody/virtual/client/core/VirtualCore$2;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/core/VirtualCore$2;Ljava/lang/String;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/lody/virtual/client/core/VirtualCore$2$2;->this$1:Lcom/lody/virtual/client/core/VirtualCore$2;

    iput-object p2, p0, Lcom/lody/virtual/client/core/VirtualCore$2$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/lody/virtual/client/core/VirtualCore$2$2;->this$1:Lcom/lody/virtual/client/core/VirtualCore$2;

    iget-object v0, v0, Lcom/lody/virtual/client/core/VirtualCore$2;->val$listener:Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;

    iget-object v1, p0, Lcom/lody/virtual/client/core/VirtualCore$2$2;->val$pkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore$AppRequestListener;->onRequestUninstall(Ljava/lang/String;)V

    return-void
.end method
