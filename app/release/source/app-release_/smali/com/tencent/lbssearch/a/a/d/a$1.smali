.class final Lcom/tencent/lbssearch/a/a/d/a$1;
.super Lcom/tencent/lbssearch/a/a/b/e;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1554
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    instance-of v0, p1, Lcom/tencent/lbssearch/a/a/b/a/d;

    if-eqz v0, :cond_0

    .line 1557
    check-cast p1, Lcom/tencent/lbssearch/a/a/b/a/d;

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/b/a/d;->o()V

    return-void

    .line 1560
    :cond_0
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a(Lcom/tencent/lbssearch/a/a/d/a;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b(Lcom/tencent/lbssearch/a/a/d/a;)I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    .line 1565
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(Lcom/tencent/lbssearch/a/a/d/a;I)I

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 1567
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(Lcom/tencent/lbssearch/a/a/d/a;I)I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    .line 1569
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(Lcom/tencent/lbssearch/a/a/d/a;I)I

    :goto_0
    return-void

    .line 1571
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/d/a;->c(Lcom/tencent/lbssearch/a/a/d/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/lbssearch/a/a/d/a;->d(Lcom/tencent/lbssearch/a/a/d/a;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
