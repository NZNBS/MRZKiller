.class public final Lcom/tencent/lbssearch/a/a/b/a/a;
.super Lcom/tencent/lbssearch/a/a/w;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/lbssearch/a/a/x;


# instance fields
.field private final b:Lcom/tencent/lbssearch/a/a/f;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/a$1;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/a/a$1;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/a/a;->a:Lcom/tencent/lbssearch/a/a/x;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/a;->b:Lcom/tencent/lbssearch/a/a/f;

    .line 60
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/k;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/lbssearch/a/a/b/a/k;-><init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/a;->d:Lcom/tencent/lbssearch/a/a/w;

    .line 62
    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/b/a/a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->b()Lcom/tencent/lbssearch/a/a/d/c;

    const/4 v0, 0x0

    .line 93
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 94
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/b/a/a;->d:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v3, p1, v2}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->c()Lcom/tencent/lbssearch/a/a/d/c;

    return-void
.end method

.method public b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/a;->d:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v1, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    .line 78
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/a;->c:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method
