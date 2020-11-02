.class public abstract Lcom/lody/virtual/helper/utils/SchedulerTask;
.super Ljava/lang/Object;
.source "SchedulerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private final mInnerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/lody/virtual/helper/utils/SchedulerTask$1;

    invoke-direct {v0, p0}, Lcom/lody/virtual/helper/utils/SchedulerTask$1;-><init>(Lcom/lody/virtual/helper/utils/SchedulerTask;)V

    iput-object v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mInnerRunnable:Ljava/lang/Runnable;

    .line 14
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mHandler:Landroid/os/Handler;

    .line 15
    iput-wide p2, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mDelay:J

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/helper/utils/SchedulerTask;)J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/lody/virtual/helper/utils/SchedulerTask;)Landroid/os/Handler;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mInnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public schedule()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lody/virtual/helper/utils/SchedulerTask;->mInnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
