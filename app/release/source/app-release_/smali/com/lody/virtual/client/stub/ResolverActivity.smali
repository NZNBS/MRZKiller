.class public Lcom/lody/virtual/client/stub/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;,
        Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;,
        Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;,
        Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;,
        Lcom/lody/virtual/client/stub/ResolverActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field protected mOptions:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field protected mRequestCode:I

.field protected mResultWho:Ljava/lang/String;

.field private mShowExtended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLastSelected:I

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/client/stub/ResolverActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysUseOption:Z

    return p0
.end method

.method static synthetic access$100(Lcom/lody/virtual/client/stub/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lody/virtual/client/stub/ResolverActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mShowExtended:Z

    return p0
.end method

.method static synthetic access$202(Lcom/lody/virtual/client/stub/ResolverActivity;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lody/virtual/client/stub/ResolverActivity;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mIconSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/lody/virtual/client/stub/ResolverActivity;)Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    return-object p0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 181
    :try_start_0
    iget v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 192
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v0, v1}, Lcom/lody/virtual/client/stub/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find resources for package\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ResolverActivity"

    invoke-static {v2, v0, v1}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 82
    invoke-direct {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 84
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "android.intent.category.HOME"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget v0, Lcom/lody/virtual/R$string;->choose:I

    goto :goto_0

    .line 90
    :cond_0
    sget v0, Lcom/lody/virtual/R$string;->choose:I

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 94
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->getCallingUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    .line 93
    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/stub/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)V"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    iput p7, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLaunchedFromUid:I

    .line 102
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 103
    iput-boolean p6, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysUseOption:Z

    .line 104
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p7, Lcom/lody/virtual/R$integer;->config_maxResolverActivityColumns:I

    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mMaxColumns:I

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRegistered:Z

    const-string p7, "activity"

    .line 108
    invoke-virtual {p0, p7}, Lcom/lody/virtual/client/stub/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/app/ActivityManager;

    .line 109
    invoke-virtual {p7}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mIconDpi:I

    .line 110
    invoke-virtual {p7}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p7

    iput p7, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mIconSize:I

    .line 112
    new-instance p7, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    iget v6, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLaunchedFromUid:I

    move-object v0, p7

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object p7, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    .line 114
    invoke-virtual {p7}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result p2

    .line 115
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x11

    if-lt p4, p5, :cond_0

    .line 116
    iget p4, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLaunchedFromUid:I

    if-gez p4, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->finish()V

    return-void

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1, p1}, Lcom/lody/virtual/client/stub/ResolverActivity;->startSelected(IZ)V

    .line 125
    iput-boolean p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRegistered:Z

    .line 126
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->finish()V

    return-void

    .line 129
    :cond_1
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-le p2, p1, :cond_2

    .line 132
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    .line 133
    iget-object p3, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    new-instance p3, Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;

    invoke-direct {p3, p0}, Lcom/lody/virtual/client/stub/ResolverActivity$ItemLongClickListener;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 136
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_3

    .line 138
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0

    .line 141
    :cond_2
    sget p1, Lcom/lody/virtual/R$string;->noApplications:I

    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 143
    :cond_3
    :goto_0
    new-instance p1, Lcom/lody/virtual/client/stub/ResolverActivity$1;

    invoke-direct {p1, p0}, Lcom/lody/virtual/client/stub/ResolverActivity$1;-><init>(Lcom/lody/virtual/client/stub/ResolverActivity;)V

    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 10

    .line 282
    iget-boolean v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.category.DEFAULT"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 297
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v2, 0xfff0000

    and-int/2addr v1, v2

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ResolverActivity"

    const/high16 v5, 0x600000

    const/4 v6, 0x0

    if-ne v1, v5, :cond_2

    .line 300
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 303
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimeType\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v7}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    :cond_2
    :goto_1
    if-eqz v2, :cond_a

    .line 310
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    if-ne v1, v5, :cond_3

    .line 315
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 316
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 317
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 319
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_a

    .line 322
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 324
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PatternMatcher;

    .line 327
    invoke-virtual {v7, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 328
    invoke-virtual {v7}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 333
    :cond_5
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 335
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter$AuthorityEntry;

    .line 337
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v7

    if-ltz v7, :cond_6

    .line 338
    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v1

    .line 339
    invoke-virtual {v5}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-ltz v1, :cond_7

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    :cond_7
    invoke-virtual {v0, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_8
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 347
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    .line 348
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 349
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 350
    invoke-virtual {v2, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 351
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_a
    if-eqz v0, :cond_e

    .line 361
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    iget-object p1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 362
    new-array v1, p1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v2, p1, :cond_c

    .line 365
    iget-object v5, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    iget-object v5, v5, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 366
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v1, v2

    .line 368
    iget v7, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v7, v3, :cond_b

    iget v3, v5, Landroid/content/pm/ResolveInfo;->match:I

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    if-eqz p3, :cond_d

    .line 371
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    .line 371
    invoke-virtual {p1, v0, v3, v1, p3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_3

    .line 375
    :cond_d
    :try_start_1
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/VClientImpl;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p1

    const-string p3, "setLastChosenActivity"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v6

    .line 377
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const/high16 v5, 0x10000

    .line 378
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    .line 379
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    aput-object v2, v1, v0

    .line 375
    invoke-virtual {p1, p3, v1}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 381
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling setLastChosenActivity\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lody/virtual/helper/utils/VLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v4, p1, p3}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_3
    if-eqz p2, :cond_10

    .line 388
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object p1

    iget p3, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {p1, p2, p3}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_f

    .line 391
    invoke-virtual {p0, p2}, Lcom/lody/virtual/client/stub/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 398
    :cond_f
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mOptions:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mResultWho:Ljava/lang/String;

    iget v6, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRequestCode:I

    iget v7, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/ipc/VActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    :cond_10
    :goto_4
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 257
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 259
    :goto_0
    iget-boolean p5, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz p5, :cond_3

    if-eqz p4, :cond_1

    iget p5, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLastSelected:I

    if-eq p5, p1, :cond_3

    .line 260
    :cond_1
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p4, :cond_2

    .line 263
    iget-object p2, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 265
    :cond_2
    iput p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLastSelected:I

    goto :goto_1

    .line 267
    :cond_3
    invoke-virtual {p0, p3, p2}, Lcom/lody/virtual/client/stub/ResolverActivity;->startSelected(IZ)V

    :goto_1
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 214
    iget-boolean v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRegistered:Z

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 243
    iget-boolean p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    iput p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mLastSelected:I

    .line 247
    iget-object v1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 223
    iget-boolean v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mRegistered:Z

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->finish()V

    :cond_1
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    const/4 v2, 0x0

    .line 406
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x80000

    .line 407
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/stub/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startSelected(IZ)V
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/lody/virtual/client/stub/ResolverActivity;->mAdapter:Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, p1}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    .line 277
    invoke-virtual {p0, v0, p1, p2}, Lcom/lody/virtual/client/stub/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 278
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;->finish()V

    return-void
.end method
