.class public final Lcom/tencent/lbssearch/a/a/b/a/h;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/a/b/a/h$a;,
        Lcom/tencent/lbssearch/a/a/b/a/h$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/a/b/c;

.field private final b:Lcom/tencent/lbssearch/a/a/e;

.field private final c:Lcom/tencent/lbssearch/a/a/b/d;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/a/b/c;Lcom/tencent/lbssearch/a/a/e;Lcom/tencent/lbssearch/a/a/b/d;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->a:Lcom/tencent/lbssearch/a/a/b/c;

    .line 52
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->b:Lcom/tencent/lbssearch/a/a/e;

    .line 53
    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->c:Lcom/tencent/lbssearch/a/a/b/d;

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/tencent/lbssearch/a/a/c/a;ZZ)Lcom/tencent/lbssearch/a/a/b/a/h$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;ZZ)",
            "Lcom/tencent/lbssearch/a/a/b/a/h$b;"
        }
    .end annotation

    .line 79
    invoke-virtual {p4}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/i;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    .line 82
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/h$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move-object v6, p1

    move-object v7, p4

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/tencent/lbssearch/a/a/b/a/h$1;-><init>(Lcom/tencent/lbssearch/a/a/b/a/h;Ljava/lang/String;ZZLcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 61
    const-class v0, Lcom/tencent/lbssearch/a/a/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/a/b;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->b:Lcom/tencent/lbssearch/a/a/e;

    invoke-interface {v0, p1}, Lcom/tencent/lbssearch/a/a/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/lbssearch/a/a/a/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/a/b/a/h$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 103
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    .line 108
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 109
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v11, v0, :cond_4

    .line 110
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 111
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    aget-object v2, v12, v15

    const/4 v0, 0x1

    .line 112
    invoke-virtual {v7, v2, v0}, Lcom/tencent/lbssearch/a/a/b/a/h;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 113
    invoke-virtual {v7, v2, v14}, Lcom/tencent/lbssearch/a/a/b/a/h;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    goto :goto_2

    .line 117
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    invoke-virtual {v10}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/tencent/lbssearch/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 119
    invoke-direct {v7, v2}, Lcom/tencent/lbssearch/a/a/b/a/h;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 119
    invoke-direct/range {v0 .. v6}, Lcom/tencent/lbssearch/a/a/b/a/h;->a(Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/tencent/lbssearch/a/a/c/a;ZZ)Lcom/tencent/lbssearch/a/a/b/a/h$b;

    move-result-object v0

    .line 121
    iget-object v1, v0, Lcom/tencent/lbssearch/a/a/b/a/h$b;->g:Ljava/lang/String;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/b/a/h$b;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 123
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/tencent/lbssearch/a/a/b/a/h$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_3
    invoke-virtual {v10}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/tencent/lbssearch/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object v10

    .line 128
    invoke-virtual {v10}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v11

    goto :goto_0

    :cond_4
    return-object v8
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 4
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

    .line 66
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 68
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->a:Lcom/tencent/lbssearch/a/a/b/c;

    invoke-virtual {v1, p2}, Lcom/tencent/lbssearch/a/a/b/c;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/b/h;

    move-result-object v1

    .line 73
    new-instance v3, Lcom/tencent/lbssearch/a/a/b/a/h$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/lbssearch/a/a/b/a/h;->a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/tencent/lbssearch/a/a/b/a/h$a;-><init>(Lcom/tencent/lbssearch/a/a/b/a/h;Lcom/tencent/lbssearch/a/a/b/h;Ljava/util/Map;Lcom/tencent/lbssearch/a/a/b/a/h$1;)V

    return-object v3
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->c:Lcom/tencent/lbssearch/a/a/b/d;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/lbssearch/a/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h;->c:Lcom/tencent/lbssearch/a/a/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
