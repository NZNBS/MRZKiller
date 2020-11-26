.class public final Lcom/tencent/lbssearch/object/result/TransitResultObject$LatLngBounds;
.super Ljava/lang/Object;
.source "TransitResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/result/TransitResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLngBounds"
.end annotation


# instance fields
.field public northeast:Lcom/tencent/lbssearch/object/Location;

.field public southwest:Lcom/tencent/lbssearch/object/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
