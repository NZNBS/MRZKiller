.class public final Lcom/tencent/lbssearch/a/a/f;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/a/f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/tencent/lbssearch/a/a/j;

.field final b:Lcom/tencent/lbssearch/a/a/r;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;",
            "Lcom/tencent/lbssearch/a/a/f$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "*>;",
            "Lcom/tencent/lbssearch/a/a/w<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/a/a/x;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/tencent/lbssearch/a/a/b/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 175
    sget-object v1, Lcom/tencent/lbssearch/a/a/b/d;->a:Lcom/tencent/lbssearch/a/a/b/d;

    sget-object v2, Lcom/tencent/lbssearch/a/a/d;->a:Lcom/tencent/lbssearch/a/a/d;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v10, Lcom/tencent/lbssearch/a/a/u;->a:Lcom/tencent/lbssearch/a/a/u;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 175
    invoke-direct/range {v0 .. v11}, Lcom/tencent/lbssearch/a/a/f;-><init>(Lcom/tencent/lbssearch/a/a/b/d;Lcom/tencent/lbssearch/a/a/e;Ljava/util/Map;ZZZZZZLcom/tencent/lbssearch/a/a/u;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/tencent/lbssearch/a/a/b/d;Lcom/tencent/lbssearch/a/a/e;Ljava/util/Map;ZZZZZZLcom/tencent/lbssearch/a/a/u;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/b/d;",
            "Lcom/tencent/lbssearch/a/a/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/tencent/lbssearch/a/a/h<",
            "*>;>;ZZZZZZ",
            "Lcom/tencent/lbssearch/a/a/u;",
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/a/a/x;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->c:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->d:Ljava/util/Map;

    .line 124
    new-instance v0, Lcom/tencent/lbssearch/a/a/f$1;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/f$1;-><init>(Lcom/tencent/lbssearch/a/a/f;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->a:Lcom/tencent/lbssearch/a/a/j;

    .line 131
    new-instance v0, Lcom/tencent/lbssearch/a/a/f$2;

    invoke-direct {v0, p0}, Lcom/tencent/lbssearch/a/a/f$2;-><init>(Lcom/tencent/lbssearch/a/a/f;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->b:Lcom/tencent/lbssearch/a/a/r;

    .line 187
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/c;

    invoke-direct {v0, p3}, Lcom/tencent/lbssearch/a/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->f:Lcom/tencent/lbssearch/a/a/b/c;

    .line 188
    iput-boolean p4, p0, Lcom/tencent/lbssearch/a/a/f;->g:Z

    .line 189
    iput-boolean p6, p0, Lcom/tencent/lbssearch/a/a/f;->i:Z

    .line 190
    iput-boolean p7, p0, Lcom/tencent/lbssearch/a/a/f;->h:Z

    .line 191
    iput-boolean p8, p0, Lcom/tencent/lbssearch/a/a/f;->j:Z

    .line 193
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->Q:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/g;->a:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {p3, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->x:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->m:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->g:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->i:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->k:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object p4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    .line 212
    invoke-direct {p0, p10}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/u;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p7

    .line 211
    invoke-static {p4, p6, p7}, Lcom/tencent/lbssearch/a/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/tencent/lbssearch/a/a/w;)Lcom/tencent/lbssearch/a/a/x;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Double;

    .line 214
    invoke-direct {p0, p9}, Lcom/tencent/lbssearch/a/a/f;->a(Z)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p7

    .line 213
    invoke-static {p4, p6, p7}, Lcom/tencent/lbssearch/a/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/tencent/lbssearch/a/a/w;)Lcom/tencent/lbssearch/a/a/x;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Float;

    .line 216
    invoke-direct {p0, p9}, Lcom/tencent/lbssearch/a/a/f;->b(Z)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p7

    .line 215
    invoke-static {p4, p6, p7}, Lcom/tencent/lbssearch/a/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/tencent/lbssearch/a/a/w;)Lcom/tencent/lbssearch/a/a/x;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->r:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->t:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->z:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->B:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lcom/tencent/lbssearch/a/a/b/a/l;->v:Lcom/tencent/lbssearch/a/a/w;

    invoke-static {p4, p6}, Lcom/tencent/lbssearch/a/a/b/a/l;->a(Ljava/lang/Class;Lcom/tencent/lbssearch/a/a/w;)Lcom/tencent/lbssearch/a/a/x;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lcom/tencent/lbssearch/a/a/b/a/l;->w:Lcom/tencent/lbssearch/a/a/w;

    invoke-static {p4, p6}, Lcom/tencent/lbssearch/a/a/b/a/l;->a(Ljava/lang/Class;Lcom/tencent/lbssearch/a/a/w;)Lcom/tencent/lbssearch/a/a/x;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->D:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->F:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->J:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->O:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->H:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->d:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/c;->a:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->M:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/j;->a:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/i;->a:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->K:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/a;->a:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->R:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object p4, Lcom/tencent/lbssearch/a/a/b/a/l;->b:Lcom/tencent/lbssearch/a/a/x;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance p4, Lcom/tencent/lbssearch/a/a/b/a/b;

    invoke-direct {p4, v0}, Lcom/tencent/lbssearch/a/a/b/a/b;-><init>(Lcom/tencent/lbssearch/a/a/b/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance p4, Lcom/tencent/lbssearch/a/a/b/a/f;

    invoke-direct {p4, v0, p5}, Lcom/tencent/lbssearch/a/a/b/a/f;-><init>(Lcom/tencent/lbssearch/a/a/b/c;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance p4, Lcom/tencent/lbssearch/a/a/b/a/h;

    invoke-direct {p4, v0, p2, p1}, Lcom/tencent/lbssearch/a/a/b/a/h;-><init>(Lcom/tencent/lbssearch/a/a/b/c;Lcom/tencent/lbssearch/a/a/e;Lcom/tencent/lbssearch/a/a/b/d;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/f;->e:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/a/u;)Lcom/tencent/lbssearch/a/a/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/a/u;",
            ")",
            "Lcom/tencent/lbssearch/a/a/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/tencent/lbssearch/a/a/u;->a:Lcom/tencent/lbssearch/a/a/u;

    if-ne p1, v0, :cond_0

    .line 305
    sget-object p1, Lcom/tencent/lbssearch/a/a/b/a/l;->n:Lcom/tencent/lbssearch/a/a/w;

    return-object p1

    .line 307
    :cond_0
    new-instance p1, Lcom/tencent/lbssearch/a/a/f$5;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/f$5;-><init>(Lcom/tencent/lbssearch/a/a/f;)V

    return-object p1
.end method

.method private a(Z)Lcom/tencent/lbssearch/a/a/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tencent/lbssearch/a/a/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 249
    sget-object p1, Lcom/tencent/lbssearch/a/a/b/a/l;->p:Lcom/tencent/lbssearch/a/a/w;

    return-object p1

    .line 251
    :cond_0
    new-instance p1, Lcom/tencent/lbssearch/a/a/f$3;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/f$3;-><init>(Lcom/tencent/lbssearch/a/a/f;)V

    return-object p1
.end method

.method private a(D)V
    .locals 2

    .line 296
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " behavior, use GsonBuilder.serializeSpecialDoubleValues() method."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/tencent/lbssearch/a/a/f;D)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/f;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/d/a;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 776
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object p0

    sget-object p1, Lcom/tencent/lbssearch/a/a/d/b;->j:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    new-instance p0, Lcom/tencent/lbssearch/a/a/m;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/m;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/tencent/lbssearch/a/a/d/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 782
    new-instance p1, Lcom/tencent/lbssearch/a/a/m;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/m;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 780
    new-instance p1, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Z)Lcom/tencent/lbssearch/a/a/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tencent/lbssearch/a/a/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 273
    sget-object p1, Lcom/tencent/lbssearch/a/a/b/a/l;->o:Lcom/tencent/lbssearch/a/a/w;

    return-object p1

    .line 275
    :cond_0
    new-instance p1, Lcom/tencent/lbssearch/a/a/f$4;

    invoke-direct {p1, p0}, Lcom/tencent/lbssearch/a/a/f$4;-><init>(Lcom/tencent/lbssearch/a/a/f;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/w;

    if-eqz v0, :cond_0

    return-object v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 347
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/lbssearch/a/a/f$a;

    if-eqz v2, :cond_2

    return-object v2

    .line 353
    :cond_2
    :try_start_0
    new-instance v2, Lcom/tencent/lbssearch/a/a/f$a;

    invoke-direct {v2}, Lcom/tencent/lbssearch/a/a/f$a;-><init>()V

    .line 354
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/f;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/lbssearch/a/a/x;

    .line 357
    invoke-interface {v4, p0, p1}, Lcom/tencent/lbssearch/a/a/x;->a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 359
    invoke-virtual {v2, v4}, Lcom/tencent/lbssearch/a/a/f$a;->a(Lcom/tencent/lbssearch/a/a/w;)V

    .line 360
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/f;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 369
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    .line 364
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 366
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 369
    iget-object p1, p0, Lcom/tencent/lbssearch/a/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v2
.end method

.method public a(Lcom/tencent/lbssearch/a/a/x;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/x;",
            "Lcom/tencent/lbssearch/a/a/c/a<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/lbssearch/a/a/x;

    if-nez v1, :cond_1

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v2, p0, p2}, Lcom/tencent/lbssearch/a/a/x;->a(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 436
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/tencent/lbssearch/a/a/w<",
            "TT;>;"
        }
    .end annotation

    .line 446
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/c/a;->b(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/m;,
            Lcom/tencent/lbssearch/a/a/t;
        }
    .end annotation

    .line 797
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->p()Z

    move-result v0

    const/4 v1, 0x1

    .line 798
    invoke-virtual {p1, v1}, Lcom/tencent/lbssearch/a/a/d/a;->a(Z)V

    .line 800
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    const/4 v1, 0x0

    .line 802
    invoke-static {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/tencent/lbssearch/a/a/c/a;

    move-result-object p2

    .line 803
    invoke-virtual {p0, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p2

    .line 804
    invoke-virtual {p2, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 819
    :try_start_1
    new-instance v1, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v1, p2}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 816
    new-instance v1, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v1, p2}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 821
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(Z)V

    return-object p2

    .line 814
    :cond_0
    :try_start_2
    new-instance v1, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v1, p2}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(Z)V

    throw p2
.end method

.method public a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/lbssearch/a/a/l;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/t;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 869
    :cond_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/d;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/b/a/d;-><init>(Lcom/tencent/lbssearch/a/a/l;)V

    invoke-virtual {p0, v0, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/m;,
            Lcom/tencent/lbssearch/a/a/t;
        }
    .end annotation

    .line 768
    new-instance v0, Lcom/tencent/lbssearch/a/a/d/a;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/d/a;-><init>(Ljava/io/Reader;)V

    .line 769
    invoke-virtual {p0, v0, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 770
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/f;->a(Ljava/lang/Object;Lcom/tencent/lbssearch/a/a/d/a;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/t;
        }
    .end annotation

    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 691
    invoke-static {p2}, Lcom/tencent/lbssearch/a/a/b/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/t;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 717
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0, v0, p2}, Lcom/tencent/lbssearch/a/a/f;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/lbssearch/a/a/f;->g:Z

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/f;->f:Lcom/tencent/lbssearch/a/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
