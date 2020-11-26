.class public Lcom/tencent/lbssearch/object/result/Address2GeoResultObject$Address2GeoResult;
.super Ljava/lang/Object;
.source "Address2GeoResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/Address2GeoResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Address2GeoResult"
.end annotation


# instance fields
.field public address_components:Lcom/tencent/lbssearch/object/result/AddressComponent;

.field public deviation:F

.field public location:Lcom/tencent/lbssearch/object/Location;

.field public reliability:I

.field public similarity:F

.field final synthetic this$0:Lcom/tencent/lbssearch/object/result/Address2GeoResultObject;


# direct methods
.method public constructor <init>(Lcom/tencent/lbssearch/object/result/Address2GeoResultObject;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/tencent/lbssearch/object/result/Address2GeoResultObject$Address2GeoResult;->this$0:Lcom/tencent/lbssearch/object/result/Address2GeoResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
