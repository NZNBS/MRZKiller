.class public final Lcom/tencent/lbssearch/a/a/b/c;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/tencent/lbssearch/a/a/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/tencent/lbssearch/a/a/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 97
    :cond_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/c$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/lbssearch/a/a/b/c$5;-><init>(Lcom/tencent/lbssearch/a/a/b/c;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "TT;>;"
        }
    .end annotation

    .line 128
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-class p1, Ljava/util/SortedSet;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$6;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$6;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    .line 135
    :cond_0
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$7;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$7;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    .line 141
    :cond_1
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$8;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$8;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    .line 148
    :cond_2
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$9;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$9;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    .line 156
    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 158
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$10;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$10;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    .line 163
    :cond_4
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_5

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 164
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object p1

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 165
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$11;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$11;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    .line 171
    :cond_5
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$2;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/b/c$2;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "TT;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/c$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/lbssearch/a/a/b/c$3;-><init>(Lcom/tencent/lbssearch/a/a/b/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/b/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "TT;>;"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object p1

    .line 56
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/lbssearch/a/a/h;

    if-eqz v1, :cond_0

    .line 58
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/lbssearch/a/a/b/c$1;-><init>(Lcom/tencent/lbssearch/a/a/b/c;Lcom/tencent/lbssearch/a/a/h;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/c;->a:Ljava/util/Map;

    .line 68
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/lbssearch/a/a/h;

    if-eqz v1, :cond_1

    .line 70
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/c$4;

    invoke-direct {p1, p0, v1, v0}, Lcom/tencent/lbssearch/a/a/b/c$4;-><init>(Lcom/tencent/lbssearch/a/a/b/c;Lcom/tencent/lbssearch/a/a/h;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/c;->a(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 82
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/tencent/lbssearch/a/a/b/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 88
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/tencent/lbssearch/a/a/b/c;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
