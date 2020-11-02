.class final Ljonathanfinerty/once/Amount$3;
.super Ljava/lang/Object;
.source "Amount.java"

# interfaces
.implements Ljonathanfinerty/once/CountChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljonathanfinerty/once/Amount;->lessThan(I)Ljonathanfinerty/once/CountChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$numberOfTimes:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 25
    iput p1, p0, Ljonathanfinerty/once/Amount$3;->val$numberOfTimes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 1

    .line 28
    iget v0, p0, Ljonathanfinerty/once/Amount$3;->val$numberOfTimes:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
