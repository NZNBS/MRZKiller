.class final Lc/t/m/g/ak$d;
.super Lc/t/m/g/ak$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/t/m/g/as$a;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field private synthetic g:Lc/t/m/g/ak;


# direct methods
.method public constructor <init>(Lc/t/m/g/ak;ZZ)V
    .locals 1

    iput-object p1, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/t/m/g/ak$a;-><init>(Lc/t/m/g/ak;B)V

    iput-boolean v0, p0, Lc/t/m/g/ak$d;->d:Z

    iput-boolean p2, p0, Lc/t/m/g/ak$d;->b:Z

    iput-boolean p3, p0, Lc/t/m/g/ak$d;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-super {p0}, Lc/t/m/g/ak$a;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/ak$d;->a:Z

    iget-boolean v1, p0, Lc/t/m/g/ak$d;->b:Z

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iget-object v1, v1, Lc/t/m/g/ak;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    if-ge v7, v2, :cond_1

    iget-object v8, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iget-object v8, v8, Lc/t/m/g/ak;->f:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lc/t/m/g/as$a;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v8}, Lc/t/m/g/as$a;-><init>(JLjava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iget-object v2, v2, Lc/t/m/g/ak;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iget-object v1, v1, Lc/t/m/g/ak;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lc/t/m/g/ak$d;->a:Z

    :cond_3
    move-object v3, v5

    goto :goto_2

    :cond_4
    const/16 v1, 0x2710

    const/16 v5, 0x3e8

    const-string v6, "report_clear_db_num"

    invoke-static {v6, v4, v1, v5}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    iget-object v5, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    invoke-virtual {v5}, Lc/t/m/g/ak;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/t/m/g/as;->a(Ljava/lang/String;)Lc/t/m/g/as;

    move-result-object v5

    invoke-virtual {v5, v1}, Lc/t/m/g/as;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    invoke-virtual {v1}, Lc/t/m/g/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/t/m/g/as;->a(Ljava/lang/String;)Lc/t/m/g/as;

    move-result-object v1

    invoke-virtual {v1}, Lc/t/m/g/as;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_6

    iput-boolean v4, p0, Lc/t/m/g/ak$d;->a:Z

    :cond_6
    :goto_2
    iput-object v3, p0, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    iget-object v1, p0, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    iget-object v2, p0, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lc/t/m/g/ak$d;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/as$a;

    iget-object v2, v2, Lc/t/m/g/as$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_report_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v4}, Lc/t/m/g/ce;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    iput v3, p0, Lc/t/m/g/ak$d;->f:I

    invoke-static {v0}, Lc/t/m/g/u;->a([B)[B

    move-result-object v2

    iget-object v0, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iget-object v1, v0, Lc/t/m/g/ak;->d:Lc/t/m/g/ap;

    iget-boolean v4, p0, Lc/t/m/g/ak$d;->b:Z

    iget-object v0, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iget-object v6, v0, Lc/t/m/g/ak;->k:Lc/t/m/g/ap$a;

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lc/t/m/g/ap;->a([BIZLjava/lang/Object;Lc/t/m/g/ap$a;)Z

    return-void

    :cond_a
    :goto_4
    iget-object v1, p0, Lc/t/m/g/ak$d;->g:Lc/t/m/g/ak;

    iput-boolean v0, v1, Lc/t/m/g/ak;->g:Z

    return-void
.end method
