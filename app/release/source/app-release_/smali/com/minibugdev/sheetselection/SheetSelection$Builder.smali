.class public final Lcom/minibugdev/sheetselection/SheetSelection$Builder;
.super Ljava/lang/Object;
.source "SheetSelection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minibugdev/sheetselection/SheetSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSheetSelection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SheetSelection.kt\ncom/minibugdev/sheetselection/SheetSelection$Builder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1366#2:208\n1435#2,3:209\n*E\n*S KotlinDebug\n*F\n+ 1 SheetSelection.kt\ncom/minibugdev/sheetselection/SheetSelection$Builder\n*L\n153#1:208\n153#1,3:209\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001b\u001a\u00020\u001cJ.\u0010\u0005\u001a\u00020\u0000\"\u0004\u0008\u0000\u0010\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u00062\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u001d\u0012\u0004\u0012\u00020\u00070 J\u0014\u0010\u0005\u001a\u00020\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006JB\u0010!\u001a\u00020\u00002:\u0010\u0008\u001a6\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\tj\u0002`\u0010J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0001\u0010#\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010%\u001a\u00020\u000fJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0014J\u0010\u0010&\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0019\u001a\u00020\rJ\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000RF\u0010\u0008\u001a:\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\tj\u0004\u0018\u0001`\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\r8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/minibugdev/sheetselection/SheetSelection$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "items",
        "",
        "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
        "listener",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "position",
        "",
        "Lcom/minibugdev/sheetselection/OnItemSelectedListener;",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "searchEnabled",
        "",
        "searchNotFoundText",
        "",
        "selectedPosition",
        "showDraggedIndicator",
        "themeId",
        "title",
        "build",
        "Lcom/minibugdev/sheetselection/SheetSelection;",
        "T",
        "source",
        "mapper",
        "Lkotlin/Function1;",
        "onItemClickListener",
        "enabled",
        "textResId",
        "text",
        "show",
        "theme",
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
.field private final context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Landroidx/fragment/app/FragmentManager;

.field private searchEnabled:Z

.field private searchNotFoundText:Ljava/lang/String;

.field private selectedPosition:I

.field private showDraggedIndicator:Z

.field private themeId:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->context:Landroid/content/Context;

    .line 119
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    .line 120
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 118
    :goto_0
    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->manager:Landroidx/fragment/app/FragmentManager;

    .line 125
    sget p1, Lcom/minibugdev/sheetselection/R$style;->Theme_SheetSelection:I

    iput p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->themeId:I

    .line 127
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->items:Ljava/util/List;

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/minibugdev/sheetselection/SheetSelection;
    .locals 4

    .line 175
    new-instance v0, Lcom/minibugdev/sheetselection/SheetSelection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/minibugdev/sheetselection/SheetSelection;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    iget v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->themeId:I

    const-string v3, "SheetSelection:ARGS_THEME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    iget-object v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->title:Ljava/lang/String;

    const-string v3, "SheetSelection:ARGS_TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->items:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "SheetSelection:ARGS_ITEMS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    iget v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->selectedPosition:I

    const-string v3, "SheetSelection:ARGS_SELECTED_POSITION"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    iget-boolean v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->showDraggedIndicator:Z

    const-string v3, "SheetSelection:ARGS_SHOW_DRAGGED_INDICATOR"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    iget-boolean v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->searchEnabled:Z

    const-string v3, "SheetSelection:ARGS_SEARCH_ENABLED"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    iget-object v2, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->searchNotFoundText:Ljava/lang/String;

    const-string v3, "SheetSelection:ARGS_SEARCH_NOT_FOUND_TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/minibugdev/sheetselection/SheetSelection;->setArguments(Landroid/os/Bundle;)V

    .line 186
    iget-object v1, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->listener:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/minibugdev/sheetselection/SheetSelection;->setOnItemClickListener(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public final items(Ljava/util/List;)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            ">;)",
            "Lcom/minibugdev/sheetselection/SheetSelection$Builder;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 147
    iput-object p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->items:Ljava/util/List;

    return-object v0
.end method

.method public final items(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            ">;)",
            "Lcom/minibugdev/sheetselection/SheetSelection$Builder;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    check-cast p1, Ljava/lang/Iterable;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 153
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/minibugdev/sheetselection/SheetSelectionItem;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 153
    invoke-virtual {p0, v0}, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->items(Ljava/util/List;)Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final onItemClickListener(Lkotlin/jvm/functions/Function2;)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/minibugdev/sheetselection/SheetSelectionItem;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/minibugdev/sheetselection/SheetSelection$Builder;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 172
    iput-object p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->listener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final searchEnabled(Z)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1

    .line 159
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 160
    iput-boolean p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->searchEnabled:Z

    return-object v0
.end method

.method public final searchNotFoundText(I)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 2

    .line 167
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 168
    iget-object v1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->searchNotFoundText:Ljava/lang/String;

    return-object v0
.end method

.method public final searchNotFoundText(Ljava/lang/String;)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 164
    iput-object p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->searchNotFoundText:Ljava/lang/String;

    return-object v0
.end method

.method public final selectedPosition(I)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1

    .line 142
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 143
    iput p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->selectedPosition:I

    return-object v0
.end method

.method public final show()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->manager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->build()Lcom/minibugdev/sheetselection/SheetSelection;

    move-result-object v1

    const-string v2, "SheetSelection:TAG"

    invoke-virtual {v1, v0, v2}, Lcom/minibugdev/sheetselection/SheetSelection;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showDraggedIndicator(Z)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 156
    iput-boolean p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->showDraggedIndicator:Z

    return-object v0
.end method

.method public final theme(I)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1

    .line 134
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 135
    iput p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->themeId:I

    return-object v0
.end method

.method public final title(Ljava/lang/String;)Lcom/minibugdev/sheetselection/SheetSelection$Builder;
    .locals 1

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;

    .line 139
    iput-object p1, v0, Lcom/minibugdev/sheetselection/SheetSelection$Builder;->title:Ljava/lang/String;

    return-object v0
.end method
