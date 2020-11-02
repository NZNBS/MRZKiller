.class Lcom/tencent/lbssearch/a/a/f$a;
.super Lcom/tencent/lbssearch/a/a/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/lbssearch/a/a/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 872
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
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

    .line 890
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f$a;->a:Lcom/tencent/lbssearch/a/a/w;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    return-void

    .line 891
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lcom/tencent/lbssearch/a/a/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f$a;->a:Lcom/tencent/lbssearch/a/a/w;

    if-nez v0, :cond_0

    .line 879
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/f$a;->a:Lcom/tencent/lbssearch/a/a/w;

    return-void

    .line 877
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
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

    .line 883
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f$a;->a:Lcom/tencent/lbssearch/a/a/w;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 884
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
