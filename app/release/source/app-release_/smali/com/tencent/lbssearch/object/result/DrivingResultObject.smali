.class public Lcom/tencent/lbssearch/object/result/DrivingResultObject;
.super Lcom/tencent/lbssearch/object/result/RoutePlanningObject;
.source "DrivingResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/DrivingResultObject$Result;,
        Lcom/tencent/lbssearch/object/result/DrivingResultObject$WayPoint;,
        Lcom/tencent/lbssearch/object/result/DrivingResultObject$Route;
    }
.end annotation


# static fields
.field public static final EXPERIENCE:Ljava/lang/String; = "EXPERIENCE"

.field public static final LEAST_DISTANCE:Ljava/lang/String; = "LEAST_DISTANCE"

.field public static final LEAST_LIGHT:Ljava/lang/String; = "LEAST_LIGHT"

.field public static final LEAST_TIME:Ljava/lang/String; = "LEAST_TIME"

.field public static final RECOMMEND:Ljava/lang/String; = "RECOMMEND"


# instance fields
.field public result:Lcom/tencent/lbssearch/object/result/DrivingResultObject$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/result/RoutePlanningObject;-><init>()V

    return-void
.end method
