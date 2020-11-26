.class Lc/t/m/g/ch;
.super Ljava/util/Observable;
.source "TL"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static a:Ljava/lang/String; = "cc_c_t_m_l_"

.field private static b:Lc/t/m/g/ch;

.field private static c:Landroid/content/Context;

.field private static d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 43
    sget-object v0, Lc/t/m/g/ch;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lc/t/m/g/ch;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method protected static declared-synchronized a()Lc/t/m/g/ch;
    .locals 2

    const-class v0, Lc/t/m/g/ch;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lc/t/m/g/ch;->b:Lc/t/m/g/ch;

    if-nez v1, :cond_0

    .line 35
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    new-instance v1, Lc/t/m/g/ch;

    invoke-direct {v1}, Lc/t/m/g/ch;-><init>()V

    sput-object v1, Lc/t/m/g/ch;->b:Lc/t/m/g/ch;

    .line 37
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1

    .line 39
    :cond_0
    :goto_0
    sget-object v1, Lc/t/m/g/ch;->b:Lc/t/m/g/ch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lc/t/m/g/ch;->c:Landroid/content/Context;

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "cc_c_t_m_l_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/t/m/g/ch;->a:Ljava/lang/String;

    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final declared-synchronized b()Landroid/content/SharedPreferences;
    .locals 3

    monitor-enter p0

    .line 53
    :try_start_0
    sget-object v0, Lc/t/m/g/ch;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    sget-object v1, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 57
    sget-object v1, Lc/t/m/g/ch;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;

    .line 59
    :cond_1
    sget-object v0, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    sget-object v0, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/t/m/g/ch;->addObserver(Ljava/util/Observer;)V

    .line 68
    sget-object v0, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    sget-object v0, Lc/t/m/g/ch;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 78
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/t/m/g/ch;->deleteObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lc/t/m/g/ch;->setChanged()V

    .line 85
    invoke-virtual {p0, p2}, Lc/t/m/g/ch;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
