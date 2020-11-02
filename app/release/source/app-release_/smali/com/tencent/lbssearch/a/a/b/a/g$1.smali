.class final Lcom/tencent/lbssearch/a/a/b/a/g$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 42
    new-instance p2, Lcom/tencent/lbssearch/a/a/b/a/g;

    invoke-direct {p2, p1, v1}, Lcom/tencent/lbssearch/a/a/b/a/g;-><init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/b/a/g$1;)V

    return-object p2

    :cond_0
    return-object v1
.end method
