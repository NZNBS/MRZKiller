.class Lcom/tencent/lbssearch/a/d/d$a;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/d/d;

.field private final b:Lcom/tencent/lbssearch/a/d/j;

.field private final c:Lcom/tencent/lbssearch/a/d/l;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/d/d;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/l;Ljava/lang/Runnable;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/d$a;->a:Lcom/tencent/lbssearch/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    .line 84
    iput-object p3, p0, Lcom/tencent/lbssearch/a/d/d$a;->c:Lcom/tencent/lbssearch/a/d/l;

    .line 85
    iput-object p4, p0, Lcom/tencent/lbssearch/a/d/d$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/d/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/d/j;->b(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->c:Lcom/tencent/lbssearch/a/d/l;

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/d$a;->c:Lcom/tencent/lbssearch/a/d/l;

    iget-object v1, v1, Lcom/tencent/lbssearch/a/d/l;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/d$a;->c:Lcom/tencent/lbssearch/a/d/l;

    iget-object v1, v1, Lcom/tencent/lbssearch/a/d/l;->b:Lcom/tencent/lbssearch/a/d/q;

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/d/j;->b(Lcom/tencent/lbssearch/a/d/q;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->c:Lcom/tencent/lbssearch/a/d/l;

    iget-boolean v0, v0, Lcom/tencent/lbssearch/a/d/l;->c:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->b:Lcom/tencent/lbssearch/a/d/j;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/d/j;->b(Ljava/lang/String;)V

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/d$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
