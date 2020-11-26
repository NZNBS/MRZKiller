.class public Landroid/content/res/XResources;
.super Lxposed/dummy/XResourcesSuperClass;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XResources$XMLInstanceDetails;,
        Landroid/content/res/XResources$DimensionReplacement;,
        Landroid/content/res/XResources$DrawableLoader;,
        Landroid/content/res/XResources$XTypedArray;,
        Landroid/content/res/XResources$ResourceNames;
    }
.end annotation


# static fields
.field private static final EXTRA_XML_INSTANCE_DETAILS:Ljava/lang/String; = "xmlInstanceDetails"

.field private static final sColorStateListCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIncludedLayouts:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/LinkedList<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLatestResKey:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLayoutCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/callbacks/XC_LayoutInflated;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sReplacements:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReplacementsCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final sResDirLastModified:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResDirPackageNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResourceNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/XResources$ResourceNames;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSystemReplacementsCache:[B

.field private static final sXmlInstanceDetails:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/XResources$XMLInstanceDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsObjectInited:Z

.field private mPackageName:Ljava/lang/String;

.field private mReplacementsCache:[B

.field private mResDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sReplacements:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sResourceNames:Landroid/util/SparseArray;

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 59
    sput-object v0, Landroid/content/res/XResources;->sSystemReplacementsCache:[B

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sReplacementsCacheMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/content/res/XResources;->sColorStateListCache:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sLayoutCallbacks:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sXmlInstanceDetails:Ljava/util/WeakHashMap;

    .line 68
    new-instance v0, Landroid/content/res/XResources$1;

    invoke-direct {v0}, Landroid/content/res/XResources$1;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sIncludedLayouts:Ljava/lang/ThreadLocal;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sResDirLastModified:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/XResources;->sResDirPackageNames:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 77
    sput-object v0, Landroid/content/res/XResources;->sLatestResKey:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lxposed/dummy/XResourcesSuperClass;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .locals 1

    .line 55
    sget-object v0, Landroid/content/res/XResources;->sXmlInstanceDetails:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 55
    sget-object v0, Landroid/content/res/XResources;->sIncludedLayouts:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/res/XResources;I)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .locals 1

    .line 55
    sget-object v0, Landroid/content/res/XResources;->sColorStateListCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getFakeResId(Landroid/content/res/Resources;I)I
    .locals 0

    .line 1207
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/res/XResources;->getFakeResId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFakeResId(Ljava/lang/String;)I
    .locals 1

    .line 1192
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x7e000000

    or-int/2addr p0, v0

    return p0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "android"

    return-object p0

    .line 153
    :cond_0
    sget-object v0, Landroid/content/res/XResources;->sResDirPackageNames:Ljava/util/HashMap;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    return-object v1

    .line 161
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 163
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not determine package name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :cond_2
    invoke-static {p0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 170
    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "Xposed"

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " had to be retrieved via parser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 173
    invoke-static {v0, p0}, Landroid/content/res/XResources;->setPackageNameForResDir(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine package name for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    .line 155
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getPackageNameDuringConstruction()Ljava/lang/String;
    .locals 2

    .line 193
    sget-object v0, Landroid/content/res/XResources;->sLatestResKey:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mResDir"

    .line 196
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {v0}, Landroid/content/res/XResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can only be called during getTopLevelResources()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getReplacement(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    :cond_0
    const/high16 v1, 0x7f000000

    const/4 v2, 0x1

    const/high16 v3, 0x70000

    if-ge p1, v1, :cond_1

    and-int v1, p1, v3

    shr-int/lit8 v1, v1, 0xb

    and-int/lit16 v3, p1, 0xf8

    shr-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    .line 603
    sget-object v3, Landroid/content/res/XResources;->sSystemReplacementsCache:[B

    aget-byte v1, v3, v1

    and-int/lit8 v3, p1, 0x7

    shl-int/2addr v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    return-object v0

    .line 605
    :cond_1
    iget-object v1, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    if-eqz v1, :cond_2

    and-int v1, p1, v3

    shr-int/lit8 v1, v1, 0xc

    and-int/lit8 v3, p1, 0x78

    shr-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    .line 607
    iget-object v3, p0, Landroid/content/res/XResources;->mReplacementsCache:[B

    aget-byte v1, v3, v1

    and-int/lit8 v3, p1, 0x7

    shl-int/2addr v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    return-object v0

    .line 612
    :cond_2
    sget-object v1, Landroid/content/res/XResources;->sReplacements:Landroid/util/SparseArray;

    monitor-enter v1

    .line 613
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 614
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_3

    return-object v0

    .line 619
    :cond_3
    monitor-enter p1

    .line 620
    :try_start_1
    iget-object v1, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 621
    iget-object v2, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 622
    :cond_5
    :goto_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    .line 624
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 614
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private getResourceNames(I)Landroid/content/res/XResources$ResourceNames;
    .locals 7

    .line 298
    new-instance v6, Landroid/content/res/XResources$ResourceNames;

    .line 300
    invoke-virtual {p0, p1}, Landroid/content/res/XResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p0, p1}, Landroid/content/res/XResources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p0, p1}, Landroid/content/res/XResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/XResources$ResourceNames;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XResources$1;)V

    return-object v6
.end method

.method private static getSystemResourceNames(I)Landroid/content/res/XResources$ResourceNames;
    .locals 8

    .line 306
    invoke-static {}, Landroid/content/res/XResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    new-instance v7, Landroid/content/res/XResources$ResourceNames;

    .line 309
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/XResources$ResourceNames;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XResources$1;)V

    return-object v7
.end method

.method private static hookLayoutInternal(Ljava/lang/String;ILandroid/content/res/XResources$ResourceNames;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 2

    if-eqz p1, :cond_2

    .line 1696
    sget-object v0, Landroid/content/res/XResources;->sLayoutCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1697
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1699
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1700
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1702
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1705
    monitor-enter v1

    .line 1706
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    if-nez v0, :cond_1

    .line 1708
    new-instance v0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    .line 1709
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    invoke-virtual {v0, p3}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 1715
    invoke-static {p0, p2}, Landroid/content/res/XResources;->putResourceNames(Ljava/lang/String;Landroid/content/res/XResources$ResourceNames;)V

    .line 1717
    new-instance p2, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p3, p0, p1}, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;-><init>(Lde/robv/android/xposed/callbacks/XC_LayoutInflated;Ljava/lang/String;I)V

    return-object p2

    :catchall_0
    move-exception p0

    .line 1711
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1702
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 1693
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id 0 is not an allowed resource identifier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hookSystemWideLayout(ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 2

    const/high16 v0, 0x7f000000

    if-ge p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1643
    invoke-static {p0}, Landroid/content/res/XResources;->getSystemResourceNames(I)Landroid/content/res/XResources$ResourceNames;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Landroid/content/res/XResources;->hookLayoutInternal(Ljava/lang/String;ILandroid/content/res/XResources$ResourceNames;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    move-result-object p0

    return-object p0

    .line 1642
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ids >= 0x7f000000 are app specific and cannot be set for the framework"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hookSystemWideLayout(Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1659
    invoke-static {}, Landroid/content/res/XResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    invoke-static {v0, p1}, Landroid/content/res/XResources;->hookSystemWideLayout(ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    move-result-object p0

    return-object p0

    .line 1661
    :cond_0
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static hookSystemWideLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 1

    .line 1685
    invoke-static {}, Landroid/content/res/XResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    invoke-static {v0, p3}, Landroid/content/res/XResources;->hookSystemWideLayout(ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    move-result-object p0

    return-object p0

    .line 1687
    :cond_0
    new-instance p3, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static init(Ljava/lang/ThreadLocal;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    sput-object p0, Landroid/content/res/XResources;->sLatestResKey:Ljava/lang/ThreadLocal;

    .line 204
    const-class p0, Landroid/view/LayoutInflater;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/content/res/XResources$2;

    invoke-direct {v2}, Landroid/content/res/XResources$2;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "inflate"

    invoke-static {p0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 225
    new-instance p0, Landroid/content/res/XResources$3;

    invoke-direct {p0}, Landroid/content/res/XResources$3;-><init>()V

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "parseInclude"

    const/16 v7, 0x15

    if-ge v1, v7, :cond_0

    .line 252
    const-class v1, Landroid/view/LayoutInflater;

    new-array v0, v0, [Ljava/lang/Object;

    const-class v7, Lorg/xmlpull/v1/XmlPullParser;

    aput-object v7, v0, v3

    const-class v3, Landroid/view/View;

    aput-object v3, v0, v4

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v0, v5

    aput-object p0, v0, v6

    invoke-static {v1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0

    .line 254
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    const/4 v8, 0x5

    if-ge v1, v7, :cond_1

    .line 255
    const-class v1, Landroid/view/LayoutInflater;

    new-array v7, v8, [Ljava/lang/Object;

    const-class v8, Lorg/xmlpull/v1/XmlPullParser;

    aput-object v8, v7, v3

    const-class v3, Landroid/view/View;

    aput-object v3, v7, v4

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v7, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v7, v6

    aput-object p0, v7, v0

    invoke-static {v1, v2, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0

    .line 258
    :cond_1
    const-class v1, Landroid/view/LayoutInflater;

    new-array v7, v8, [Ljava/lang/Object;

    const-class v8, Lorg/xmlpull/v1/XmlPullParser;

    aput-object v8, v7, v3

    const-class v3, Landroid/content/Context;

    aput-object v3, v7, v4

    const-class v3, Landroid/view/View;

    aput-object v3, v7, v5

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v7, v6

    aput-object p0, v7, v0

    invoke-static {v1, v2, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :goto_0
    return-void
.end method

.method private static isXmlCached(Landroid/content/res/Resources;I)Z
    .locals 4

    const-string v0, "mCachedXmlBlockIds"

    .line 1121
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    .line 1122
    monitor-enter p0

    .line 1123
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    .line 1125
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static putResourceNames(Ljava/lang/String;Landroid/content/res/XResources$ResourceNames;)V
    .locals 3

    .line 315
    iget v0, p1, Landroid/content/res/XResources$ResourceNames;->id:I

    .line 316
    sget-object v1, Landroid/content/res/XResources;->sResourceNames:Landroid/util/SparseArray;

    monitor-enter v1

    .line 317
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 320
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    :cond_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    :try_start_1
    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 324
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 325
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private static native rewriteXmlReferencesNative(JLandroid/content/res/XResources;Landroid/content/res/Resources;)V
.end method

.method public static setPackageNameForResDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    sget-object v0, Landroid/content/res/XResources;->sResDirPackageNames:Ljava/util/HashMap;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V
    .locals 6

    if-eqz p2, :cond_0

    .line 560
    iget-object v0, p2, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_6

    const/high16 v1, 0x7f000000

    if-nez v0, :cond_2

    if-ge p0, v1, :cond_1

    goto :goto_1

    .line 564
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ids >= 0x7f000000 are app specific and cannot be set for the framework"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 566
    :cond_2
    :goto_1
    instance-of v2, p1, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    const/high16 v3, 0x70000

    if-ge p0, v1, :cond_3

    and-int p2, p0, v3

    shr-int/lit8 p2, p2, 0xb

    and-int/lit16 v1, p0, 0xf8

    shr-int/lit8 v1, v1, 0x3

    or-int/2addr p2, v1

    .line 572
    sget-object v1, Landroid/content/res/XResources;->sSystemReplacementsCache:[B

    monitor-enter v1

    .line 573
    :try_start_0
    aget-byte v3, v1, p2

    and-int/lit8 v4, p0, 0x7

    shl-int/2addr v2, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 574
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    and-int v1, p0, v3

    shr-int/lit8 v1, v1, 0xc

    and-int/lit8 v3, p0, 0x78

    shr-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    .line 577
    iget-object v3, p2, Landroid/content/res/XResources;->mReplacementsCache:[B

    monitor-enter v3

    .line 578
    :try_start_1
    iget-object p2, p2, Landroid/content/res/XResources;->mReplacementsCache:[B

    aget-byte v4, p2, v1

    and-int/lit8 v5, p0, 0x7

    shl-int/2addr v2, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 579
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 582
    :goto_2
    sget-object p2, Landroid/content/res/XResources;->sReplacements:Landroid/util/SparseArray;

    monitor-enter p2

    .line 583
    :try_start_2
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 585
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 586
    invoke-virtual {p2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    :cond_4
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 579
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 567
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable replacements are deprecated since Xposed 2.1. Use DrawableLoader instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id 0 is not an allowed resource identifier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSystemWideReplacement(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 512
    invoke-static {p0, p1, v0}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V

    return-void
.end method

.method public static setSystemWideReplacement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    invoke-static {}, Landroid/content/res/XResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {v0, p1, v1}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V

    return-void

    .line 529
    :cond_0
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setSystemWideReplacement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 553
    invoke-static {}, Landroid/content/res/XResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 556
    invoke-static {v0, p3, p0}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V

    return-void

    .line 555
    :cond_0
    new-instance p3, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static translateAttrId(Ljava/lang/String;Landroid/content/res/XResources;)I
    .locals 2

    .line 1238
    iget-object v0, p1, Landroid/content/res/XResources;->mPackageName:Ljava/lang/String;

    :try_start_0
    const-string v1, "attr"

    .line 1241
    invoke-virtual {p1, p0, v1, v0}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1243
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attribute "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found in original resources"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static translateResId(ILandroid/content/res/XResources;Landroid/content/res/Resources;)I
    .locals 7

    .line 1143
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1145
    iget-object v2, p1, Landroid/content/res/XResources;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 1149
    :try_start_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 1154
    :goto_0
    :try_start_2
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1155
    invoke-virtual {p2, p0, v4, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1158
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    iget v4, v4, Landroid/util/TypedValue;->data:I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "id"

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 1161
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is neither defined in module nor in original resources"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return v3

    :cond_2
    if-nez v2, :cond_3

    .line 1168
    invoke-static {p2, p0}, Landroid/content/res/XResources;->getFakeResId(Landroid/content/res/Resources;I)I

    move-result v2

    :cond_3
    if-eqz v4, :cond_4

    .line 1171
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1172
    new-instance v0, Landroid/content/res/XResForwarder;

    invoke-direct {v0, p2, p0}, Landroid/content/res/XResForwarder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p1, v2, v0}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    return v2

    :catch_2
    move-exception p1

    .line 1176
    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return p0
.end method

.method public static unhookLayout(Ljava/lang/String;ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)V
    .locals 1

    .line 1723
    sget-object v0, Landroid/content/res/XResources;->sLayoutCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1724
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 1726
    monitor-exit v0

    return-void

    .line 1727
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1730
    monitor-enter p1

    .line 1731
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    if-nez p0, :cond_1

    .line 1733
    monitor-exit p1

    return-void

    .line 1734
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1736
    invoke-virtual {p0, p2}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 1734
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1727
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method


# virtual methods
.method public addResource(Landroid/content/res/Resources;I)I
    .locals 3

    .line 1226
    invoke-static {p1, p2}, Landroid/content/res/XResources;->getFakeResId(Landroid/content/res/Resources;I)I

    move-result v0

    .line 1227
    sget-object v1, Landroid/content/res/XResources;->sReplacements:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1228
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 1229
    new-instance v2, Landroid/content/res/XResForwarder;

    invoke-direct {v2, p1, p2}, Landroid/content/res/XResForwarder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0, v0, v2}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;)V

    .line 1230
    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 631
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_2

    .line 632
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 633
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 635
    invoke-static {p1, v0}, Landroid/content/res/XResources;->isXmlCached(Landroid/content/res/Resources;I)Z

    move-result v1

    .line 636
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v1, :cond_1

    .line 639
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const-string v3, "mParseState"

    if-lt v1, v2, :cond_0

    .line 640
    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 641
    :cond_0
    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 642
    :goto_0
    invoke-static {v1, v2, p0, p1}, Landroid/content/res/XResources;->rewriteXmlReferencesNative(JLandroid/content/res/XResources;Landroid/content/res/Resources;)V

    :cond_1
    return-object v0

    .line 647
    :cond_2
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 653
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 654
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 655
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 656
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 657
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 658
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 659
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 661
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getColor(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 667
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 668
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 669
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 670
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 671
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 672
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 673
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 675
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 681
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 682
    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    .line 684
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 685
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 686
    sget-object v1, Landroid/content/res/XResources;->sColorStateListCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 687
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 689
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 690
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 692
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    .line 693
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 694
    :cond_2
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_3

    .line 695
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 696
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 697
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 699
    :cond_3
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getDimension(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 705
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 706
    instance-of v1, v0, Landroid/content/res/XResources$DimensionReplacement;

    if-eqz v1, :cond_0

    .line 707
    check-cast v0, Landroid/content/res/XResources$DimensionReplacement;

    invoke-virtual {p0}, Landroid/content/res/XResources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/XResources$DimensionReplacement;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    .line 708
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 709
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 710
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 711
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1

    .line 713
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getDimension(I)F

    move-result p1

    return p1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 719
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 720
    instance-of v1, v0, Landroid/content/res/XResources$DimensionReplacement;

    if-eqz v1, :cond_0

    .line 721
    check-cast v0, Landroid/content/res/XResources$DimensionReplacement;

    invoke-virtual {p0}, Landroid/content/res/XResources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/XResources$DimensionReplacement;->getDimensionPixelOffset(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 722
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 723
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 724
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 725
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 727
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelSize(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 734
    instance-of v1, v0, Landroid/content/res/XResources$DimensionReplacement;

    if-eqz v1, :cond_0

    .line 735
    check-cast v0, Landroid/content/res/XResources$DimensionReplacement;

    invoke-virtual {p0}, Landroid/content/res/XResources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/XResources$DimensionReplacement;->getDimensionPixelSize(Landroid/util/DisplayMetrics;)I

    move-result p1

    return p1

    .line 736
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 737
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 738
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 739
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 741
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "getDrawable"

    .line 748
    :try_start_0
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->incrementMethodDepth(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 749
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v1

    .line 750
    instance-of v2, v1, Landroid/content/res/XResources$DrawableLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 752
    :try_start_1
    check-cast v1, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v1, p0, p1}, Landroid/content/res/XResources$DrawableLoader;->newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 766
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v1

    .line 755
    :try_start_2
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 756
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 757
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 766
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 758
    :cond_1
    :try_start_3
    instance-of v2, v1, Landroid/content/res/XResForwarder;

    if-eqz v2, :cond_2

    .line 759
    move-object p1, v1

    check-cast p1, Landroid/content/res/XResForwarder;

    invoke-virtual {p1}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 760
    check-cast v1, Landroid/content/res/XResForwarder;

    invoke-virtual {v1}, Landroid/content/res/XResForwarder;->getId()I

    move-result v1

    .line 761
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 766
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 764
    :cond_2
    :goto_0
    :try_start_4
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 766
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    throw p1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "getDrawable"

    .line 774
    :try_start_0
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->incrementMethodDepth(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 775
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v1

    .line 776
    instance-of v2, v1, Landroid/content/res/XResources$DrawableLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 778
    :try_start_1
    check-cast v1, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v1, p0, p1}, Landroid/content/res/XResources$DrawableLoader;->newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 792
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v1

    .line 781
    :try_start_2
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 782
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 783
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 792
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 784
    :cond_1
    :try_start_3
    instance-of v2, v1, Landroid/content/res/XResForwarder;

    if-eqz v2, :cond_2

    .line 785
    move-object p1, v1

    check-cast p1, Landroid/content/res/XResForwarder;

    invoke-virtual {p1}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 786
    check-cast v1, Landroid/content/res/XResForwarder;

    invoke-virtual {v1}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 787
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 792
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 790
    :cond_2
    :goto_0
    :try_start_4
    invoke-super {p0, p1, p2}, Lxposed/dummy/XResourcesSuperClass;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 792
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    throw p1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "getDrawable"

    .line 800
    :try_start_0
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->incrementMethodDepth(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 801
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v1

    .line 802
    instance-of v2, v1, Landroid/content/res/XResources$DrawableLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 804
    :try_start_1
    check-cast v1, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v1, p0, p1}, Landroid/content/res/XResources$DrawableLoader;->newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 818
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v1

    .line 807
    :try_start_2
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 808
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 809
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 818
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 810
    :cond_1
    :try_start_3
    instance-of v2, v1, Landroid/content/res/XResForwarder;

    if-eqz v2, :cond_2

    .line 811
    move-object p1, v1

    check-cast p1, Landroid/content/res/XResForwarder;

    invoke-virtual {p1}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 812
    check-cast v1, Landroid/content/res/XResForwarder;

    invoke-virtual {v1}, Landroid/content/res/XResForwarder;->getId()I

    move-result p2

    .line 813
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 818
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 816
    :cond_2
    :goto_0
    :try_start_4
    invoke-super {p0, p1, p2, p3}, Lxposed/dummy/XResourcesSuperClass;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 818
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    throw p1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "getDrawableForDensity"

    .line 826
    :try_start_0
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->incrementMethodDepth(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 827
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v1

    .line 828
    instance-of v2, v1, Landroid/content/res/XResources$DrawableLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 830
    :try_start_1
    check-cast v1, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/XResources$DrawableLoader;->newDrawableForDensity(Landroid/content/res/XResources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 844
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v1

    .line 833
    :try_start_2
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 834
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 835
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 844
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 836
    :cond_1
    :try_start_3
    instance-of v2, v1, Landroid/content/res/XResForwarder;

    if-eqz v2, :cond_2

    .line 837
    move-object p1, v1

    check-cast p1, Landroid/content/res/XResForwarder;

    invoke-virtual {p1}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 838
    check-cast v1, Landroid/content/res/XResForwarder;

    invoke-virtual {v1}, Landroid/content/res/XResForwarder;->getId()I

    move-result v1

    .line 839
    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 844
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 842
    :cond_2
    :goto_0
    :try_start_4
    invoke-super {p0, p1, p2}, Lxposed/dummy/XResourcesSuperClass;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 844
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    throw p1
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "getDrawableForDensity"

    .line 852
    :try_start_0
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->incrementMethodDepth(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 853
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v1

    .line 854
    instance-of v2, v1, Landroid/content/res/XResources$DrawableLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 856
    :try_start_1
    check-cast v1, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/XResources$DrawableLoader;->newDrawableForDensity(Landroid/content/res/XResources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 870
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v1

    .line 859
    :try_start_2
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 860
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 861
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 870
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 862
    :cond_1
    :try_start_3
    instance-of v2, v1, Landroid/content/res/XResForwarder;

    if-eqz v2, :cond_2

    .line 863
    move-object p1, v1

    check-cast p1, Landroid/content/res/XResForwarder;

    invoke-virtual {p1}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 864
    check-cast v1, Landroid/content/res/XResForwarder;

    invoke-virtual {v1}, Landroid/content/res/XResForwarder;->getId()I

    move-result p3

    .line 865
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 870
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 868
    :cond_2
    :goto_0
    :try_start_4
    invoke-super {p0, p1, p2, p3}, Lxposed/dummy/XResourcesSuperClass;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 870
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    throw p1
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "getDrawableForDensity"

    .line 878
    :try_start_0
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->incrementMethodDepth(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 879
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v1

    .line 880
    instance-of v2, v1, Landroid/content/res/XResources$DrawableLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 882
    :try_start_1
    check-cast v1, Landroid/content/res/XResources$DrawableLoader;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/XResources$DrawableLoader;->newDrawableForDensity(Landroid/content/res/XResources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 896
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v1

    .line 885
    :try_start_2
    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 886
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 887
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 896
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 888
    :cond_1
    :try_start_3
    instance-of v2, v1, Landroid/content/res/XResForwarder;

    if-eqz v2, :cond_2

    .line 889
    move-object p1, v1

    check-cast p1, Landroid/content/res/XResForwarder;

    invoke-virtual {p1}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 890
    check-cast v1, Landroid/content/res/XResForwarder;

    invoke-virtual {v1}, Landroid/content/res/XResForwarder;->getId()I

    move-result p3

    .line 891
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 896
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    .line 894
    :cond_2
    :goto_0
    :try_start_4
    invoke-super {p0, p1, p2, p3, p4}, Lxposed/dummy/XResourcesSuperClass;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 896
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    return-object p1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->decrementMethodDepth(Ljava/lang/String;)I

    throw p1
.end method

.method public getFraction(III)F
    .locals 2

    .line 903
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 904
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 905
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 906
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 907
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    return p1

    .line 909
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lxposed/dummy/XResourcesSuperClass;->getFraction(III)F

    move-result p1

    return p1
.end method

.method public getIntArray(I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 929
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 930
    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    .line 931
    check-cast v0, [I

    check-cast v0, [I

    return-object v0

    .line 932
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 933
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 934
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 935
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    return-object p1

    .line 937
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getIntArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getInteger(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 915
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 916
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 917
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 918
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 919
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 920
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 921
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 923
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 944
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 945
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 946
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 947
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 949
    invoke-static {v1, v0}, Landroid/content/res/XResources;->isXmlCached(Landroid/content/res/Resources;I)Z

    move-result v2

    .line 950
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v2, :cond_2

    .line 953
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const-string v2, "mParseState"

    .line 954
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-string v2, "mParseState"

    .line 955
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 956
    :goto_0
    invoke-static {v2, v3, p0, v1}, Landroid/content/res/XResources;->rewriteXmlReferencesNative(JLandroid/content/res/XResources;Landroid/content/res/Resources;)V

    goto :goto_1

    .line 959
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 964
    :cond_2
    :goto_1
    sget-object v1, Landroid/content/res/XResources;->sLayoutCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 965
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 966
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v2, :cond_8

    .line 969
    monitor-enter v2

    .line 970
    :try_start_1
    iget-object v1, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    if-nez v1, :cond_3

    .line 971
    iget-object v3, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 972
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    :cond_3
    move-object v7, v1

    .line 973
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v7, :cond_8

    const-string v1, "layout"

    const-string v2, "mTmpValue"

    .line 976
    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TypedValue;

    const/4 v3, 0x1

    .line 977
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/XResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 978
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 979
    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 980
    array-length v6, v4

    if-ne v6, v5, :cond_4

    .line 981
    aget-object v1, v4, v3

    goto :goto_2

    .line 983
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" for resource id 0x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 986
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    const-string v4, "Could not find file name for resource id 0x"

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :goto_2
    move-object v6, v1

    .line 989
    sget-object v1, Landroid/content/res/XResources;->sXmlInstanceDetails:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 990
    :try_start_2
    sget-object v2, Landroid/content/res/XResources;->sResourceNames:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 991
    :try_start_3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_7

    .line 993
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 994
    :try_start_4
    new-instance v9, Landroid/content/res/XResources$XMLInstanceDetails;

    iget-object v3, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/res/XResources$ResourceNames;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/content/res/XResources$XMLInstanceDetails;-><init>(Landroid/content/res/XResources;Landroid/content/res/XResources$ResourceNames;Ljava/lang/String;Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;Landroid/content/res/XResources$1;)V

    .line 995
    invoke-virtual {v1, v0, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v3, Landroid/content/res/XResources;->sIncludedLayouts:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    if-eqz v3, :cond_6

    const-string v4, "xmlInstanceDetails"

    .line 1000
    invoke-virtual {v3, v4, v9}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1001
    :cond_6
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 1003
    :cond_7
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1004
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 1003
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    .line 1004
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 973
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    :cond_8
    :goto_4
    return-object v0

    :catchall_4
    move-exception p1

    .line 966
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p1
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1014
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1015
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1016
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1017
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1018
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object p1

    return-object p1

    .line 1020
    :cond_0
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getMovie(I)Landroid/graphics/Movie;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/content/res/XResources;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1026
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1027
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_0

    .line 1028
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1029
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1030
    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1032
    :cond_0
    invoke-super {p0, p1, p2}, Lxposed/dummy/XResourcesSuperClass;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1041
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1042
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1043
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1044
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1045
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1046
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1047
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1049
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1055
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1056
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1057
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 1058
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1059
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1060
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1061
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1063
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1072
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1073
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1074
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 1075
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1076
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1077
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1078
    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1080
    :cond_1
    invoke-super {p0, p1, p2}, Lxposed/dummy/XResourcesSuperClass;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1086
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1087
    instance-of v1, v0, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1088
    check-cast v0, [Ljava/lang/CharSequence;

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0

    .line 1089
    :cond_0
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_1

    .line 1090
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1091
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1092
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1094
    :cond_1
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1100
    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getReplacement(I)Ljava/lang/Object;

    move-result-object v0

    .line 1101
    instance-of v1, v0, Landroid/content/res/XResForwarder;

    if-eqz v1, :cond_2

    .line 1102
    check-cast v0, Landroid/content/res/XResForwarder;

    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1103
    invoke-virtual {v0}, Landroid/content/res/XResForwarder;->getId()I

    move-result v0

    .line 1105
    invoke-static {p1, v0}, Landroid/content/res/XResources;->isXmlCached(Landroid/content/res/Resources;I)Z

    move-result v1

    .line 1106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v1, :cond_1

    .line 1109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const-string v3, "mParseState"

    if-lt v1, v2, :cond_0

    .line 1110
    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 1111
    :cond_0
    invoke-static {v0, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 1112
    :goto_0
    invoke-static {v1, v2, p0, p1}, Landroid/content/res/XResources;->rewriteXmlReferencesNative(JLandroid/content/res/XResources;Landroid/content/res/Resources;)V

    :cond_1
    return-object v0

    .line 1117
    :cond_2
    invoke-super {p0, p1}, Lxposed/dummy/XResourcesSuperClass;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public hookLayout(ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 2

    .line 1592
    iget-object v0, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/content/res/XResources;->getResourceNames(I)Landroid/content/res/XResources$ResourceNames;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Landroid/content/res/XResources;->hookLayoutInternal(Ljava/lang/String;ILandroid/content/res/XResources$ResourceNames;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    move-result-object p1

    return-object p1
.end method

.method public hookLayout(Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1607
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {p0, v0, p2}, Landroid/content/res/XResources;->hookLayout(ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    move-result-object p1

    return-object p1

    .line 1609
    :cond_0
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hookLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;
    .locals 1

    .line 1626
    invoke-virtual {p0, p3, p2, p1}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    invoke-virtual {p0, v0, p4}, Landroid/content/res/XResources;->hookLayout(ILde/robv/android/xposed/callbacks/XC_LayoutInflated;)Lde/robv/android/xposed/callbacks/XC_LayoutInflated$Unhook;

    move-result-object p1

    return-object p1

    .line 1628
    :cond_0
    new-instance p4, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public initObject(Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-boolean v0, p0, Landroid/content/res/XResources;->mIsObjectInited:Z

    if-nez v0, :cond_2

    .line 93
    iput-object p1, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Landroid/content/res/XResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/XResources;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 97
    sget-object v0, Landroid/content/res/XResources;->sReplacementsCacheMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/content/res/XResources;->mReplacementsCache:[B

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 100
    iput-object v1, p0, Landroid/content/res/XResources;->mReplacementsCache:[B

    .line 101
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Landroid/content/res/XResources;->mIsObjectInited:Z

    return-void

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Object has already been initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFirstLoad()Z
    .locals 6

    .line 111
    sget-object v0, Landroid/content/res/XResources;->sReplacements:Landroid/util/SparseArray;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 113
    monitor-exit v0

    return v2

    .line 115
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 116
    sget-object v3, Landroid/content/res/XResources;->sResDirLastModified:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 117
    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    monitor-exit v0

    return v2

    .line 120
    :cond_1
    iget-object v5, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v4, :cond_2

    .line 123
    monitor-exit v0

    return v1

    :cond_2
    const/4 v3, 0x0

    .line 126
    :goto_0
    sget-object v4, Landroid/content/res/XResources;->sReplacements:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 127
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iget-object v5, p0, Landroid/content/res/XResources;->mResDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_3
    iget-object v3, p0, Landroid/content/res/XResources;->mReplacementsCache:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 130
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setReplacement(ILjava/lang/Object;)V
    .locals 0

    .line 339
    invoke-static {p1, p2, p0}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V

    return-void
.end method

.method public setReplacement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {v0, p2, p0}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V

    return-void

    .line 355
    :cond_0
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setReplacement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 498
    invoke-virtual {p0, p3, p2, p1}, Landroid/content/res/XResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {v0, p4, p0}, Landroid/content/res/XResources;->setReplacement(ILjava/lang/Object;Landroid/content/res/XResources;)V

    return-void

    .line 500
    :cond_0
    new-instance p4, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p4
.end method
