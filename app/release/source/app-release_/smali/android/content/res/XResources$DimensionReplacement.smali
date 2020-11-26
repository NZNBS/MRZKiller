.class public Landroid/content/res/XResources$DimensionReplacement;
.super Ljava/lang/Object;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DimensionReplacement"
.end annotation


# instance fields
.field private final mUnit:I

.field private final mValue:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    iput p1, p0, Landroid/content/res/XResources$DimensionReplacement;->mValue:F

    .line 1543
    iput p2, p0, Landroid/content/res/XResources$DimensionReplacement;->mUnit:I

    return-void
.end method


# virtual methods
.method public getDimension(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 1548
    iget v0, p0, Landroid/content/res/XResources$DimensionReplacement;->mUnit:I

    iget v1, p0, Landroid/content/res/XResources$DimensionReplacement;->mValue:F

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public getDimensionPixelOffset(Landroid/util/DisplayMetrics;)I
    .locals 2

    .line 1553
    iget v0, p0, Landroid/content/res/XResources$DimensionReplacement;->mUnit:I

    iget v1, p0, Landroid/content/res/XResources$DimensionReplacement;->mValue:F

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getDimensionPixelSize(Landroid/util/DisplayMetrics;)I
    .locals 2

    .line 1558
    iget v0, p0, Landroid/content/res/XResources$DimensionReplacement;->mUnit:I

    iget v1, p0, Landroid/content/res/XResources$DimensionReplacement;->mValue:F

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    if-eqz p1, :cond_0

    return p1

    .line 1561
    :cond_0
    iget p1, p0, Landroid/content/res/XResources$DimensionReplacement;->mValue:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method
