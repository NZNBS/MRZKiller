.class public Lcom/tencent/lbssearch/a/a/c/a;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/reflect/Type;

.field final c:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 64
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/c/a;->a:Ljava/lang/Class;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->c:I

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 74
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->a:Ljava/lang/Class;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/tencent/lbssearch/a/a/c/a;->c:I

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;"
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/tencent/lbssearch/a/a/c/a;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 84
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 87
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 88
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/tencent/lbssearch/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Missing type parameter."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/tencent/lbssearch/a/a/c/a;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 285
    instance-of v0, p1, Lcom/tencent/lbssearch/a/a/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->b:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/tencent/lbssearch/a/a/c/a;

    iget-object p1, p1, Lcom/tencent/lbssearch/a/a/c/a;->b:Ljava/lang/reflect/Type;

    .line 286
    invoke-static {v0, p1}, Lcom/tencent/lbssearch/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
