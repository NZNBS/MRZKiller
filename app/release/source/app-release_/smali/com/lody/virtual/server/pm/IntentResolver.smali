.class public abstract Lcom/lody/virtual/server/pm/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final sResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private mActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private mBaseTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private mSchemeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private mTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private mTypedActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private mWildTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/lody/virtual/server/pm/IntentResolver$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/IntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    return-void
.end method

.method private addFilter(Ljava/util/HashMap;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 372
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-result-object v0

    .line 375
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    aput-object p3, v0, v2

    goto :goto_1

    .line 378
    :cond_0
    array-length v3, v0

    move v4, v3

    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 380
    aget-object v5, v0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-ge v4, v3, :cond_2

    .line 384
    aput-object p3, v0, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v3, 0x3

    .line 386
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/lody/virtual/server/pm/IntentResolver;->newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-result-object v1

    .line 387
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    aput-object p3, v1, v3

    .line 389
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZLjava/lang/String;Ljava/lang/String;[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/lody/virtual/server/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    if-eqz v1, :cond_0

    .line 514
    array-length v3, v1

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v15, v14, :cond_7

    .line 518
    aget-object v8, v1, v15

    if-eqz v8, :cond_7

    if-eqz v12, :cond_1

    .line 523
    invoke-virtual {v0, v12, v8}, Lcom/lody/virtual/server/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 527
    :cond_1
    invoke-virtual {v0, v8, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 531
    :cond_2
    iget-object v3, v8, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    const-string v17, "IntentResolver"

    move-object v4, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v11

    move-object v13, v8

    move-object/from16 v8, p2

    const/4 v1, 0x1

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    if-eqz p3, :cond_4

    .line 533
    iget-object v4, v13, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v4, p8

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    :goto_2
    move/from16 v4, p8

    .line 534
    invoke-virtual {v0, v13, v3, v4}, Lcom/lody/virtual/server/pm/IntentResolver;->newResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;II)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 536
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v4, p8

    :cond_6
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p6

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    if-eqz v16, :cond_9

    .line 545
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "IntentResolver"

    if-nez v3, :cond_8

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    .line 546
    invoke-static {v4, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 547
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_9

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    .line 548
    invoke-static {v4, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private collectFilters([Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 162
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 163
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    iget-object v3, v2, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p2}, Lcom/lody/virtual/server/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 4

    .line 104
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 105
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 115
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 120
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 125
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-eq v0, v1, :cond_6

    return v2

    .line 129
    :cond_6
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 130
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-eq v0, v1, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_9

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :cond_9
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 140
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    if-eq v0, v1, :cond_a

    return v2

    .line 144
    :cond_a
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 145
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-eq v0, v1, :cond_b

    return v2

    .line 149
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    .line 150
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p2

    if-eq p1, p2, :cond_c

    return v2

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Lcom/lody/virtual/server/pm/FastImmutableArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/lody/virtual/server/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/pm/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private register_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 459
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 462
    invoke-direct {p0, p3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method private register_mime_types(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 395
    iget-object p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 401
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 407
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 409
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 412
    :goto_1
    iget-object v5, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v5, v2, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    if-lez v3, :cond_2

    .line 415
    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.method private remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 482
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    if-eqz v0, :cond_5

    .line 484
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 485
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ltz v1, :cond_3

    .line 489
    aget-object v3, v0, v1

    if-ne v3, p3, :cond_2

    sub-int v3, v2, v1

    if-lez v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 492
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x0

    .line 494
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-gez v2, :cond_4

    .line 499
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 500
    :cond_4
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 p3, v2, 0x2

    .line 501
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/pm/IntentResolver;->newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    .line 502
    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private unregister_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 473
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 476
    invoke-direct {p0, p3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method private unregister_mime_types(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 425
    iget-object p2, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 431
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 435
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 437
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 439
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 442
    :goto_1
    iget-object v5, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v5, v2, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_2

    .line 445
    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public addFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->register_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "      Type: "

    .line 94
    invoke-direct {p0, p1, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->register_mime_types(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 96
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lody/virtual/server/pm/IntentResolver;->register_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 99
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->register_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected allowFilterResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, ": "

    .line 367
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;-><init>(Lcom/lody/virtual/server/pm/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p1, "IntentFilter"

    return-object p1
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->collectFilters([Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 184
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->collectFilters([Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 187
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->collectFilters([Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 191
    iget-object v3, v2, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method protected isFilterStopped(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 249
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz v10, :cond_3

    const/16 v1, 0x2f

    .line 258
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    .line 260
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 262
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 272
    iget-object v4, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    iget-object v1, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 268
    iget-object v4, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 276
    :goto_1
    iget-object v4, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-object v13, v2

    move-object v14, v3

    goto :goto_3

    .line 277
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-object v13, v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    move-object v13, v1

    :goto_2
    move-object v14, v13

    :goto_3
    if-eqz v11, :cond_4

    .line 291
    iget-object v0, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    :cond_4
    move-object v15, v0

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, v9, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, v1

    .line 301
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/lody/virtual/server/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Lcom/lody/virtual/server/pm/FastImmutableArraySet;

    move-result-object v16

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v7, v12

    move/from16 v8, p4

    .line 303
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZLjava/lang/String;Ljava/lang/String;[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;I)V

    :cond_6
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v6, v13

    move-object v7, v12

    move/from16 v8, p4

    .line 306
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZLjava/lang/String;Ljava/lang/String;[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;I)V

    :cond_7
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v6, v14

    move-object v7, v12

    move/from16 v8, p4

    .line 309
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZLjava/lang/String;Ljava/lang/String;[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;I)V

    :cond_8
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v6, v15

    move-object v7, v12

    move/from16 v8, p4

    .line 312
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZLjava/lang/String;Ljava/lang/String;[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;I)V

    .line 314
    :cond_9
    invoke-virtual {v9, v12}, Lcom/lody/virtual/server/pm/IntentResolver;->sortResults(Ljava/util/List;)V

    return-object v12
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 235
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-static/range {p1 .. p1}, Lcom/lody/virtual/server/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Lcom/lody/virtual/server/pm/FastImmutableArraySet;

    move-result-object v10

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 238
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_0

    move-object/from16 v14, p4

    .line 240
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v11

    move-object v7, v9

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZLjava/lang/String;Ljava/lang/String;[Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/List;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 242
    invoke-virtual {p0, v9}, Lcom/lody/virtual/server/pm/IntentResolver;->sortResults(Ljava/util/List;)V

    return-object v9
.end method

.method public removeFilter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->removeFilterInternal(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    .line 204
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeFilterInternal(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "      Type: "

    .line 210
    invoke-direct {p0, p1, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_mime_types(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 212
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 215
    iget-object v0, p1, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_intent_filter(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/lody/virtual/server/pm/IntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
