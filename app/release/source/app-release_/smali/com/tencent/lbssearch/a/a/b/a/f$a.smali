.class final Lcom/tencent/lbssearch/a/a/b/a/f$a;
.super Lcom/tencent/lbssearch/a/a/w;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/b/a/f;

.field private final b:Lcom/tencent/lbssearch/a/a/f;

.field private final c:Ljava/lang/reflect/Type;

.field private final d:Ljava/lang/reflect/Type;

.field private final e:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/tencent/lbssearch/a/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/a/a/b/a/f;Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/w;Lcom/tencent/lbssearch/a/a/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TV;>;",
            "Lcom/tencent/lbssearch/a/a/b/h<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->a:Lcom/tencent/lbssearch/a/a/b/a/f;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->b:Lcom/tencent/lbssearch/a/a/f;

    .line 158
    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->c:Ljava/lang/reflect/Type;

    .line 159
    iput-object p5, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->d:Ljava/lang/reflect/Type;

    .line 160
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/a/k;

    invoke-direct {p1, p2, p4, p3}, Lcom/tencent/lbssearch/a/a/b/a/k;-><init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->e:Lcom/tencent/lbssearch/a/a/w;

    .line 162
    new-instance p1, Lcom/tencent/lbssearch/a/a/b/a/k;

    invoke-direct {p1, p2, p6, p5}, Lcom/tencent/lbssearch/a/a/b/a/k;-><init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->f:Lcom/tencent/lbssearch/a/a/w;

    .line 164
    iput-object p7, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->g:Lcom/tencent/lbssearch/a/a/b/h;

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/a/l;)Ljava/lang/String;
    .locals 1

    .line 253
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->o()Lcom/tencent/lbssearch/a/a/q;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/q;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/q;->b()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/q;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/q;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/q;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 262
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 264
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    .line 267
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/d/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->g:Lcom/tencent/lbssearch/a/a/b/h;

    invoke-interface {v1}, Lcom/tencent/lbssearch/a/a/b/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 176
    sget-object v2, Lcom/tencent/lbssearch/a/a/d/b;->a:Lcom/tencent/lbssearch/a/a/d/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 177
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 178
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 180
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->e:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->f:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v2, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    goto :goto_0

    .line 184
    :cond_1
    new-instance p1, Lcom/tencent/lbssearch/a/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    goto :goto_2

    .line 190
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->c()V

    .line 191
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    sget-object v0, Lcom/tencent/lbssearch/a/a/b/e;->a:Lcom/tencent/lbssearch/a/a/b/e;

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/b/e;->a(Lcom/tencent/lbssearch/a/a/d/a;)V

    .line 193
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->e:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->f:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v2, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 197
    :cond_4
    new-instance p1, Lcom/tencent/lbssearch/a/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->d()V

    :goto_2
    return-object v1
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/f$a;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/d/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->a:Lcom/tencent/lbssearch/a/a/b/a/f;

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a/b/a/f;->a(Lcom/tencent/lbssearch/a/a/b/a/f;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->d()Lcom/tencent/lbssearch/a/a/d/c;

    .line 213
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    .line 215
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->f:Lcom/tencent/lbssearch/a/a/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->e()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 222
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 226
    iget-object v5, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->e:Lcom/tencent/lbssearch/a/a/w;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/lbssearch/a/a/w;->a(Ljava/lang/Object;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object v5

    .line 227
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v5}, Lcom/tencent/lbssearch/a/a/l;->i()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/tencent/lbssearch/a/a/l;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 233
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->b()Lcom/tencent/lbssearch/a/a/d/c;

    .line 234
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    .line 235
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->b()Lcom/tencent/lbssearch/a/a/d/c;

    .line 236
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/lbssearch/a/a/l;

    invoke-static {p2, p1}, Lcom/tencent/lbssearch/a/a/b/j;->a(Lcom/tencent/lbssearch/a/a/l;Lcom/tencent/lbssearch/a/a/d/c;)V

    .line 237
    iget-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->f:Lcom/tencent/lbssearch/a/a/w;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->c()Lcom/tencent/lbssearch/a/a/d/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 240
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->c()Lcom/tencent/lbssearch/a/a/d/c;

    goto :goto_6

    .line 242
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->d()Lcom/tencent/lbssearch/a/a/d/c;

    .line 243
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/lbssearch/a/a/l;

    .line 245
    invoke-direct {p0, p2}, Lcom/tencent/lbssearch/a/a/b/a/f$a;->a(Lcom/tencent/lbssearch/a/a/l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    .line 246
    iget-object p2, p0, Lcom/tencent/lbssearch/a/a/b/a/f$a;->f:Lcom/tencent/lbssearch/a/a/w;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 248
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->e()Lcom/tencent/lbssearch/a/a/d/c;

    :goto_6
    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/f$a;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
