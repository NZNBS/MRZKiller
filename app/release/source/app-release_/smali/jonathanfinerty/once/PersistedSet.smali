.class Ljonathanfinerty/once/PersistedSet;
.super Ljava/lang/Object;
.source "PersistedSet.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final STRING_SET_KEY:Ljava/lang/String; = "PersistedSetValues"


# instance fields
.field private final preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

.field private preferences:Landroid/content/SharedPreferences;

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljonathanfinerty/once/PersistedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-direct {v0, p1, p2}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    return-void
.end method

.method private StringSetToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private StringToStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 99
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private updatePreferences()V
    .locals 4

    .line 69
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "PersistedSetValues"

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    .line 72
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-direct {p0, v1}, Ljonathanfinerty/once/PersistedSet;->StringSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private waitForLoad()V
    .locals 3

    .line 29
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferenceLoader:Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    invoke-virtual {v0}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const-string v2, "PersistedSetValues"

    if-lt v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljonathanfinerty/once/PersistedSet;->StringToStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 64
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->updatePreferences()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 49
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 51
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 44
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->updatePreferences()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->waitForLoad()V

    .line 57
    iget-object v0, p0, Ljonathanfinerty/once/PersistedSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-direct {p0}, Ljonathanfinerty/once/PersistedSet;->updatePreferences()V

    return-void
.end method
