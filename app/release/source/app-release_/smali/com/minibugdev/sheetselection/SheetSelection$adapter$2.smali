.class final Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SheetSelection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/minibugdev/sheetselection/SheetSelection;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/minibugdev/sheetselection/SheetSelectionAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/minibugdev/sheetselection/SheetSelectionAdapter;",
        "invoke"
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

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/minibugdev/sheetselection/SheetSelectionAdapter;
    .locals 5

    .line 24
    new-instance v0, Lcom/minibugdev/sheetselection/SheetSelectionAdapter;

    .line 25
    iget-object v1, p0, Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-virtual {v1}, Lcom/minibugdev/sheetselection/SheetSelection;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SheetSelection:ARGS_ITEMS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-virtual {v2}, Lcom/minibugdev/sheetselection/SheetSelection;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v4, "SheetSelection:ARGS_SELECTED_POSITION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-virtual {v2}, Lcom/minibugdev/sheetselection/SheetSelection;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "SheetSelection:ARGS_SEARCH_NOT_FOUND_TEXT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "Search not found."

    .line 28
    :goto_1
    iget-object v4, p0, Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;->this$0:Lcom/minibugdev/sheetselection/SheetSelection;

    invoke-static {v4}, Lcom/minibugdev/sheetselection/SheetSelection;->access$getOnItemSelectedListener$p(Lcom/minibugdev/sheetselection/SheetSelection;)Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 24
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/minibugdev/sheetselection/SheetSelectionAdapter;-><init>(Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/minibugdev/sheetselection/SheetSelection$adapter$2;->invoke()Lcom/minibugdev/sheetselection/SheetSelectionAdapter;

    move-result-object v0

    return-object v0
.end method
