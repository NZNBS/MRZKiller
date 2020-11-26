.class final Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitialHighlight:I

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/client/stub/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/client/stub/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 448
    iput p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 452
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 453
    iput-object p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 454
    iput-object p5, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 455
    iput p6, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    const-string p1, "layout_inflater"

    .line 456
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 458
    invoke-direct {p0}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->rebuildList()V

    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;)V
    .locals 3

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;

    .line 709
    iget-object v0, p1, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v0}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$200(Lcom/lody/virtual/client/stub/ResolverActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p1, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object v0, p1, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v0, p1, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    :goto_0
    iget-object v0, p2, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;

    iget-object v2, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-direct {v0, v2}, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    aput-object p2, v2, v1

    invoke-virtual {v0, v2}, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 719
    :cond_1
    iget-object p1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 606
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 607
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p2, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 609
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance p2, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v0, v1}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$202(Lcom/lody/virtual/client/stub/ResolverActivity;Z)Z

    const/4 v0, 0x0

    .line 617
    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v2}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p4

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_6

    .line 623
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 625
    invoke-virtual {v2, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p2, 0x1

    :goto_0
    if-gt p4, p3, :cond_4

    .line 627
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 628
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v4}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 629
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 633
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 637
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    move v0, v1

    :cond_6
    :goto_2
    if-gt p2, p3, :cond_9

    .line 640
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 641
    iget-object p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz p4, :cond_7

    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 642
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 644
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 645
    iget-object p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iput p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    :cond_7
    if-eqz v0, :cond_8

    .line 649
    iget-object p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v7, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    iget-object v2, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 653
    :cond_8
    iget-object p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v7, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    iget-object v2, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    .line 654
    invoke-static {v4}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 653
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method private rebuildList()V
    .locals 16

    move-object/from16 v6, p0

    .line 487
    iget-object v0, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    iget-object v0, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 490
    iput-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    :goto_0
    move-object v7, v0

    goto :goto_2

    .line 492
    :cond_0
    iget-object v0, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v0}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000

    iget-object v4, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    .line 494
    invoke-static {v4}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$000(Lcom/lody/virtual/client/stub/ResolverActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x40

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    .line 492
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    goto :goto_0

    :goto_2
    if-eqz v7, :cond_f

    .line 517
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 520
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x1

    move v9, v0

    const/4 v0, 0x1

    :goto_3
    if-ge v0, v9, :cond_5

    .line 522
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 529
    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_2

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v3, :cond_4

    :cond_2
    :goto_4
    if-ge v0, v9, :cond_4

    .line 532
    iget-object v3, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v7, :cond_3

    .line 533
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 535
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-le v9, v8, :cond_6

    .line 541
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    .line 542
    invoke-static {v2}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 543
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 546
    :cond_6
    iget-object v0, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 547
    :goto_5
    iget-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v3, v2

    if-ge v0, v3, :cond_a

    .line 548
    aget-object v15, v2, v0

    if-nez v15, :cond_7

    goto :goto_6

    .line 552
    :cond_7
    iget-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    .line 553
    invoke-virtual {v2}, Lcom/lody/virtual/client/stub/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 552
    invoke-virtual {v15, v2, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_8

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ResolverActivity"

    invoke-static {v4, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 559
    :cond_8
    new-instance v12, Landroid/content/pm/ResolveInfo;

    invoke-direct {v12}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 560
    iput-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 561
    instance-of v2, v15, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_9

    .line 562
    move-object v2, v15

    check-cast v2, Landroid/content/pm/LabeledIntent;

    .line 563
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 564
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v12, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 565
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v12, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 566
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v12, Landroid/content/pm/ResolveInfo;->icon:I

    .line 568
    :cond_9
    iget-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v3, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    iget-object v11, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    .line 569
    invoke-virtual {v11}, Lcom/lody/virtual/client/stub/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 568
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 575
    :cond_a
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 577
    iget-object v2, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v2}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 578
    iget-object v3, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v3, v1}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$202(Lcom/lody/virtual/client/stub/ResolverActivity;Z)Z

    move-object v4, v0

    move-object v5, v2

    const/4 v2, 0x0

    const/4 v10, 0x1

    :goto_7
    if-ge v10, v9, :cond_e

    if-nez v5, :cond_b

    .line 581
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 583
    :cond_b
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 584
    iget-object v0, v6, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v0}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_c

    .line 586
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_c
    move-object v12, v0

    .line 588
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v10, -0x1

    move-object/from16 v0, p0

    move-object v1, v7

    .line 591
    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    move v2, v10

    move-object v4, v11

    move-object v5, v12

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, p0

    move-object v1, v7

    .line 597
    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInitialHighlight()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 692
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/lody/virtual/R$layout;->resolve_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 694
    new-instance p3, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;

    invoke-direct {p3, p2}, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 695
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 698
    iget-object p3, p3, Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 699
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {v0}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$300(Lcom/lody/virtual/client/stub/ResolverActivity;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 703
    :cond_0
    iget-object p3, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;)V

    return-object p2
.end method

.method public handlePackagesChanged()V
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->getCount()I

    .line 463
    invoke-direct {p0}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 464
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 465
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-virtual {v0}, Lcom/lody/virtual/client/stub/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    .line 667
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x3000000

    .line 669
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    iget-object p1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 672
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    iget-object p1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object p1
.end method
