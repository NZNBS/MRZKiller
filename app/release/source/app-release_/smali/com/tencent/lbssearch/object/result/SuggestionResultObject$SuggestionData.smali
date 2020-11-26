.class public Lcom/tencent/lbssearch/object/result/SuggestionResultObject$SuggestionData;
.super Ljava/lang/Object;
.source "SuggestionResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/SuggestionResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionData"
.end annotation


# instance fields
.field public adcode:Ljava/lang/String;

.field public address:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public district:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public location:Lcom/tencent/lbssearch/object/Location;

.field public province:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/SuggestionResultObject;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/SuggestionResultObject;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/SuggestionResultObject$SuggestionData;->this$0:Lcom/tencent/lbssearch/object/result/SuggestionResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
