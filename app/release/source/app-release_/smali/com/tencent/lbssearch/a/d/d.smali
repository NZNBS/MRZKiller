.class public Lcom/tencent/lbssearch/a/d/d;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/d/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/d/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/tencent/lbssearch/a/d/d$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/lbssearch/a/d/d$1;-><init>(Lcom/tencent/lbssearch/a/d/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/d;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;",
            "Lcom/tencent/lbssearch/a/d/l<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/lbssearch/a/d/d;->a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;",
            "Lcom/tencent/lbssearch/a/d/l<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/d/j;->r()V

    const-string v0, "post-response"

    .line 61
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tencent/lbssearch/a/d/d$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/lbssearch/a/d/d$a;-><init>(Lcom/tencent/lbssearch/a/d/d;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;",
            "Lcom/tencent/lbssearch/a/d/q;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 67
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/tencent/lbssearch/a/d/l;->a(Lcom/tencent/lbssearch/a/d/q;)Lcom/tencent/lbssearch/a/d/l;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/tencent/lbssearch/a/d/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/tencent/lbssearch/a/d/d$a;-><init>(Lcom/tencent/lbssearch/a/d/d;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
