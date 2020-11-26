.class public Lcom/tencent/lbssearch/a/b/e;
.super Ljava/lang/Object;
.source "RoutePlanningStepDeserializer.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/lbssearch/a/a/k<",
        "Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 21
    new-instance p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;

    invoke-direct {p2}, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->m()Lcom/tencent/lbssearch/a/a/o;

    move-result-object p1

    const-string p3, "accessorial_desc"

    .line 23
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 25
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->accessorial_desc:Ljava/lang/String;

    :cond_0
    const-string p3, "act_desc"

    .line 28
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 30
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->act_desc:Ljava/lang/String;

    :cond_1
    const-string p3, "dir_desc"

    .line 33
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->dir_desc:Ljava/lang/String;

    :cond_2
    const-string p3, "distance"

    .line 38
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 40
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->e()F

    move-result p3

    iput p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->distance:F

    :cond_3
    const-string p3, "duration"

    .line 43
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 45
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->e()F

    move-result p3

    iput p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->duration:F

    :cond_4
    const-string p3, "road_name"

    .line 48
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 50
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->road_name:Ljava/lang/String;

    :cond_5
    const-string p3, "instruction"

    .line 53
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 55
    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->instruction:Ljava/lang/String;

    :cond_6
    const-string p3, "polyline_idx"

    .line 58
    invoke-virtual {p1, p3}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 62
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->n()Lcom/tencent/lbssearch/a/a/i;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/i;->a()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    .line 64
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->polyline_idx:Ljava/util/List;

    .line 65
    iget-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->polyline_idx:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/lbssearch/a/a/i;->a(I)Lcom/tencent/lbssearch/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/lbssearch/a/a/l;->g()I

    move-result v1

    div-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p3, p2, Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;->polyline_idx:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/tencent/lbssearch/a/a/i;->a(I)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->g()I

    move-result p1

    div-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p2
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/lbssearch/a/b/e;->a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;

    move-result-object p1

    return-object p1
.end method
