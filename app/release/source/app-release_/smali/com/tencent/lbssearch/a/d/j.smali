.class public abstract Lcom/tencent/lbssearch/a/d/j;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/a/d/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/lbssearch/a/d/j<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/lbssearch/a/d/r$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/tencent/lbssearch/a/d/l$a;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/tencent/lbssearch/a/d/k;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/tencent/lbssearch/a/d/n;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/tencent/lbssearch/a/d/l$a;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-boolean v0, Lcom/tencent/lbssearch/a/d/r$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/lbssearch/a/d/r$a;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/d/r$a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->a:Lcom/tencent/lbssearch/a/d/r$a;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->h:Z

    .line 87
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->i:Z

    .line 90
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->j:Z

    .line 118
    iput p1, p0, Lcom/tencent/lbssearch/a/d/j;->b:I

    .line 119
    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/j;->c:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/tencent/lbssearch/a/d/j;->e:Lcom/tencent/lbssearch/a/d/l$a;

    .line 121
    new-instance p1, Lcom/tencent/lbssearch/a/d/c;

    invoke-direct {p1}, Lcom/tencent/lbssearch/a/d/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/d/j;->a(Lcom/tencent/lbssearch/a/d/n;)Lcom/tencent/lbssearch/a/d/j;

    .line 123
    invoke-static {p2}, Lcom/tencent/lbssearch/a/d/j;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/lbssearch/a/d/j;->d:I

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic b(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/r$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/lbssearch/a/d/j;->a:Lcom/tencent/lbssearch/a/d/r$a;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/tencent/lbssearch/a/d/j;->b:I

    return v0
.end method

.method public a(Lcom/tencent/lbssearch/a/d/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "TT;>;)I"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->o()Lcom/tencent/lbssearch/a/d/j$a;

    move-result-object v0

    .line 549
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/d/j;->o()Lcom/tencent/lbssearch/a/d/j$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->f:Ljava/lang/Integer;

    .line 554
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/tencent/lbssearch/a/d/j;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/d/j$a;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/d/j$a;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public final a(I)Lcom/tencent/lbssearch/a/d/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;"
        }
    .end annotation

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/j;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/tencent/lbssearch/a/d/k;)Lcom/tencent/lbssearch/a/d/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/k;",
            ")",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/j;->g:Lcom/tencent/lbssearch/a/d/k;

    return-object p0
.end method

.method public a(Lcom/tencent/lbssearch/a/d/n;)Lcom/tencent/lbssearch/a/d/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/n;",
            ")",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/j;->k:Lcom/tencent/lbssearch/a/d/n;

    return-object p0
.end method

.method protected abstract a(Lcom/tencent/lbssearch/a/d/h;)Lcom/tencent/lbssearch/a/d/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/h;",
            ")",
            "Lcom/tencent/lbssearch/a/d/l<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/tencent/lbssearch/a/d/q;)Lcom/tencent/lbssearch/a/d/q;
    .locals 0

    return-object p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 196
    sget-boolean v0, Lcom/tencent/lbssearch/a/d/r$a;->a:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->a:Lcom/tencent/lbssearch/a/d/r$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/lbssearch/a/d/r$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/tencent/lbssearch/a/d/j;->d:I

    return v0
.end method

.method public b(Lcom/tencent/lbssearch/a/d/q;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->e:Lcom/tencent/lbssearch/a/d/l$a;

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {v0, p1}, Lcom/tencent/lbssearch/a/d/l$a;->a(Lcom/tencent/lbssearch/a/d/q;)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->g:Lcom/tencent/lbssearch/a/d/k;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p0}, Lcom/tencent/lbssearch/a/d/k;->b(Lcom/tencent/lbssearch/a/d/j;)V

    .line 210
    :cond_0
    sget-boolean v0, Lcom/tencent/lbssearch/a/d/r$a;->a:Z

    if-eqz v0, :cond_2

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 215
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    new-instance v3, Lcom/tencent/lbssearch/a/d/j$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/tencent/lbssearch/a/d/j$1;-><init>(Lcom/tencent/lbssearch/a/d/j;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/j;->a:Lcom/tencent/lbssearch/a/d/r$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/tencent/lbssearch/a/d/r$a;->a(Ljava/lang/String;J)V

    .line 227
    iget-object p1, p0, Lcom/tencent/lbssearch/a/d/j;->a:Lcom/tencent/lbssearch/a/d/r$a;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/d/r$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/tencent/lbssearch/a/d/j;

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/d/j;->a(Lcom/tencent/lbssearch/a/d/j;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->h:Z

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/a;
        }
    .end annotation

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/a;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/a;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->j:Z

    return v0
.end method

.method public o()Lcom/tencent/lbssearch/a/d/j$a;
    .locals 1

    .line 465
    sget-object v0, Lcom/tencent/lbssearch/a/d/j$a;->b:Lcom/tencent/lbssearch/a/d/j$a;

    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->k:Lcom/tencent/lbssearch/a/d/n;

    invoke-interface {v0}, Lcom/tencent/lbssearch/a/d/n;->a()I

    move-result v0

    return v0
.end method

.method public q()Lcom/tencent/lbssearch/a/d/n;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->k:Lcom/tencent/lbssearch/a/d/n;

    return-object v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->i:Z

    return-void
.end method

.method public s()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/d/j;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/tencent/lbssearch/a/d/j;->h:Z

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/d/j;->o()Lcom/tencent/lbssearch/a/d/j$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/lbssearch/a/d/j;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
