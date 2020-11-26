.class public Lcom/tencent/lbssearch/object/result/DistrictResultObject;
.super Lcom/tencent/lbssearch/httpresponse/BaseObject;
.source "DistrictResultObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/DistrictResultObject$DistrictResult;
    }
.end annotation


# instance fields
.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/result/DistrictResultObject$DistrictResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/lbssearch/httpresponse/BaseObject;-><init>()V

    return-void
.end method
