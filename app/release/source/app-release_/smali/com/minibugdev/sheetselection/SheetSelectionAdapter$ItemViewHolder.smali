.class public final Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SheetSelectionAdapter.kt"

# interfaces
.implements Lkotlinx/android/extensions/LayoutContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minibugdev/sheetselection/SheetSelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J^\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2>\u0010\u0010\u001a:\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011j\u0004\u0018\u0001`\u0014R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkotlinx/android/extensions/LayoutContainer;",
        "containerView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "getContainerView",
        "()Landroid/view/View;",
        "onBindView",
        "",
        "item",
        "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
        "position",
        "",
        "selected",
        "",
        "onItemSelectedListener",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "Lcom/minibugdev/sheetselection/OnItemSelectedListener;",
        "sheetselection_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final containerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->containerView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lkotlinx/android/extensions/LayoutContainer;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->containerView:Landroid/view/View;

    return-object v0
.end method

.method public final onBindView(Lcom/minibugdev/sheetselection/SheetSelectionItem;IZLkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            "IZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 79
    sget p3, Lcom/minibugdev/sheetselection/R$drawable;->ic_check:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 80
    :goto_0
    sget v1, Lcom/minibugdev/sheetselection/R$id;->textViewItem:I

    invoke-virtual {p0, v1}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/minibugdev/sheetselection/SheetSelectionItem;->getIcon()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0, p3, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 81
    sget p3, Lcom/minibugdev/sheetselection/R$id;->textViewItem:I

    invoke-virtual {p0, p3}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "textViewItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/minibugdev/sheetselection/SheetSelectionItem;->getValue()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget p3, Lcom/minibugdev/sheetselection/R$id;->textViewItem:I

    invoke-virtual {p0, p3}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-instance v0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;

    invoke-direct {v0, p4, p1, p2}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/minibugdev/sheetselection/SheetSelectionItem;I)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
