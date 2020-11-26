.class public Lcom/tencent/lbssearch/object/result/StreetViewResultObject$Details;
.super Ljava/lang/Object;
.source "StreetViewResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/StreetViewResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Details"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public location:Lcom/tencent/lbssearch/object/Location;

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/StreetViewResultObject;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/StreetViewResultObject;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/StreetViewResultObject$Details;->this$0:Lcom/tencent/lbssearch/object/result/StreetViewResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
