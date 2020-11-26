.class public Lcom/tencent/lbssearch/object/param/DrivingParam;
.super Lcom/tencent/lbssearch/object/param/RoutePlanningParam;
.source "DrivingParam.java"


# static fields
.field private static final MAX_WAT_POINTS:I = 0xa

.field private static final MULTIPLE_PLAN:Ljava/lang/String; = "get_mp"


# instance fields
.field private multiPlan:I

.field private policy:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;

.field private waypoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->waypoints:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;->LEAST_TIME:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;

    iput-object v0, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->policy:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->multiPlan:I

    return-void
.end method


# virtual methods
.method public addWayPoint(Lcom/tencent/lbssearch/object/Location;)Lcom/tencent/lbssearch/object/param/DrivingParam;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->waypoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->waypoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addWayPoints(Ljava/lang/Iterable;)Lcom/tencent/lbssearch/object/param/DrivingParam;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/tencent/lbssearch/object/Location;",
            ">;)",
            "Lcom/tencent/lbssearch/object/param/DrivingParam;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/lbssearch/object/Location;

    .line 55
    iget-object v2, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->waypoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    :cond_1
    return-object p0
.end method

.method public buildParameters()Lcom/tencent/lbssearch/a/b/d;
    .locals 4

    .line 79
    invoke-super {p0}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam;->buildParameters()Lcom/tencent/lbssearch/a/b/d;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->policy:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;

    invoke-virtual {v1}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "policy"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget v1, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->multiPlan:I

    const-string v2, "get_mp"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->waypoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->waypoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/lbssearch/object/Location;

    .line 85
    invoke-virtual {p0, v3}, Lcom/tencent/lbssearch/object/param/DrivingParam;->locationToParamsString(Lcom/tencent/lbssearch/object/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "waypoints"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getResultClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/tencent/lbssearch/object/result/DrivingResultObject;",
            ">;"
        }
    .end annotation

    .line 101
    const-class v0, Lcom/tencent/lbssearch/object/result/DrivingResultObject;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://apis.map.qq.com/ws/direction/v1/driving"

    return-object v0
.end method

.method public policy(Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;)Lcom/tencent/lbssearch/object/param/DrivingParam;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->policy:Lcom/tencent/lbssearch/object/param/RoutePlanningParam$DrivingPolicy;

    return-object p0
.end method

.method public setMultyPlan(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 71
    iput p1, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->multiPlan:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/tencent/lbssearch/object/param/DrivingParam;->multiPlan:I

    :goto_0
    return-void
.end method
