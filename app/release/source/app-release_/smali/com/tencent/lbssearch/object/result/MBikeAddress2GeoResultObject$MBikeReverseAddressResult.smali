.class public Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;
.super Ljava/lang/Object;
.source "MBikeAddress2GeoResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MBikeReverseAddressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Poi;,
        Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference;,
        Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$MBikeAdInfo;,
        Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$FormatterAddress;
    }
.end annotation


# instance fields
.field public ad_info:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$MBikeAdInfo;

.field public address:Ljava/lang/String;

.field public address_component:Lcom/tencent/lbssearch/object/result/AddressComponent;

.field public address_reference:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Reference;

.field public formatted_addresses:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$FormatterAddress;

.field public pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Poi;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;->this$0:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
