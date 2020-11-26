.class public Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData$Pano;
.super Ljava/lang/Object;
.source "SearchResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pano"
.end annotation


# instance fields
.field public heading:I

.field public id:Ljava/lang/String;

.field public pitch:I

.field final synthetic this$1:Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData;

.field public zoom:I


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData$Pano;->this$1:Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
