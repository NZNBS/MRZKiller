.class final Lcom/lody/virtual/server/pm/ProviderIntentResolver;
.super Lcom/lody/virtual/server/pm/IntentResolver;
.source "ProviderIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/IntentResolver<",
        "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/IntentResolver;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addProvider(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already defined; ignoring"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PackageManager"

    invoke-static {v1, p1, v0}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 71
    iget-object v2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    .line 72
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->addFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 89
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->provider:Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 91
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 92
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 93
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

    .line 24
    check-cast p3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)V
    .locals 0

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)Ljava/lang/Object;
    .locals 0

    .line 151
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->provider:Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    return-object p1
.end method

.method protected bridge synthetic isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;)Z
    .locals 0

    .line 112
    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->provider:Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object p2, p2, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;
    .locals 0

    .line 102
    new-array p1, p1, [Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    return-object p1
.end method

.method protected newResult(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 118
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->provider:Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    .line 119
    iget-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/lody/virtual/server/pm/PackageSetting;

    .line 120
    iget v2, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Lcom/lody/virtual/server/pm/PackageSetting;->readUserState(I)Lcom/lody/virtual/server/pm/PackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateProviderInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 125
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 126
    iget p3, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    .line 127
    iget-object p3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->filter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 129
    :cond_1
    iget-object p3, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 130
    iget-object p3, v0, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget p3, p3, Lcom/lody/virtual/server/pm/parser/VPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 131
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 132
    iget-boolean p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 133
    iget p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 134
    iget-object p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 135
    iget p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method protected bridge synthetic newResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->newResult(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

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

    .line 34
    iput p3, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 35
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

    .line 29
    :goto_0
    iput v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    .line 30
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
            "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    iput p3, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 45
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 50
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 58
    invoke-super/range {v1 .. v6}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final removeProvider(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    iget-object v2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    .line 82
    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->removeFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

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

    .line 141
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
