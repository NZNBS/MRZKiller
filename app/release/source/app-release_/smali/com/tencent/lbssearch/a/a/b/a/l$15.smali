.class final Lcom/tencent/lbssearch/a/a/b/a/l$15;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 1
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

    .line 510
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 514
    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p1

    .line 515
    new-instance p2, Lcom/tencent/lbssearch/a/a/b/a/l$15$1;

    invoke-direct {p2, p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$15$1;-><init>(Lcom/tencent/lbssearch/a/a/b/a/l$15;Lcom/tencent/lbssearch/a/a/w;)V

    return-object p2
.end method
