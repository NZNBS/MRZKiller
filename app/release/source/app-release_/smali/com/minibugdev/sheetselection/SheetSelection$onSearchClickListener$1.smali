.class final Lcom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1;
.super Ljava/lang/Object;
.source "SheetSelection.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minibugdev/sheetselection/SheetSelection;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSheetSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SheetSelection.kt\ncom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1\n*L\n1#1,207:1\n*E\n"
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
.field final synthetic this$0:Lcom/minibugdev/sheetselection/SheetSelection;


# direct methods
.method constructor <init>(Lcom/minibugdev/sheetselection/SheetSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-virtual {p1}, Lcom/minibugdev/sheetselection/SheetSelection;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-static {p1}, Lcom/minibugdev/sheetselection/SheetSelection;->access$getScreenHeight$p(Lcom/minibugdev/sheetselection/SheetSelection;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/minibugdev/sheetselection/SheetSelection;->access$updateSheetHeight(Lcom/minibugdev/sheetselection/SheetSelection;I)V

    .line 95
    iget-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    sget v0, Lcom/minibugdev/sheetselection/R$id;->viewSwitcherHeader:I

    invoke-virtual {p1, v0}, Lcom/minibugdev/sheetselection/SheetSelection;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    const-string v0, "viewSwitcherHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 96
    iget-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchClickListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    sget v0, Lcom/minibugdev/sheetselection/R$id;->searchView:I

    invoke-virtual {p1, v0}, Lcom/minibugdev/sheetselection/SheetSelection;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    const-string v0, "searchView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    return-void
.end method
