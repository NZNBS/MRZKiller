.class final Lc/t/m/g/cp$c;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lcom/tencent/map/geolocation/fence/TxGeofenceManagerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/map/geolocation/TencentLocation;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic c:Lc/t/m/g/cp;


# direct methods
.method private constructor <init>(Lc/t/m/g/cp;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lc/t/m/g/cp$c;->c:Lc/t/m/g/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    .line 880
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/t/m/g/cp$c;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lc/t/m/g/cp;B)V
    .locals 0

    .line 877
    invoke-direct {p0, p1}, Lc/t/m/g/cp$c;-><init>(Lc/t/m/g/cp;)V

    return-void
.end method


# virtual methods
.method public final add(ILcom/tencent/map/geolocation/TencentLocation;)V
    .locals 2

    if-nez p1, :cond_0

    .line 919
    iget-object p1, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 921
    :cond_0
    iget-object p1, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    sget-object p2, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 921
    invoke-virtual {p2, v0, v1}, Lc/t/m/g/dw;->a(J)Lc/t/m/g/dw;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getLastInterval()J
    .locals 2

    .line 940
    iget-object v0, p0, Lc/t/m/g/cp$c;->c:Lc/t/m/g/cp;

    iget-object v0, v0, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-wide v0, v0, Lc/t/m/g/cp$b;->c:J

    return-wide v0
.end method

.method public final getLastLocation()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .line 892
    iget-object v0, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    return-object v0

    .line 895
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentLocation;

    return-object v0
.end method

.method public final getLastLocationTime()J
    .locals 2

    .line 884
    iget-object v0, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 887
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v0}, Lcom/tencent/map/geolocation/TencentLocation;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastSummary()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lc/t/m/g/cp$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 913
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cp$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getLocationTimes()Ljava/lang/String;
    .locals 5

    .line 928
    iget-object v0, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 930
    iget-object v1, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/map/geolocation/TencentLocation;

    .line 931
    sget-object v4, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/map/geolocation/TencentLocation;",
            ">;"
        }
    .end annotation

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/t/m/g/cp$c;->b:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getNextLocationTime()J
    .locals 4

    .line 945
    invoke-virtual {p0}, Lc/t/m/g/cp$c;->getLastLocationTime()J

    move-result-wide v0

    iget-object v2, p0, Lc/t/m/g/cp$c;->c:Lc/t/m/g/cp;

    iget-object v2, v2, Lc/t/m/g/cp;->a:Lc/t/m/g/cp$b;

    iget-wide v2, v2, Lc/t/m/g/cp$b;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSpeed()D
    .locals 2

    .line 950
    iget-object v0, p0, Lc/t/m/g/cp$c;->c:Lc/t/m/g/cp;

    invoke-static {v0}, Lc/t/m/g/cp;->c(Lc/t/m/g/cp;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getSummary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lc/t/m/g/cp$c;->a:Ljava/util/List;

    return-object v0
.end method

.method public final reset()V
    .locals 0

    return-void
.end method
