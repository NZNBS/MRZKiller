.class Ljonathanfinerty/once/AsyncSharedPreferenceLoader;
.super Ljava/lang/Object;
.source "AsyncSharedPreferenceLoader.java"


# instance fields
.field private final asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;

    invoke-direct {v0, p0}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;-><init>(Ljonathanfinerty/once/AsyncSharedPreferenceLoader;)V

    iput-object v0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->asyncTask:Landroid/os/AsyncTask;

    .line 21
    iput-object p1, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->context:Landroid/content/Context;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 22
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Ljonathanfinerty/once/AsyncSharedPreferenceLoader;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
