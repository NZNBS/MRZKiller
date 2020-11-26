.class Lcom/tencent/lbssearch/a/a/f$1;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/f;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/f$1;->a:Lcom/tencent/lbssearch/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/l;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f$1;->a:Lcom/tencent/lbssearch/a/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
