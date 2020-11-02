.class final Lcom/tencent/lbssearch/a/a/v;
.super Lcom/tencent/lbssearch/a/a/w;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/a/v$a;
    }
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
.field private final a:Lcom/tencent/lbssearch/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/lbssearch/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/tencent/lbssearch/a/a/f;

.field private final d:Lcom/tencent/lbssearch/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/tencent/lbssearch/a/a/x;

.field private f:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tencent/lbssearch/a/a/s;Lcom/tencent/lbssearch/a/a/k;Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Lcom/tencent/lbssearch/a/a/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/s<",
            "TT;>;",
            "Lcom/tencent/lbssearch/a/a/k<",
            "TT;>;",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;",
            "Lcom/tencent/lbssearch/a/a/x;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/v;->a:Lcom/tencent/lbssearch/a/a/s;

    .line 45
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/v;->b:Lcom/tencent/lbssearch/a/a/k;

    .line 46
    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/v;->c:Lcom/tencent/lbssearch/a/a/f;

    .line 47
    iput-object p4, p0, Lcom/tencent/lbssearch/a/a/v;->d:Lcom/tencent/lbssearch/a/a/c/a;

    .line 48
    iput-object p5, p0, Lcom/tencent/lbssearch/a/a/v;->e:Lcom/tencent/lbssearch/a/a/x;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/lbssearch/a/a/s;Lcom/tencent/lbssearch/a/a/k;Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Lcom/tencent/lbssearch/a/a/x;Lcom/tencent/lbssearch/a/a/v$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/tencent/lbssearch/a/a/v;-><init>(Lcom/tencent/lbssearch/a/a/s;Lcom/tencent/lbssearch/a/a/k;Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Lcom/tencent/lbssearch/a/a/x;)V

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

    .line 76
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v;->f:Lcom/tencent/lbssearch/a/a/w;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v;->c:Lcom/tencent/lbssearch/a/a/f;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/v;->e:Lcom/tencent/lbssearch/a/a/x;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/v;->d:Lcom/tencent/lbssearch/a/a/c/a;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/x;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/v;->f:Lcom/tencent/lbssearch/a/a/w;

    :goto_0
    return-object v0
.end method

.method public static a(Lcom/tencent/lbssearch/a/a/c/a;Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tencent/lbssearch/a/a/x;"
        }
    .end annotation

    .line 86
    new-instance v6, Lcom/tencent/lbssearch/a/a/v$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/lbssearch/a/a/v$a;-><init>(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/c/a;ZLjava/lang/Class;Lcom/tencent/lbssearch/a/a/v$1;)V

    return-object v6
.end method

.method public static b(Lcom/tencent/lbssearch/a/a/c/a;Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tencent/lbssearch/a/a/x;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 97
    :goto_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/v$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/lbssearch/a/a/v$a;-><init>(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/c/a;ZLjava/lang/Class;Lcom/tencent/lbssearch/a/a/v$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 3
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

    .line 63
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v;->a:Lcom/tencent/lbssearch/a/a/s;

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/v;->a()Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/v;->d:Lcom/tencent/lbssearch/a/a/c/a;

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/v;->c:Lcom/tencent/lbssearch/a/a/f;

    iget-object v2, v2, Lcom/tencent/lbssearch/a/a/f;->b:Lcom/tencent/lbssearch/a/a/r;

    invoke-interface {v0, p2, v1, v2}, Lcom/tencent/lbssearch/a/a/s;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/r;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p2

    .line 72
    invoke-static {p2, p1}, Lcom/tencent/lbssearch/a/a/b/j;->a(Lcom/tencent/lbssearch/a/a/l;Lcom/tencent/lbssearch/a/a/d/c;)V

    return-void
.end method

.method public b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 3
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

    .line 52
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v;->b:Lcom/tencent/lbssearch/a/a/k;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/v;->a()Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/j;->a(Lcom/tencent/lbssearch/a/a/d/a;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v;->b:Lcom/tencent/lbssearch/a/a/k;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/v;->d:Lcom/tencent/lbssearch/a/a/c/a;

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/v;->c:Lcom/tencent/lbssearch/a/a/f;

    iget-object v2, v2, Lcom/tencent/lbssearch/a/a/f;->a:Lcom/tencent/lbssearch/a/a/j;

    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/lbssearch/a/a/k;->b(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
