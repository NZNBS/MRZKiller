.class final Lcom/lody/virtual/client/VClientImpl$ReceiverData;
.super Ljava/lang/Object;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/VClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReceiverData"
.end annotation


# instance fields
.field component:Landroid/content/ComponentName;

.field intent:Landroid/content/Intent;

.field processName:Ljava/lang/String;

.field resultData:Lcom/lody/virtual/remote/PendingResultData;

.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/VClientImpl;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$ReceiverData;->this$0:Lcom/lody/virtual/client/VClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V
    .locals 0

    .line 789
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl$ReceiverData;-><init>(Lcom/lody/virtual/client/VClientImpl;)V

    return-void
.end method
