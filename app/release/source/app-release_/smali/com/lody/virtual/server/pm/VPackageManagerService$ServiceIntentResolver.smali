.class final Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;
.super Lcom/lody/virtual/server/pm/IntentResolver;
.source "VPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/VPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/IntentResolver<",
        "Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/pm/VPackageManagerService;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->this$0:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-direct {p0}, Lcom/lody/virtual/server/pm/IntentResolver;-><init>()V

    .line 939
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V
    .locals 0

    .line 937
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;
    .locals 0

    .line 937
    iget-object p0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public final addService(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;)V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 979
    iget-object v2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    .line 980
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->addFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0

    .line 937
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 996
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->service:Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    .line 997
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 998
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 999
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1000
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

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 0

    .line 937
    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)V
    .locals 0

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0

    .line 937
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)Ljava/lang/Object;
    .locals 0

    .line 1057
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->service:Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    return-object p1
.end method

.method protected bridge synthetic isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0

    .line 937
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0

    .line 937
    check-cast p2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;)Z
    .locals 0

    .line 1019
    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->service:Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
    .locals 0

    .line 937
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;
    .locals 0

    .line 1009
    new-array p1, p1, [Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    return-object p1
.end method

.method protected newResult(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 1024
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->service:Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    .line 1025
    iget-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 1026
    iget v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateServiceInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1030
    :cond_0
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1031
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1032
    iget p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    .line 1033
    iget-object p3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->filter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1035
    :cond_1
    iget-object p3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1036
    iget-object p3, v0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget p3, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1037
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1038
    iget-boolean p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1039
    iget p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1040
    iget-object p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1041
    iget p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method protected bridge synthetic newResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0

    .line 937
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->newResult(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
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

    .line 948
    iput p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 949
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

    .line 943
    :goto_0
    iput v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 944
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 957
    :cond_0
    iput p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 959
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 960
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 964
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 965
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 966
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    .line 967
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 968
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 971
    invoke-super/range {v1 .. v6}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final removeService(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;)V
    .locals 3

    .line 985
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 989
    iget-object v2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    .line 990
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->removeFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

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

    .line 1047
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
