.class public final Lcom/tencent/lbssearch/a/a/b/a/f;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/a/b/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/a/b/c;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/a/b/c;Z)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/f;->a:Lcom/tencent/lbssearch/a/a/b/c;

    .line 113
    iput-boolean p2, p0, Lcom/tencent/lbssearch/a/a/b/a/f;->b:Z

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/tencent/lbssearch/a/a/w<",
            "*>;"
        }
    .end annotation

    .line 141
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p1

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    sget-object p1, Lcom/tencent/lbssearch/a/a/b/a/l;->f:Lcom/tencent/lbssearch/a/a/w;

    :goto_1
    return-object p1
.end method

.method static synthetic a(Lcom/tencent/lbssearch/a/a/b/a/f;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/tencent/lbssearch/a/a/b/a/f;->b:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 11
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

    .line 117
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 119
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 120
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/tencent/lbssearch/a/a/b/a/f;->a(Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v7

    const/4 v2, 0x1

    .line 127
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v9

    .line 128
    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/b/a/f;->a:Lcom/tencent/lbssearch/a/a/b/c;

    invoke-virtual {v3, p2}, Lcom/tencent/lbssearch/a/a/b/c;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/b/h;

    move-result-object v10

    .line 132
    new-instance p2, Lcom/tencent/lbssearch/a/a/b/a/f$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/tencent/lbssearch/a/a/b/a/f$a;-><init>(Lcom/tencent/lbssearch/a/a/b/a/f;Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/w;Lcom/tencent/lbssearch/a/a/b/h;)V

    return-object p2
.end method
