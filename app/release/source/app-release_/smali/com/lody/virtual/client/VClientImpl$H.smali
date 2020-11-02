.class Lcom/lody/virtual/client/VClientImpl$H;
.super Landroid/os/Handler;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/VClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/VClientImpl;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$H;->this$0:Lcom/lody/virtual/client/VClientImpl;

    .line 799
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl$H;-><init>(Lcom/lody/virtual/client/VClientImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 804
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl$H;->this$0:Lcom/lody/virtual/client/VClientImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/lody/virtual/client/VClientImpl$ReceiverData;

    invoke-static {v0, p1}, Lcom/lody/virtual/client/VClientImpl;->access$800(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$ReceiverData;)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/VClientImpl$H;->this$0:Lcom/lody/virtual/client/VClientImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/lody/virtual/client/VClientImpl$NewIntentData;

    invoke-static {v0, p1}, Lcom/lody/virtual/client/VClientImpl;->access$700(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$NewIntentData;)V

    :goto_0
    return-void
.end method
