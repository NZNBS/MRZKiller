.class public Lcom/tencent/lbssearch/object/result/TranslateResultObject;
.super Lcom/tencent/lbssearch/httpresponse/BaseObject;
.source "TranslateResultObject.java"


# instance fields
.field public locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/Location;",
            ">;"
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
