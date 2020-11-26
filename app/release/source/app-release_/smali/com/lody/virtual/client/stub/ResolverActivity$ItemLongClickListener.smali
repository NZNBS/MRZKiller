.class Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/stub/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/stub/ResolverActivity;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 727
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {p1}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$400(Lcom/lody/virtual/client/stub/ResolverActivity;)Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 728
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-virtual {p2, p1}, Lcom/lody/virtual/client/stub/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    const/4 p1, 0x1

    return p1
.end method
