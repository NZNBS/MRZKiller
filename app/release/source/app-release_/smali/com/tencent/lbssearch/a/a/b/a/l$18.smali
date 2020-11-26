.class final Lcom/tencent/lbssearch/a/a/b/a/l$18;
.super Lcom/tencent/lbssearch/a/a/w;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/a/w<",
        "Lcom/tencent/lbssearch/a/a/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Lcom/tencent/lbssearch/a/a/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/tencent/lbssearch/a/a/b/a/l$26;->a:[I

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 667
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 655
    :pswitch_0
    new-instance v0, Lcom/tencent/lbssearch/a/a/o;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/o;-><init>()V

    .line 656
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->c()V

    .line 657
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$18;->a(Lcom/tencent/lbssearch/a/a/d/a;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/a/l;)V

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->d()V

    return-object v0

    .line 647
    :pswitch_1
    new-instance v0, Lcom/tencent/lbssearch/a/a/i;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/i;-><init>()V

    .line 648
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 649
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$18;->a(Lcom/tencent/lbssearch/a/a/d/a;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/a/i;->a(Lcom/tencent/lbssearch/a/a/l;)V

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    return-object v0

    .line 644
    :pswitch_2
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    .line 645
    sget-object p1, Lcom/tencent/lbssearch/a/a/n;->a:Lcom/tencent/lbssearch/a/a/n;

    return-object p1

    .line 637
    :pswitch_3
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 642
    :pswitch_4
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 639
    :pswitch_5
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    .line 640
    new-instance v0, Lcom/tencent/lbssearch/a/a/q;

    new-instance v1, Lcom/tencent/lbssearch/a/a/b/f;

    invoke-direct {v1, p1}, Lcom/tencent/lbssearch/a/a/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/a/q;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Lcom/tencent/lbssearch/a/a/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 672
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 674
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->o()Lcom/tencent/lbssearch/a/a/q;

    move-result-object p2

    .line 676
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/q;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/q;->b()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/Number;)Lcom/tencent/lbssearch/a/a/d/c;

    goto/16 :goto_3

    .line 678
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/q;->h()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/d/c;->a(Z)Lcom/tencent/lbssearch/a/a/d/c;

    goto/16 :goto_3

    .line 681
    :cond_2
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/q;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/d/c;->b(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    goto/16 :goto_3

    .line 684
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 685
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->b()Lcom/tencent/lbssearch/a/a/d/c;

    .line 686
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->n()Lcom/tencent/lbssearch/a/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/i;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/l;

    .line 687
    invoke-virtual {p0, p1, v0}, Lcom/tencent/lbssearch/a/a/b/a/l$18;->a(Lcom/tencent/lbssearch/a/a/d/c;Lcom/tencent/lbssearch/a/a/l;)V

    goto :goto_0

    .line 689
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->c()Lcom/tencent/lbssearch/a/a/d/c;

    goto :goto_3

    .line 691
    :cond_5
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 692
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->d()Lcom/tencent/lbssearch/a/a/d/c;

    .line 693
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->m()Lcom/tencent/lbssearch/a/a/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/o;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 694
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    .line 695
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/lbssearch/a/a/l;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/lbssearch/a/a/b/a/l$18;->a(Lcom/tencent/lbssearch/a/a/d/c;Lcom/tencent/lbssearch/a/a/l;)V

    goto :goto_1

    .line 697
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->e()Lcom/tencent/lbssearch/a/a/d/c;

    goto :goto_3

    .line 700
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 673
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    check-cast p2, Lcom/tencent/lbssearch/a/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/l$18;->a(Lcom/tencent/lbssearch/a/a/d/c;Lcom/tencent/lbssearch/a/a/l;)V

    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$18;->a(Lcom/tencent/lbssearch/a/a/d/a;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p1

    return-object p1
.end method
