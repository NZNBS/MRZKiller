.class public Ljonathanfinerty/once/Once;
.super Ljava/lang/Object;
.source "Once.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljonathanfinerty/once/Once$Scope;
    }
.end annotation


# static fields
.field public static final THIS_APP_INSTALL:I = 0x0

.field public static final THIS_APP_VERSION:I = 0x1

.field private static lastAppUpdatedTime:J = -0x1L

.field private static tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

.field private static toDoSet:Ljonathanfinerty/once/PersistedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beenDone(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljonathanfinerty/once/Once;->beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result p0

    return p0
.end method

.method public static beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 6

    .line 148
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0, p1}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2, p0}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result p0

    return p0

    .line 160
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_3
    invoke-interface {p2, v1}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result p0

    return p0
.end method

.method public static beenDone(JLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljonathanfinerty/once/Once;->beenDone(JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result p0

    return p0
.end method

.method public static beenDone(JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 6

    .line 222
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0, p2}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 224
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 229
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 230
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, p0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-interface {p3, v1}, Ljonathanfinerty/once/CountChecker;->check(I)Z

    move-result p0

    return p0
.end method

.method public static beenDone(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ljonathanfinerty/once/Once;->beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result p0

    return p0
.end method

.method public static beenDone(Ljava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-static {v0, p0, p1}, Ljonathanfinerty/once/Once;->beenDone(ILjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result p0

    return p0
.end method

.method public static beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Ljonathanfinerty/once/Amount;->moreThan(I)Ljonathanfinerty/once/CountChecker;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Ljonathanfinerty/once/Once;->beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result p0

    return p0
.end method

.method public static beenDone(Ljava/util/concurrent/TimeUnit;JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z
    .locals 0

    .line 193
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    .line 194
    invoke-static {p0, p1, p3, p4}, Ljonathanfinerty/once/Once;->beenDone(JLjava/lang/String;Ljonathanfinerty/once/CountChecker;)Z

    move-result p0

    return p0
.end method

.method public static clearAll()V
    .locals 1

    .line 275
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0}, Ljonathanfinerty/once/PersistedMap;->clear()V

    return-void
.end method

.method public static clearAllToDos()V
    .locals 1

    .line 283
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0}, Ljonathanfinerty/once/PersistedSet;->clear()V

    return-void
.end method

.method public static clearDone(Ljava/lang/String;)V
    .locals 1

    .line 257
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedMap;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static clearToDo(Ljava/lang/String;)V
    .locals 1

    .line 267
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 2

    .line 36
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljonathanfinerty/once/PersistedMap;

    const-string v1, "TagLastSeenMap"

    invoke-direct {v0, p0, v1}, Ljonathanfinerty/once/PersistedMap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    .line 40
    :cond_0
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljonathanfinerty/once/PersistedSet;

    const-string v1, "ToDoSet"

    invoke-direct {v0, p0, v1}, Ljonathanfinerty/once/PersistedSet;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 47
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v0, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static markDone(Ljava/lang/String;)V
    .locals 3

    .line 246
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Ljonathanfinerty/once/PersistedMap;->put(Ljava/lang/String;J)V

    .line 247
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static needToDo(Ljava/lang/String;)Z
    .locals 1

    .line 92
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static toDo(ILjava/lang/String;)V
    .locals 4

    .line 62
    sget-object v0, Ljonathanfinerty/once/Once;->tagLastSeenMap:Ljonathanfinerty/once/PersistedMap;

    invoke-virtual {v0, p1}, Ljonathanfinerty/once/PersistedMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget-object p0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {p0, p1}, Ljonathanfinerty/once/PersistedSet;->put(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-ne p0, v2, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Ljonathanfinerty/once/Once;->lastAppUpdatedTime:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    .line 72
    sget-object p0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {p0, p1}, Ljonathanfinerty/once/PersistedSet;->put(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static toDo(Ljava/lang/String;)V
    .locals 1

    .line 82
    sget-object v0, Ljonathanfinerty/once/Once;->toDoSet:Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v0, p0}, Ljonathanfinerty/once/PersistedSet;->put(Ljava/lang/String;)V

    return-void
.end method
