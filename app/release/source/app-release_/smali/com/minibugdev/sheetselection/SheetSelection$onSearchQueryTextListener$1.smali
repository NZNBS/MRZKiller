.class public final Lcom/minibugdev/sheetselection/SheetSelection$onSearchQueryTextListener$1;
.super Ljava/lang/Object;
.source "SheetSelection.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minibugdev/sheetselection/SheetSelection;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/minibugdev/sheetselection/SheetSelection$onSearchQueryTextListener$1",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "onQueryTextChange",
        "",
        "newText",
        "",
        "onQueryTextSubmit",
        "query",
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
.field final synthetic this$0:Lcom/minibugdev/sheetselection/SheetSelection;


# direct methods
.method constructor <init>(Lcom/minibugdev/sheetselection/SheetSelection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchQueryTextListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchQueryTextListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-static {v0}, Lcom/minibugdev/sheetselection/SheetSelection;->access$getAdapter$p(Lcom/minibugdev/sheetselection/SheetSelection;)Lcom/minibugdev/sheetselection/SheetSelectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter;->search(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelection$onSearchQueryTextListener$1;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-static {v0}, Lcom/minibugdev/sheetselection/SheetSelection;->access$getAdapter$p(Lcom/minibugdev/sheetselection/SheetSelection;)Lcom/minibugdev/sheetselection/SheetSelectionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter;->search(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
