.class public final Lcom/tencent/lbssearch/a/a/b/a/g;
.super Lcom/tencent/lbssearch/a/a/w;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/lbssearch/a/a/x;


# instance fields
.field private final b:Lcom/tencent/lbssearch/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/g$1;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/a/g$1;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/a/g;->a:Lcom/tencent/lbssearch/a/a/x;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/lbssearch/a/a/f;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/g;->b:Lcom/tencent/lbssearch/a/a/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/b/a/g$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/g;-><init>(Lcom/tencent/lbssearch/a/a/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/g;->b:Lcom/tencent/lbssearch/a/a/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/lbssearch/a/a/f;->a(Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lcom/tencent/lbssearch/a/a/b/a/g;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->d()Lcom/tencent/lbssearch/a/a/d/c;

    .line 102
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->e()Lcom/tencent/lbssearch/a/a/d/c;

    return-void

    .line 106
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/tencent/lbssearch/a/a/b/a/g$2;->a:[I

    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/a/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_4
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/g;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/g;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->c()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/g;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->d()V

    return-object v0

    .line 58
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->a()V

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/g;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->b()V

    return-object v0

    nop

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
