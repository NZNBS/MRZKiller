.class final Lcom/tencent/lbssearch/a/a/b/a/l$16;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 539
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->c()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->d:Lcom/tencent/lbssearch/a/a/d/b;

    if-eq v0, v1, :cond_7

    .line 550
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->m()I

    move-result v1

    const-string v8, "year"

    .line 552
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v8, "month"

    .line 554
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const-string v8, "dayOfMonth"

    .line 556
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    const-string v8, "hourOfDay"

    .line 558
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    :cond_5
    const-string v8, "minute"

    .line 560
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    const-string v8, "second"

    .line 562
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    .line 566
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->d()V

    .line 567
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/l$16;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 576
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->d()Lcom/tencent/lbssearch/a/a/d/c;

    const-string v0, "year"

    .line 577
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    const/4 v0, 0x1

    .line 578
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    const-string v0, "month"

    .line 579
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    const/4 v0, 0x2

    .line 580
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    const-string v0, "dayOfMonth"

    .line 581
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    const/4 v0, 0x5

    .line 582
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    const-string v0, "hourOfDay"

    .line 583
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    const/16 v0, 0xb

    .line 584
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    const-string v0, "minute"

    .line 585
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    const/16 v0, 0xc

    .line 586
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    const-string v0, "second"

    .line 587
    invoke-virtual {p1, v0}, Lcom/tencent/lbssearch/a/a/d/c;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;

    const/16 v0, 0xd

    .line 588
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/lbssearch/a/a/d/c;->a(J)Lcom/tencent/lbssearch/a/a/d/c;

    .line 589
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->e()Lcom/tencent/lbssearch/a/a/d/c;

    return-void
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/l$16;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
