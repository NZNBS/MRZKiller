.class public Lcom/tencent/lbssearch/object/result/BicyclingResultObject;
.super Lcom/tencent/lbssearch/object/result/RoutePlanningObject;
.source "BicyclingResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/BicyclingResultObject$Result;,
        Lcom/tencent/lbssearch/object/result/BicyclingResultObject$Route;
    }
.end annotation


# instance fields
.field public result:Lcom/tencent/lbssearch/object/result/BicyclingResultObject$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/result/RoutePlanningObject;-><init>()V

    return-void
.end method
