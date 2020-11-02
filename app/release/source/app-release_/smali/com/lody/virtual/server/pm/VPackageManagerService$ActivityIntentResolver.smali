.class final Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;
.super Lcom/lody/virtual/server/pm/IntentResolver;
.source "VPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/VPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/IntentResolver<",
        "Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/lody/virtual/server/pm/VPackageManagerService;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->this$0:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-direct {p0}, Lcom/lody/virtual/server/pm/IntentResolver;-><init>()V

    .line 807
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;
    .locals 0

    .line 805
    iget-object p0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public final addActivity(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;Ljava/lang/String;)V
    .locals 6

    .line 845
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 848
    iget-object v3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 849
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 850
    iget-object v4, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with priority > 0, forcing to 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->addFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 869
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    .line 870
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 871
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 872
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0

    .line 805
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 0

    .line 805
    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)Ljava/lang/Object;
    .locals 0

    .line 929
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0

    .line 805
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0

    .line 805
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)Z
    .locals 0

    .line 891
    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0

    .line 805
    check-cast p2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;
    .locals 0

    .line 881
    new-array p1, p1, [Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    return-object p1
.end method

.method protected bridge synthetic newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
    .locals 0

    .line 805
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 896
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 897
    iget-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 898
    iget v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateActivityInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 902
    :cond_0
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 903
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 904
    iget p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    .line 905
    iget-object p3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->filter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 907
    :cond_1
    iget-object p3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 908
    iget-object p3, v0, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget p3, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 909
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 910
    iget-boolean p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 911
    iget p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 912
    iget-object p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 913
    iget p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method protected bridge synthetic newResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0

    .line 805
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->newResult(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 816
    iput p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 817
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 811
    :goto_0
    iput v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 812
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 825
    :cond_0
    iput p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 827
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 828
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 833
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 834
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 836
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 837
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 838
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 841
    invoke-super/range {v1 .. v6}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final removeActivity(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;Ljava/lang/String;)V
    .locals 2

    .line 859
    iget-object p2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    iget-object p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 862
    iget-object v1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 863
    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ActivityIntentResolver;->removeFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 919
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
