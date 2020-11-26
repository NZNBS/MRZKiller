.class final Lcom/tencent/lbssearch/a/a/b/a/b$a;
.super Lcom/tencent/lbssearch/a/a/w;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/b/a/b;

.field private final b:Lcom/tencent/lbssearch/a/a/f;

.field private final c:Ljava/lang/reflect/Type;

.field private final d:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/tencent/lbssearch/a/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/a/b/a/b;Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/w;Lcom/tencent/lbssearch/a/a/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TE;>;",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->a:Lcom/tencent/lbssearch/a/a/b/a/b;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->b:Lcom/tencent/lbssearch/a/a/f;

    .line 71
    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->c:Ljava/lang/reflect/Type;

    .line 72
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/a/k;

    invoke-direct {p1, p2, p4, p3}, Lcom/tencent/lbssearch/a/a/b/a/k;-><init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->d:Lcom/tencent/lbssearch/a/a/w;

    .line 74
    iput-object p5, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->e:Lcom/tencent/lbssearch/a/a/b/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/d/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->e:Lcom/tencent/lbssearch/a/a/b/h;

    invoke-interface {v0}, Lcom/tencent/lbssearch/a/a/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 84
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 85
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->d:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v1, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/b$a;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/d/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->b()Lcom/tencent/lbssearch/a/a/d/c;

    .line 100
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/b$a;->d:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->c()Lcom/tencent/lbssearch/a/a/d/c;

    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/b$a;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
