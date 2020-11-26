.class Lcom/tencent/lbssearch/a/d/j$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/d/j;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/tencent/lbssearch/a/d/j;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/d/j;Ljava/lang/String;J)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/j$1;->c:Lcom/tencent/lbssearch/a/d/j;

    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/j$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/lbssearch/a/d/j$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j$1;->c:Lcom/tencent/lbssearch/a/d/j;

    invoke-static {v0}, Lcom/tencent/lbssearch/a/d/j;->b(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/r$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/j$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/lbssearch/a/d/j$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/lbssearch/a/d/r$a;->a(Ljava/lang/String;J)V

    .line 220
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j$1;->c:Lcom/tencent/lbssearch/a/d/j;

    invoke-static {v0}, Lcom/tencent/lbssearch/a/d/j;->b(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/r$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/d/r$a;->a(Ljava/lang/String;)V

    return-void
.end method
