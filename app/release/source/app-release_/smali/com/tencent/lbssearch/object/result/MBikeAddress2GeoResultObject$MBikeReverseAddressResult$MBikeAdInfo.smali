.class public Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$MBikeAdInfo;
.super Ljava/lang/Object;
.source "MBikeAddress2GeoResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MBikeAdInfo"
.end annotation


# instance fields
.field public adcode:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public city_code_mo:Ljava/lang/String;

.field public district:Ljava/lang/String;

.field public location:Lcom/tencent/lbssearch/object/Location;

.field public name:Ljava/lang/String;

.field public nation:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$MBikeAdInfo;->this$1:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
