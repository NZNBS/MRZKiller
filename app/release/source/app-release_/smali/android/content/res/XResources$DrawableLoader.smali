.class public abstract Landroid/content/res/XResources$DrawableLoader;
.super Ljava/lang/Object;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableLoader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public newDrawableForDensity(Landroid/content/res/XResources;II)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1518
    invoke-virtual {p0, p1, p2}, Landroid/content/res/XResources$DrawableLoader;->newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
