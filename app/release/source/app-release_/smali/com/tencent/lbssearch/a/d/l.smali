.class public Lcom/tencent/lbssearch/a/d/l;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/d/l$a;,
        Lcom/tencent/lbssearch/a/d/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/tencent/lbssearch/a/d/q;

.field public c:Z


# direct methods
.method private constructor <init>(Lcom/tencent/lbssearch/a/d/q;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/l;->c:Z

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/l;->a:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/l;->b:Lcom/tencent/lbssearch/a/d/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/l;->c:Z

    .line 72
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/l;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/l;->b:Lcom/tencent/lbssearch/a/d/q;

    return-void
.end method

.method public static a(Lcom/tencent/lbssearch/a/d/q;)Lcom/tencent/lbssearch/a/d/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/d/q;",
            ")",
            "Lcom/tencent/lbssearch/a/d/l<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/tencent/lbssearch/a/d/l;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/d/l;-><init>(Lcom/tencent/lbssearch/a/d/q;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/tencent/lbssearch/a/d/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tencent/lbssearch/a/d/l<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/tencent/lbssearch/a/d/l;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/d/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/l;->b:Lcom/tencent/lbssearch/a/d/q;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
