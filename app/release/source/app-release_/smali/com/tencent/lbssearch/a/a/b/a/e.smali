.class public final Lcom/tencent/lbssearch/a/a/b/a/e;
.super Lcom/tencent/lbssearch/a/a/d/c;
.source "JsonTreeWriter.java"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/tencent/lbssearch/a/a/q;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/a/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/lbssearch/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/e$1;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/a/e;->a:Ljava/io/Writer;

    .line 47
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/a/e;->b:Lcom/tencent/lbssearch/a/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    sget-object v0, Lcom/tencent/lbssearch/a/a/b/a/e;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/tencent/lbssearch/a/a/n;->a:Lcom/tencent/lbssearch/a/a/n;

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->e:Lcom/tencent/lbssearch/a/a/l;

    return-void
.end method

.method private a(Lcom/tencent/lbssearch/a/a/l;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->i()Lcom/tencent/lbssearch/a/a/l;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/o;

    .line 80
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/a/l;)V

    :cond_1
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->e:Lcom/tencent/lbssearch/a/a/l;

    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->i()Lcom/tencent/lbssearch/a/a/l;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/tencent/lbssearch/a/a/i;

    if-eqz v1, :cond_4

    .line 88
    check-cast v0, Lcom/tencent/lbssearch/a/a/i;

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/i;->a(Lcom/tencent/lbssearch/a/a/l;)V

    :goto_0
    return-void

    .line 90
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private i()Lcom/tencent/lbssearch/a/a/l;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/l;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/tencent/lbssearch/a/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/tencent/lbssearch/a/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->f()Lcom/tencent/lbssearch/a/a/d/c;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    :goto_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->i()Lcom/tencent/lbssearch/a/a/l;

    move-result-object v0

    .line 138
    instance-of v0, v0, Lcom/tencent/lbssearch/a/a/o;

    if-eqz v0, :cond_0

    .line 139
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    return-object p0

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Z)Lcom/tencent/lbssearch/a/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    return-object p0
.end method

.method public a()Lcom/tencent/lbssearch/a/a/l;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->e:Lcom/tencent/lbssearch/a/a/l;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/tencent/lbssearch/a/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/tencent/lbssearch/a/a/i;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/i;-><init>()V

    .line 97
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    .line 98
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->f()Lcom/tencent/lbssearch/a/a/d/c;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    return-object p0
.end method

.method public c()Lcom/tencent/lbssearch/a/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->i()Lcom/tencent/lbssearch/a/a/l;

    move-result-object v0

    .line 107
    instance-of v0, v0, Lcom/tencent/lbssearch/a/a/i;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    sget-object v1, Lcom/tencent/lbssearch/a/a/b/a/e;->b:Lcom/tencent/lbssearch/a/a/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/tencent/lbssearch/a/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/tencent/lbssearch/a/a/o;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/o;-><init>()V

    .line 116
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    .line 117
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Lcom/tencent/lbssearch/a/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/a/e;->i()Lcom/tencent/lbssearch/a/a/l;

    move-result-object v0

    .line 126
    instance-of v0, v0, Lcom/tencent/lbssearch/a/a/o;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/tencent/lbssearch/a/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/tencent/lbssearch/a/a/n;->a:Lcom/tencent/lbssearch/a/a/n;

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/b/a/e;->a(Lcom/tencent/lbssearch/a/a/l;)V

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
