.class public final Lcom/tencent/lbssearch/a/a/b/a/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/a/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/a/b/c;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/a/b/c;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/b;->a:Lcom/tencent/lbssearch/a/a/b/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 6
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

    .line 45
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 48
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 53
    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v4

    .line 54
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/b;->a:Lcom/tencent/lbssearch/a/a/b/c;

    invoke-virtual {v0, p2}, Lcom/tencent/lbssearch/a/a/b/c;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/b/h;

    move-result-object v5

    .line 57
    new-instance p2, Lcom/tencent/lbssearch/a/a/b/a/b$a;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/lbssearch/a/a/b/a/b$a;-><init>(Lcom/tencent/lbssearch/a/a/b/a/b;Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/w;Lcom/tencent/lbssearch/a/a/b/h;)V

    return-object p2
.end method
