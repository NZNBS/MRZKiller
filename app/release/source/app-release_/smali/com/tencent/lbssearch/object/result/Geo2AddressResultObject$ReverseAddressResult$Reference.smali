.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;
.super Ljava/lang/Object;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;
    }
.end annotation


# instance fields
.field public crossroad:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;

.field public famous_area:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;

.field public landmark_l1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;

.field public landmark_l2:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;

.field public street:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;

.field public street_number:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;

.field public water:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;->this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
