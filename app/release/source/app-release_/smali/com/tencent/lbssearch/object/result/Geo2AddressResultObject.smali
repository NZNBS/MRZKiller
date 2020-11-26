.class public Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject;
.super Lcom/tencent/lbssearch/httpresponse/BaseObject;
.source "Geo2AddressResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;
    }
.end annotation


# instance fields
.field public result:Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject$ReverseAddressResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/lbssearch/httpresponse/BaseObject;-><init>()V

    return-void
.end method
