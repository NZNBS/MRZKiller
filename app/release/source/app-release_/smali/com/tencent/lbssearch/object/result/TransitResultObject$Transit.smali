.class public final Lcom/tencent/lbssearch/object/result/TransitResultObject$Transit;
.super Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;
.source "TransitResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/TransitResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transit"
.end annotation


# instance fields
.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/result/TransitResultObject$Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/tencent/lbssearch/object/result/TransitResultObject$Segment;-><init>()V

    return-void
.end method
