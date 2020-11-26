.class public final Lcom/tencent/lbssearch/object/result/TransitResultObject$Line;
.super Ljava/lang/Object;
.source "TransitResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/TransitResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Line"
.end annotation


# instance fields
.field public destination:Lcom/tencent/lbssearch/object/result/TransitResultObject$Destination;

.field public distance:F

.field public duration:F

.field public getoff:Lcom/tencent/lbssearch/object/result/TransitResultObject$GetOnOrOff;

.field public geton:Lcom/tencent/lbssearch/object/result/TransitResultObject$GetOnOrOff;

.field public id:Ljava/lang/String;

.field public polyline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/Location;",
            ">;"
        }
    .end annotation
.end field

.field public station_count:I

.field public title:Ljava/lang/String;

.field public vehicle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
