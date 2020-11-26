.class public Lcom/tencent/lbssearch/a/b/g;
.super Ljava/lang/Object;
.source "TransitResultSegmentDeserializer.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/lbssearch/a/a/k<",
        "Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->m()Lcom/tencent/lbssearch/a/a/o;

    move-result-object p2

    const-string v0, "mode"

    .line 19
    invoke-virtual {p2, v0}, Lcom/tencent/lbssearch/a/a/o;->a(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/l;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WALKING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    const-class p2, Lcom/tencent/lbssearch/object/result/TransitResultObject$Walking;

    invoke-interface {p3, p1, p2}, Lcom/tencent/lbssearch/a/a/j;->a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;

    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TRANSIT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 26
    const-class p2, Lcom/tencent/lbssearch/object/result/TransitResultObject$Transit;

    invoke-interface {p3, p1, p2}, Lcom/tencent/lbssearch/a/a/j;->a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/lbssearch/a/b/g;->a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;

    move-result-object p1

    return-object p1
.end method
