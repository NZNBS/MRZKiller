.class public final Lc/t/m/g/ay;
.super Lc/t/m/g/av;

# interfaces
.implements Lc/t/m/g/bt;


# instance fields
.field private a:Lc/t/m/g/z;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/t/m/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lc/t/m/g/av;-><init>()V

    new-instance v0, Lc/t/m/g/z;

    invoke-direct {v0}, Lc/t/m/g/z;-><init>()V

    iput-object v0, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/ay;->b:Ljava/util/List;

    const-string v0, "settings_in_client"

    const-string v1, ""

    invoke-static {v0, v1}, Lc/t/m/g/bz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    invoke-virtual {v3, v2}, Lc/t/m/g/z;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/t/m/g/ay;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0, v1}, Lc/t/m/g/bz;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lc/t/m/g/ay;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "settings"

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc/t/m/g/z;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc/t/m/g/bc;->a()Lc/t/m/g/bc;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/bc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc/t/m/g/bc;->a()Lc/t/m/g/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lc/t/m/g/bc;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    invoke-virtual {v0}, Lc/t/m/g/z;->b()V

    iget-object v0, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    invoke-virtual {v0, p1}, Lc/t/m/g/z;->a(Ljava/lang/String;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "settings_in_client"

    iget-object p2, p0, Lc/t/m/g/ay;->a:Lc/t/m/g/z;

    invoke-virtual {p2}, Lc/t/m/g/z;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/t/m/g/bz;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/t/m/g/ay;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_1
    return-void
.end method

.method public final a_()V
    .locals 1

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/bv;->b()V

    return-void
.end method
