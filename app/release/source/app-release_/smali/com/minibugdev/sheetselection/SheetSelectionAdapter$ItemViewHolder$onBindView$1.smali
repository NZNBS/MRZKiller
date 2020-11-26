.class final Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;
.super Ljava/lang/Object;
.source "SheetSelectionAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder;->onBindView(Lcom/minibugdev/sheetselection/SheetSelectionItem;IZLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/minibugdev/sheetselection/SheetSelectionItem;

.field final synthetic $onItemSelectedListener:Lkotlin/jvm/functions/Function2;

.field final synthetic $position:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/minibugdev/sheetselection/SheetSelectionItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;->$onItemSelectedListener:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;->$item:Lcom/minibugdev/sheetselection/SheetSelectionItem;

    iput p3, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;->$onItemSelectedListener:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;->$item:Lcom/minibugdev/sheetselection/SheetSelectionItem;

    iget v1, p0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter$ItemViewHolder$onBindView$1;->$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
