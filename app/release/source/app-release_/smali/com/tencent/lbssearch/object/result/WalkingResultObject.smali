.class public Lcom/tencent/lbssearch/object/result/WalkingResultObject;
.super Lcom/tencent/lbssearch/object/result/RoutePlanningObject;
.source "WalkingResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/WalkingResultObject$Result;,
        Lcom/tencent/lbssearch/object/result/WalkingResultObject$Route;
    }
.end annotation


# instance fields
.field public result:Lcom/tencent/lbssearch/object/result/WalkingResultObject$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/result/RoutePlanningObject;-><init>()V

    return-void
.end method
