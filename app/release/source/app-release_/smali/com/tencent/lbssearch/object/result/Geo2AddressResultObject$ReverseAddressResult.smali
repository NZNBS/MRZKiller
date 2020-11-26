.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;
.super Ljava/lang/Object;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReverseAddressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Poi;,
        Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;,
        Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$AdInfo;,
        Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$FormatterAddress;
    }
.end annotation


# instance fields
.field public ad_info:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$AdInfo;

.field public address:Ljava/lang/String;

.field public address_component:Lcom/tencent/lbssearch/object/result/AddressComponent;

.field public address_reference:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;

.field public formatted_addresses:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$FormatterAddress;

.field public pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Poi;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;->this$0:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
