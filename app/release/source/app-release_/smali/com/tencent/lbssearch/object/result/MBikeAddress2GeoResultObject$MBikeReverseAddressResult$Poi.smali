.class public Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Poi;
.super Ljava/lang/Object;
.source "MBikeAddress2GeoResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Poi"
.end annotation


# instance fields
.field public _distance:F

.field public address:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public location:Lcom/tencent/lbssearch/object/Location;

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult$Poi;->this$1:Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject$MBikeReverseAddressResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
