.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$FormatterAddress;
.super Ljava/lang/Object;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormatterAddress"
.end annotation


# instance fields
.field public recommend:Ljava/lang/String;

.field public rough:Ljava/lang/String;

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult$FormatterAddress;->this$1:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
