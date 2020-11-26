.class public final Lcom/tencent/lbssearch/a/a/b/a/h$a;
.super Lcom/tencent/lbssearch/a/a/w;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
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
.field final synthetic a:Lcom/tencent/lbssearch/a/a/b/a/h;

.field private final b:Lcom/tencent/lbssearch/a/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/a/b/a/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tencent/lbssearch/a/a/b/a/h;Lcom/tencent/lbssearch/a/a/b/h;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/a/b/a/h$b;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/h$a;->a:Lcom/tencent/lbssearch/a/a/b/a/h;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/h$a;->b:Lcom/tencent/lbssearch/a/a/b/h;

    .line 154
    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/b/a/h$a;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/lbssearch/a/a/b/a/h;Lcom/tencent/lbssearch/a/a/b/h;Ljava/util/Map;Lcom/tencent/lbssearch/a/a/b/a/h$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/lbssearch/a/a/b/a/h$a;-><init>(Lcom/tencent/lbssearch/a/a/b/a/h;Lcom/tencent/lbssearch/a/a/b/h;Ljava/util/Map;)V

    return-void
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

    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->d()Lcom/tencent/lbssearch/a/a/d/c;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/lbssearch/a/a/b/a/h$b;

    .line 194
    iget-boolean v2, v1, Lcom/tencent/lbssearch/a/a/b/a/h$b;->h:Z

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, v1, Lcom/tencent/lbssearch/a/a/b/a/h$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    .line 196
    invoke-virtual {v1, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/h$b;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->e()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 200
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
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

    .line 158
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h$a;->b:Lcom/tencent/lbssearch/a/a/b/h;

    invoke-interface {v0}, Lcom/tencent/lbssearch/a/a/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->c()V

    .line 167
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/a/h$a;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/lbssearch/a/a/b/a/h$b;

    if-eqz v1, :cond_2

    .line 170
    iget-boolean v2, v1, Lcom/tencent/lbssearch/a/a/b/a/h$b;->i:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/tencent/lbssearch/a/a/b/a/h$b;->a(Lcom/tencent/lbssearch/a/a/d/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->d()V

    return-object v0

    :catch_0
    move-exception p1

    .line 179
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 177
    new-instance v0, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
