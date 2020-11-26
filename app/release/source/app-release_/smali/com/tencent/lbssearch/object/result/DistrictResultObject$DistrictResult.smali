.class public Lcom/tencent/lbssearch/object/result/DistrictResultObject$DistrictResult;
.super Ljava/lang/Object;
.source "DistrictResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/DistrictResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DistrictResult"
.end annotation


# instance fields
.field public fullname:Ljava/lang/String;

.field public id:I

.field public location:Lcom/tencent/lbssearch/object/Location;

.field public name:Ljava/lang/String;

.field public pinyin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/DistrictResultObject;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/DistrictResultObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/DistrictResultObject$DistrictResult;->this$0:Lcom/tencent/lbssearch/object/result/DistrictResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
