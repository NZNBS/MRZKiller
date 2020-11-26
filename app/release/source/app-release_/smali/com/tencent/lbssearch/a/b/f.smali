.class public Lcom/tencent/lbssearch/a/b/f;
.super Ljava/lang/Object;
.source "TransitResultLatLngBoundsDeserializer.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/lbssearch/a/a/k<",
        "Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;",
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
.method public a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 20
    new-instance p2, Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;

    invoke-direct {p2}, Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/l;->c()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    const-string p3, ","

    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 26
    array-length p3, p1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 27
    new-instance p3, Lcom/tencent/lbssearch/object/Location;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p3, v0, v1}, Lcom/tencent/lbssearch/object/Location;-><init>(FF)V

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;->northeast:Lcom/tencent/lbssearch/object/Location;

    .line 28
    new-instance p3, Lcom/tencent/lbssearch/object/Location;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p3, v0, p1}, Lcom/tencent/lbssearch/object/Location;-><init>(FF)V

    iput-object p3, p2, Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;->southwest:Lcom/tencent/lbssearch/object/Location;

    return-object p2

    :cond_1
    return-object v0
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/a/p;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/lbssearch/a/b/f;->a(Lcom/tencent/lbssearch/a/a/l;Ljava/lang/reflect/Type;Lcom/tencent/lbssearch/a/a/j;)Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;

    move-result-object p1

    return-object p1
.end method
