.class Lcom/tencent/lbssearch/a/d/d$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/d/d;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/tencent/lbssearch/a/d/d;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/d/d;Landroid/os/Handler;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/d$1;->b:Lcom/tencent/lbssearch/a/d/d;

    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/d$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
