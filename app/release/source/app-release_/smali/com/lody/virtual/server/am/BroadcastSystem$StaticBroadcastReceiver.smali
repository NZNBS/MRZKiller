.class final Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/BroadcastSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StaticBroadcastReceiver"
.end annotation


# instance fields
.field private appId:I

.field private filter:Landroid/content/IntentFilter;

.field private info:Landroid/content/pm/ActivityInfo;

.field final synthetic this$0:Lcom/lody/virtual/server/am/BroadcastSystem;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/am/BroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/BroadcastSystem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 234
    iput p2, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->appId:I

    .line 235
    iput-object p3, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->info:Landroid/content/pm/ActivityInfo;

    .line 236
    iput-object p4, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/am/BroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;Lcom/lody/virtual/server/am/BroadcastSystem$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;-><init>(Lcom/lody/virtual/server/am/BroadcastSystem;ILandroid/content/pm/ActivityInfo;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 241
    iget-object p1, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/BroadcastSystem;

    invoke-static {p1}, Lcom/lody/virtual/server/am/BroadcastSystem;->access$500(Lcom/lody/virtual/server/am/BroadcastSystem;)Lcom/lody/virtual/server/pm/VAppManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/VAppManagerService;->isBooting()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "_VA_|_privilege_pkg_"

    .line 247
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->this$0:Lcom/lody/virtual/server/am/BroadcastSystem;

    invoke-static {v0}, Lcom/lody/virtual/server/am/BroadcastSystem;->access$600(Lcom/lody/virtual/server/am/BroadcastSystem;)Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    iget v1, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->appId:I

    iget-object v2, p0, Lcom/lody/virtual/server/am/BroadcastSystem$StaticBroadcastReceiver;->info:Landroid/content/pm/ActivityInfo;

    new-instance v3, Lcom/lody/virtual/remote/PendingResultData;

    invoke-direct {v3, p1}, Lcom/lody/virtual/remote/PendingResultData;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/lody/virtual/server/am/VActivityManagerService;->handleStaticBroadcast(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/lody/virtual/remote/PendingResultData;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 253
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
