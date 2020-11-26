.class public Lmehdi/sakout/aboutpage/AboutPage;
.super Ljava/lang/Object;
.source "AboutPage.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomFont:Landroid/graphics/Typeface;

.field private mDescription:Ljava/lang/String;

.field private mImage:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsRTL:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mImage:I

    .line 45
    iput-boolean v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mIsRTL:Z

    .line 56
    iput-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    sget v0, Lmehdi/sakout/aboutpage/R$layout;->about_page:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lmehdi/sakout/aboutpage/AboutPage;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createItem(Lmehdi/sakout/aboutpage/Element;)Landroid/view/View;
    .locals 7

    .line 515
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x1

    .line 517
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 519
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 520
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 522
    new-instance v3, Lmehdi/sakout/aboutpage/AboutPage$1;

    invoke-direct {v3, p0, p1}, Lmehdi/sakout/aboutpage/AboutPage$1;-><init>(Lmehdi/sakout/aboutpage/AboutPage;Lmehdi/sakout/aboutpage/Element;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    :cond_1
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 535
    iget-object v4, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lmehdi/sakout/aboutpage/R$attr;->selectableItemBackground:I

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 536
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 538
    iget-object v2, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmehdi/sakout/aboutpage/R$dimen;->about_text_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 539
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 540
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 541
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 545
    sget v3, Lmehdi/sakout/aboutpage/R$style;->about_elementTextAppearance:I

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 546
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 547
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v4, p0, Lmehdi/sakout/aboutpage/AboutPage;->mCustomFont:Landroid/graphics/Typeface;

    if-eqz v4, :cond_2

    .line 549
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    const/4 v4, 0x0

    .line 554
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconDrawable()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 555
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 556
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmehdi/sakout/aboutpage/R$dimen;->about_icon_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 557
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 558
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmehdi/sakout/aboutpage/R$dimen;->about_icon_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 560
    invoke-virtual {v4, v5, v1, v5, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 562
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v1, v5, :cond_3

    .line 563
    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconDrawable()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v1

    .line 564
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 566
    :cond_3
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconDrawable()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    :goto_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 571
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getAutoApplyIconTint()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 572
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x20

    if-eq v5, v6, :cond_5

    .line 575
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconTint()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 576
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconTint()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v1, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 578
    :cond_4
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v6, Lmehdi/sakout/aboutpage/R$color;->about_item_icon_color:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v1, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 580
    :cond_5
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconNightTint()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 581
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconNightTint()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v1, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 583
    :cond_6
    iget-object v5, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmehdi/sakout/aboutpage/AboutPageUtils;->getThemeAccentColor(Landroid/content/Context;)I

    move-result v5

    invoke-static {v1, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 588
    :cond_7
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmehdi/sakout/aboutpage/R$dimen;->about_icon_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 589
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 593
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-boolean v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mIsRTL:Z

    if-eqz v1, :cond_a

    .line 598
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_9
    const v1, 0x800005

    :goto_3
    or-int/lit8 v1, v1, 0x10

    .line 600
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 602
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 603
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconDrawable()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 605
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 609
    :cond_a
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getGravity()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_b
    const v1, 0x800003

    :goto_4
    or-int/lit8 v1, v1, 0x10

    .line 610
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 612
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 613
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/Element;->getIconDrawable()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 614
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    :goto_5
    return-object v0
.end method

.method private getSeparator()Landroid/view/View;
    .locals 3

    .line 623
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmehdi/sakout/aboutpage/R$layout;->about_page_separator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEmail(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 81
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_contact_us:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addEmail(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addEmail(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 3

    .line 93
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 94
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 95
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_email:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 96
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_item_icon_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 98
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message/rfc822"

    .line 99
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "android.intent.extra.EMAIL"

    .line 100
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 103
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addFacebook(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 115
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_facebook:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addFacebook(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addFacebook(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 4

    .line 127
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 128
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 129
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_facebook:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 130
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_facebook_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 131
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 133
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 134
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 135
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    const-string v2, "com.facebook.katana"

    invoke-static {v1, v2}, Lmehdi/sakout/aboutpage/AboutPageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 141
    :try_start_0
    iget-object v3, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 143
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const v2, 0x2dd1e2

    if-lt v1, v2, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://facewebmodal/f?href=http://m.facebook.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://page/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 151
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.facebook.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    :goto_1
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 159
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addGitHub(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 332
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_github:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addGitHub(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addGitHub(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 3

    .line 344
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 345
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 346
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_github:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 347
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_github_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 348
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 350
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 351
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 352
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "https://github.com/%s"

    .line 353
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 355
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 356
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addGroup(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 3

    .line 446
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    sget p1, Lmehdi/sakout/aboutpage/R$style;->about_groupTextAppearance:I

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 449
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 451
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mCustomFont:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 455
    :cond_0
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmehdi/sakout/aboutpage/R$dimen;->about_group_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 456
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 459
    iget-boolean v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mIsRTL:Z

    if-eqz v1, :cond_1

    const v1, 0x800015

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 461
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const v1, 0x800013

    .line 463
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 464
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 466
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mView:Landroid/view/View;

    sget v1, Lmehdi/sakout/aboutpage/R$id;->about_providers:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public addInstagram(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 290
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_instagram:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addInstagram(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addInstagram(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 3

    .line 304
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 305
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 306
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_instagram:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 307
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_instagram_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 308
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 310
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 311
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://instagram.com/_u/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 314
    iget-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    const-string v1, "com.instagram.android"

    invoke-static {p1, v1}, Lmehdi/sakout/aboutpage/AboutPageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :cond_0
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 319
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 4

    .line 406
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mView:Landroid/view/View;

    sget v1, Lmehdi/sakout/aboutpage/R$id;->about_providers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 407
    invoke-direct {p0, p1}, Lmehdi/sakout/aboutpage/AboutPage;->createItem(Lmehdi/sakout/aboutpage/Element;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    invoke-direct {p0}, Lmehdi/sakout/aboutpage/AboutPage;->getSeparator()Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmehdi/sakout/aboutpage/R$dimen;->about_separator_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public addPlayStore(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 214
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_play_store:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addPlayStore(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addPlayStore(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 226
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 227
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 228
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_google_play:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 229
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_play_store_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 230
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 233
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 236
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addTwitter(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 171
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_twitter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addTwitter(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addTwitter(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 5

    .line 184
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 185
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 186
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_twitter:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 187
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_twitter_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 188
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 190
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 191
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 192
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    const-string v2, "com.twitter.android"

    invoke-static {v1, v2}, Lmehdi/sakout/aboutpage/AboutPageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "twitter://user?screen_name=%s"

    .line 196
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "http://twitter.com/intent/user?screen_name=%s"

    .line 198
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    :goto_0
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 202
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addWebsite(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 369
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_website:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addWebsite(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addWebsite(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    const-string v0, "http://"

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    :cond_0
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 384
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 385
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_link:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 386
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_item_icon_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 387
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 389
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 390
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 392
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 393
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public addYoutube(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 2

    .line 248
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    sget v1, Lmehdi/sakout/aboutpage/R$string;->about_youtube:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addYoutube(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    return-object p1
.end method

.method public addYoutube(Ljava/lang/String;Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 3

    .line 262
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    .line 263
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 264
    sget p2, Lmehdi/sakout/aboutpage/R$drawable;->about_icon_youtube:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 265
    sget p2, Lmehdi/sakout/aboutpage/R$color;->about_youtube_color:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;

    .line 266
    invoke-virtual {v0, p1}, Lmehdi/sakout/aboutpage/Element;->setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 268
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 269
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "http://youtube.com/channel/%s"

    .line 270
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 272
    iget-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.youtube"

    invoke-static {p1, v1}, Lmehdi/sakout/aboutpage/AboutPageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :cond_0
    invoke-virtual {v0, p2}, Lmehdi/sakout/aboutpage/Element;->setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;

    .line 277
    invoke-virtual {p0, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    return-object p0
.end method

.method public create()Landroid/view/View;
    .locals 3

    .line 495
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mView:Landroid/view/View;

    sget v1, Lmehdi/sakout/aboutpage/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mView:Landroid/view/View;

    sget v2, Lmehdi/sakout/aboutpage/R$id;->image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 497
    iget v2, p0, Lmehdi/sakout/aboutpage/AboutPage;->mImage:I

    if-lez v2, :cond_0

    .line 498
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    :cond_0
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v1, 0x11

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 507
    iget-object v1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mCustomFont:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 511
    :cond_2
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isRTL(Z)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 0

    .line 479
    iput-boolean p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mIsRTL:Z

    return-object p0
.end method

.method public setCustomFont(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 1

    .line 69
    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mCustomFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 0

    .line 484
    iput-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setImage(I)Lmehdi/sakout/aboutpage/AboutPage;
    .locals 0

    .line 419
    iput p1, p0, Lmehdi/sakout/aboutpage/AboutPage;->mImage:I

    return-object p0
.end method
