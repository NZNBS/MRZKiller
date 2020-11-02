.class public Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference$Area;
.super Ljava/lang/Object;
.source "MBikeAddress2GeoResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Area"
.end annotation


# instance fields
.field public _dir_desc:Ljava/lang/String;

.field public _distance:F

.field public location:Lcom/tencent/lbssearch/object/Location;

.field final synthetic this$2:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference$Area;->this$2:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
