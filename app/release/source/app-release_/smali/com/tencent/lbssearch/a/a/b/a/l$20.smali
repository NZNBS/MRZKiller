.class final Lcom/tencent/lbssearch/a/a/b/a/l$20;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/a/b/a/l;->a(Lcom/tencent/lbssearch/a/a/c/a;Lcom/tencent/lbssearch/a/a/w;)Lcom/tencent/lbssearch/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/c/a;

.field final synthetic b:Lcom/tencent/lbssearch/a/a/w;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/c/a;Lcom/tencent/lbssearch/a/a/w;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/l$20;->a:Lcom/tencent/lbssearch/a/a/c/a;

    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/l$20;->b:Lcom/tencent/lbssearch/a/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 0
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

    .line 763
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/l$20;->a:Lcom/tencent/lbssearch/a/a/c/a;

    invoke-virtual {p2, p1}, Lcom/tencent/lbssearch/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/l$20;->b:Lcom/tencent/lbssearch/a/a/w;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
