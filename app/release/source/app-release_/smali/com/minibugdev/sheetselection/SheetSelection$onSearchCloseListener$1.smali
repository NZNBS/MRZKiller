.class final Lcom/minibugdev/sheetselection/SheetSelection$onSearchCloseListener$1;
.super Ljava/lang/Object;
.source "SheetSelection.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minibugdev/sheetselection/SheetSelection;-><init>()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onClose"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/minibugdev/sheetselection/SheetSelection;


# direct methods
.method constructor <init>(Lcom/minibugdev/sheetselection/SheetSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchCloseListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchCloseListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/minibugdev/sheetselection/SheetSelection;->access$updateSheetHeight(Lcom/minibugdev/sheetselection/SheetSelection;I)V

    .line 101
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchCloseListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    sget v1, Lcom/minibugdev/sheetselection/R$id;->viewSwitcherHeader:I

    invoke-virtual {v0, v1}, Lcom/minibugdev/sheetselection/SheetSelection;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    const-string v1, "viewSwitcherHeader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    const/4 v0, 0x1

    return v0
.end method
