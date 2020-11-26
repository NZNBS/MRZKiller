.class public Lcom/tencent/lbssearch/a/a/b/g;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/a/b/g$b;,
        Lcom/tencent/lbssearch/a/a/b/g$a;,
        Lcom/tencent/lbssearch/a/a/b/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/lbssearch/a/a/b/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/lbssearch/a/a/b/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/lbssearch/a/a/b/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/lbssearch/a/a/b/g;)Lcom/tencent/lbssearch/a/a/b/g$c;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/lbssearch/a/a/b/g;->c:Lcom/tencent/lbssearch/a/a/b/g$c;

    return-object p0
.end method

.method private a(Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 112
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)Z

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 114
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    if-eq p1, v2, :cond_5

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g$c;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v2

    if-ne v2, v0, :cond_5

    .line 115
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 116
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 118
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 119
    invoke-static {v2, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 120
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 121
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 124
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 128
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 129
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    goto/16 :goto_0

    .line 132
    :cond_2
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-ne v3, v0, :cond_3

    .line 134
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 135
    invoke-static {v2, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 136
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 137
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    goto/16 :goto_0

    .line 139
    :cond_3
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 140
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 143
    :cond_4
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 144
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 145
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    goto/16 :goto_0

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)Z

    return-void
.end method

.method private static a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 170
    invoke-static {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)Z

    :cond_0
    return-void
.end method

.method private static b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 83
    :goto_0
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 85
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    goto :goto_1

    :cond_0
    if-lez v1, :cond_4

    .line 87
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    .line 95
    iget v2, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    .line 98
    new-instance v2, Lcom/tencent/lbssearch/a/a/b/g$c;

    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/b/g;->d:Lcom/tencent/lbssearch/a/a/b/g$c;

    invoke-direct {v2, v0, v3, p1, p2}, Lcom/tencent/lbssearch/a/a/b/g$c;-><init>(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;Ljava/lang/Comparable;Ljava/lang/Object;)V

    if-gez v1, :cond_1

    .line 100
    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_2

    :cond_1
    if-lez v1, :cond_2

    .line 102
    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 105
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/g;->d:Lcom/tencent/lbssearch/a/a/b/g$c;

    invoke-static {p1, v2}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 106
    iput-object v2, p0, Lcom/tencent/lbssearch/a/a/b/g;->d:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 107
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    const/4 p1, 0x0

    return-object p1

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 90
    invoke-virtual {v0, p2}, Lcom/tencent/lbssearch/a/a/b/g$c;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private c(Ljava/lang/Comparable;)Lcom/tencent/lbssearch/a/a/b/g$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 391
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    :goto_0
    if-eqz v0, :cond_2

    .line 392
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 394
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 396
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 165
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static f(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p0

    .line 179
    :goto_0
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0

    .line 184
    :cond_2
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    :goto_1
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    if-eqz p0, :cond_3

    .line 186
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 188
    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private g(Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 196
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 198
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 202
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 203
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 205
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 209
    :goto_0
    invoke-static {v0, p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 210
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    :cond_3
    return-void
.end method

.method private h(Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 216
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 218
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 221
    :cond_0
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 222
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 223
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 225
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 229
    :goto_0
    invoke-static {v0, p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 230
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    :cond_3
    return-void
.end method

.method private i(Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 248
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->f(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 251
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->f(Lcom/tencent/lbssearch/a/a/b/g$c;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 258
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 259
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    if-nez v2, :cond_2

    .line 260
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_1

    .line 261
    :cond_2
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 262
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_1

    .line 264
    :cond_3
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 268
    :goto_1
    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 269
    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 270
    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 273
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 274
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/g;->k(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    goto :goto_3

    .line 276
    :cond_4
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-nez v0, :cond_5

    .line 277
    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_3

    .line 279
    :cond_5
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 280
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->k(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 283
    :cond_6
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 284
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 285
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    goto :goto_2

    .line 286
    :cond_7
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 287
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->b(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 289
    :cond_8
    :goto_2
    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g$c;->d(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    :cond_9
    :goto_3
    return-void
.end method

.method private j(Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->c:Lcom/tencent/lbssearch/a/a/b/g$c;

    if-ne p1, v0, :cond_0

    .line 297
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->c:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->d:Lcom/tencent/lbssearch/a/a/b/g$c;

    if-ne p1, v0, :cond_1

    .line 300
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->d:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 303
    :cond_1
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 304
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 306
    invoke-static {v0, p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->c(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    :cond_2
    if-eqz p1, :cond_3

    .line 309
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/b/g$c;->e(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    :cond_3
    return-void
.end method

.method private k(Lcom/tencent/lbssearch/a/a/b/g$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/g$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 315
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 316
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 319
    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 320
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 321
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/g;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 322
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 325
    :cond_0
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 328
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 331
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 332
    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 333
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/g;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 334
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 336
    :cond_2
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 337
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 338
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 339
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 340
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    goto/16 :goto_0

    .line 343
    :cond_3
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 345
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-ne v3, v2, :cond_4

    .line 346
    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 347
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 348
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/g;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 349
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 352
    :cond_4
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 353
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 354
    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 355
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    goto/16 :goto_0

    .line 357
    :cond_5
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 358
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->e(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 359
    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 360
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/g;->g(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 361
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    .line 363
    :cond_6
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/lbssearch/a/a/b/g;->c(Lcom/tencent/lbssearch/a/a/b/g$c;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 364
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 365
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/g;->d(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    .line 366
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/g;->b(Lcom/tencent/lbssearch/a/a/b/g$c;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->h(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 367
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    goto/16 :goto_0

    .line 372
    :cond_7
    invoke-static {p1, v1}, Lcom/tencent/lbssearch/a/a/b/g;->a(Lcom/tencent/lbssearch/a/a/b/g$c;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->c(Ljava/lang/Comparable;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/tencent/lbssearch/a/a/b/g$c;-><init>(Lcom/tencent/lbssearch/a/a/b/g$c;Lcom/tencent/lbssearch/a/a/b/g$c;Ljava/lang/Comparable;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->b:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 67
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->c:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 68
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->d:Lcom/tencent/lbssearch/a/a/b/g$c;

    .line 69
    iget p1, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    return-object v1

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/g;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->c(Ljava/lang/Comparable;)Lcom/tencent/lbssearch/a/a/b/g$c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 239
    :cond_0
    iget v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    .line 240
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/b/g$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 241
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->j(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/g;->i(Lcom/tencent/lbssearch/a/a/b/g$c;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/g$a;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/b/g$a;-><init>(Lcom/tencent/lbssearch/a/a/b/g;)V

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/g;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/tencent/lbssearch/a/a/b/g;->a:I

    return v0
.end method
