.class Lcom/tencent/lbssearch/a/a/b/d$1;
.super Lcom/tencent/lbssearch/a/a/w;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/a/b/d;->a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/a/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/lbssearch/a/a/f;

.field final synthetic d:Lcom/tencent/lbssearch/a/a/c/a;

.field final synthetic e:Lcom/tencent/lbssearch/a/a/b/d;

.field private f:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/b/d;ZZLcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->e:Lcom/tencent/lbssearch/a/a/b/d;

    iput-boolean p2, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->b:Z

    iput-object p4, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->c:Lcom/tencent/lbssearch/a/a/f;

    iput-object p5, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->d:Lcom/tencent/lbssearch/a/a/c/a;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
.end method

.method private a()Lcom/tencent/lbssearch/a/a/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->f:Lcom/tencent/lbssearch/a/a/w;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->c:Lcom/tencent/lbssearch/a/a/f;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->e:Lcom/tencent/lbssearch/a/a/b/d;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->d:Lcom/tencent/lbssearch/a/a/c/a;

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/x;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->f:Lcom/tencent/lbssearch/a/a/w;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->b:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/d$1;->a()Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/d$1;->a:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->n()V

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/d$1;->a()Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
