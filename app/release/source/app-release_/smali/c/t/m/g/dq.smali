.class public final Lc/t/m/g/dq;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lcom/tencent/map/geolocation/TencentDistanceAnalysis;


# instance fields
.field private a:D

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lc/t/m/g/dq;->a:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 23
    iput p1, p0, Lc/t/m/g/dq;->b:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 31
    iput p1, p0, Lc/t/m/g/dq;->c:I

    return-void
.end method

.method public final getConfidence()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lc/t/m/g/dq;->a:D

    return-wide v0
.end method

.method public final getGpsCount()I
    .locals 1

    .line 19
    iget v0, p0, Lc/t/m/g/dq;->b:I

    return v0
.end method

.method public final getNetworkCount()I
    .locals 1

    .line 27
    iget v0, p0, Lc/t/m/g/dq;->c:I

    return v0
.end method
