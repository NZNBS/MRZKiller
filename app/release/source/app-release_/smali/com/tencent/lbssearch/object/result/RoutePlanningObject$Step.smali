.class public final Lcom/tencent/lbssearch/object/result/RoutePlanningObject$Step;
.super Ljava/lang/Object;
.source "RoutePlanningObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/RoutePlanningObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Step"
.end annotation


# instance fields
.field public accessorial_desc:Ljava/lang/String;

.field public act_desc:Ljava/lang/String;

.field public dir_desc:Ljava/lang/String;

.field public distance:F

.field public duration:F

.field public instruction:Ljava/lang/String;

.field public polyline_idx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public road_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
