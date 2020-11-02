.class public final Lcom/tencent/lbssearch/object/result/TransitResultObject$Walking;
.super Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;
.source "TransitResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/TransitResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Walking"
.end annotation


# instance fields
.field public accessorial_desc:Ljava/lang/String;

.field public direction:Ljava/lang/String;

.field public distance:F

.field public duration:F

.field public polyline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/Location;",
            ">;"
        }
    .end annotation
.end field

.field public steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;-><init>()V

    return-void
.end method
