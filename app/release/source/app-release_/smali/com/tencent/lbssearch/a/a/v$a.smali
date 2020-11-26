.class Lcom/tencent/lbssearch/a/a/v$a;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/tencent/lbssearch/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/s<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/tencent/lbssearch/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/c/a;ZLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    instance-of v0, p1, Lcom/tencent/lbssearch/a/a/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tencent/lbssearch/a/a/s;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/v$a;->d:Lcom/tencent/lbssearch/a/a/s;

    .line 121
    instance-of v2, p1, Lcom/tencent/lbssearch/a/a/k;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/tencent/lbssearch/a/a/k;

    :cond_1
    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/v$a;->e:Lcom/tencent/lbssearch/a/a/k;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 124
    :goto_2
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/a;->a(Z)V

    .line 125
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/v$a;->a:Lcom/tencent/lbssearch/a/a/c/a;

    .line 126
    iput-boolean p3, p0, Lcom/tencent/lbssearch/a/a/v$a;->b:Z

    .line 127
    iput-object p4, p0, Lcom/tencent/lbssearch/a/a/v$a;->c:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/c/a;ZLjava/lang/Class;Lcom/tencent/lbssearch/a/a/v$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/lbssearch/a/a/v$a;-><init>(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/c/a;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 8
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

    .line 132
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v$a;->a:Lcom/tencent/lbssearch/a/a/c/a;

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0, p2}, Lcom/tencent/lbssearch/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/v$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v$a;->a:Lcom/tencent/lbssearch/a/a/c/a;

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/v$a;->c:Ljava/lang/Class;

    .line 134
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 135
    new-instance v0, Lcom/tencent/lbssearch/a/a/v;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/v$a;->d:Lcom/tencent/lbssearch/a/a/s;

    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/v$a;->e:Lcom/tencent/lbssearch/a/a/k;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/lbssearch/a/a/v;-><init>(Lcom/tencent/lbssearch/a/a/s;Lcom/tencent/lbssearch/a/a/k;Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Lcom/tencent/lbssearch/a/a/x;Lcom/tencent/lbssearch/a/a/v$1;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
