.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$AdInfo;
.super Ljava/lang/Object;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdInfo"
.end annotation


# instance fields
.field public adcode:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public district:Ljava/lang/String;

.field public location:Lcom/tencent/lbssearch/object/Location;

.field public name:Ljava/lang/String;

.field public nation:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$AdInfo;->this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
