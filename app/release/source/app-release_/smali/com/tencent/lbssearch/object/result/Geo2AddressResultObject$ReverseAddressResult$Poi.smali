.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Poi;
.super Ljava/lang/Object;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;
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

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$Poi;->this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
