.class Lcom/mrz/activity/g;
.super Ljava/lang/Object;
.source "y"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrz/activity/MRZActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

.field final synthetic F:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mrz/activity/MRZActivity;Landroid/content/Intent;)V
    .locals 2

    .line 414
    iput-object p1, p0, Lcom/mrz/activity/g;->ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

    iput-object p2, p0, Lcom/mrz/activity/g;->F:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    const-wide v0, 0x176bbe33e27L

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "EXPIRED!"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 121
    :try_start_0
    iget-object p1, p0, Lcom/mrz/activity/g;->ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

    iget-object v0, p0, Lcom/mrz/activity/g;->F:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/mrz/activity/MRZActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 282
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
