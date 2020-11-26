.class public Lcom/tencent/lbssearch/object/result/TransitResultObject;
.super Lcom/tencent/lbssearch/object/result/RoutePlanningObject;
.source "TransitResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Result;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$GetOnOrOff;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Line;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Transit;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Walking;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Destination;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;,
        Lcom/tencent/lbssearch/object/result/TransitResultObject$Route;
    }
.end annotation


# instance fields
.field public result:Lcom/tencent/lbssearch/object/result/TransitResultObject$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/result/RoutePlanningObject;-><init>()V

    return-void
.end method
