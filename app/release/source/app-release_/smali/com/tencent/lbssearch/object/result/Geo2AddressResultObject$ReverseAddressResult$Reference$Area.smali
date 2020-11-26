.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;
.super Ljava/lang/Object;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Area"
.end annotation


# instance fields
.field public _dir_desc:Ljava/lang/String;

.field public _distance:F

.field public location:Lcom/tencent/lbssearch/object/Location;

.field final synthetic this$2:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference$Area;->this$2:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
