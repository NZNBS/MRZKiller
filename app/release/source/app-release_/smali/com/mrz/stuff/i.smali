.class public Lcom/mrz/stuff/i;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "g"


# instance fields
.field ALLATORIxDEMO:Landroid/widget/ImageView;

.field D:Landroid/widget/TextView;

.field final synthetic F:Lcom/mrz/stuff/s;

.field b:Landroid/widget/Button;

.field j:Landroid/widget/Button;

.field m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mrz/stuff/s;Landroid/view/View;)V
    .locals 2

    .line 475
    iput-object p1, p0, Lcom/mrz/stuff/i;->F:Lcom/mrz/stuff/s;

    .line 407
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080056

    .line 429
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mrz/stuff/i;->m:Landroid/widget/TextView;

    const p1, 0x7f080158

    .line 189
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mrz/stuff/i;->D:Landroid/widget/TextView;

    const p1, 0x7f08016f

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mrz/stuff/i;->j:Landroid/widget/Button;

    const p1, 0x7f0800a3

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mrz/stuff/i;->b:Landroid/widget/Button;

    const p1, 0x7f080132

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mrz/stuff/i;->ALLATORIxDEMO:Landroid/widget/ImageView;

    .line 48
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
