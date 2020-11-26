.class public final Lcom/tencent/lbssearch/a/a/b/d;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/x;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/tencent/lbssearch/a/a/b/d;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/d;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/d;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/d;->a:Lcom/tencent/lbssearch/a/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 55
    iput-wide v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->b:D

    const/16 v0, 0x88

    .line 56
    iput v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->c:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->d:Z

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->f:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->g:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/a/a/c;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1}, Lcom/tencent/lbssearch/a/a/a/c;->a()D

    move-result-wide v0

    .line 236
    iget-wide v2, p0, Lcom/tencent/lbssearch/a/a/b/d;->b:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/tencent/lbssearch/a/a/a/c;Lcom/tencent/lbssearch/a/a/a/d;)Z
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/d;->a(Lcom/tencent/lbssearch/a/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/tencent/lbssearch/a/a/b/d;->a(Lcom/tencent/lbssearch/a/a/a/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/tencent/lbssearch/a/a/a/d;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/tencent/lbssearch/a/a/a/d;->a()D

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Lcom/tencent/lbssearch/a/a/b/d;->b:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 217
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/d;->c(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected a()Lcom/tencent/lbssearch/a/a/b/d;
    .locals 1

    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/b/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

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

    .line 113
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/tencent/lbssearch/a/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/tencent/lbssearch/a/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/d$1;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/lbssearch/a/a/b/d$1;-><init>(Lcom/tencent/lbssearch/a/a/b/d;ZZLcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 193
    iget-wide v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->b:D

    const/4 v2, 0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_0

    const-class v0, Lcom/tencent/lbssearch/a/a/a/c;

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/a/c;

    const-class v1, Lcom/tencent/lbssearch/a/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/tencent/lbssearch/a/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/tencent/lbssearch/a/a/b/d;->a(Lcom/tencent/lbssearch/a/a/a/c;Lcom/tencent/lbssearch/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    .line 206
    iget-object p2, p0, Lcom/tencent/lbssearch/a/a/b/d;->f:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/tencent/lbssearch/a/a/b/d;->g:Ljava/util/List;

    .line 207
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/b;

    .line 208
    invoke-interface {v0, p1}, Lcom/tencent/lbssearch/a/a/b;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    .line 151
    iget v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-wide v2, p0, Lcom/tencent/lbssearch/a/a/b/d;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/tencent/lbssearch/a/a/a/c;

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/a/c;

    const-class v2, Lcom/tencent/lbssearch/a/a/a/d;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/tencent/lbssearch/a/a/a/d;

    invoke-direct {p0, v0, v2}, Lcom/tencent/lbssearch/a/a/b/d;->a(Lcom/tencent/lbssearch/a/a/a/c;Lcom/tencent/lbssearch/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->e:Z

    if-eqz v0, :cond_5

    .line 165
    const-class v0, Lcom/tencent/lbssearch/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/a/a;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 166
    invoke-interface {v0}, Lcom/tencent/lbssearch/a/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/tencent/lbssearch/a/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    .line 171
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/d;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 175
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    .line 179
    iget-object p2, p0, Lcom/tencent/lbssearch/a/a/b/d;->f:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/tencent/lbssearch/a/a/b/d;->g:Ljava/util/List;

    .line 180
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 181
    new-instance v0, Lcom/tencent/lbssearch/a/a/c;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/c;-><init>(Ljava/lang/reflect/Field;)V

    .line 182
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/lbssearch/a/a/b;

    .line 183
    invoke-interface {p2, v0}, Lcom/tencent/lbssearch/a/a/b;->a(Lcom/tencent/lbssearch/a/a/c;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/b/d;->a()Lcom/tencent/lbssearch/a/a/b/d;

    move-result-object v0

    return-object v0
.end method
