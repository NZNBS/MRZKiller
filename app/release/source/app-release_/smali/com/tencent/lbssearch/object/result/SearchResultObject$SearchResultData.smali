.class public Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData;
.super Ljava/lang/Object;
.source "SearchResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/SearchResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResultData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData$Pano;
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public location:Lcom/tencent/lbssearch/object/Location;

.field public pano:Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData$Pano;

.field public tel:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/SearchResultObject;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/SearchResultObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/SearchResultObject$SearchResultData;->this$0:Lcom/tencent/lbssearch/object/result/SearchResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
