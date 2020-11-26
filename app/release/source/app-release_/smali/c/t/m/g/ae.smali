.class public final Lc/t/m/g/ae;
.super Ljava/lang/Object;


# static fields
.field private static i:Lc/t/m/g/u;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/net/URL;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lc/t/m/g/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/t/m/g/u;

    const-string v1, "direct_ip_black_list"

    invoke-direct {v0, v1}, Lc/t/m/g/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/t/m/g/ae;->i:Lc/t/m/g/u;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lc/t/m/g/r;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "direct_access_use_schedule"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lc/t/m/g/ae;->b:Z

    const-string v0, "direct_https_use_sche"

    invoke-static {v0, v1, v2, v2}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lc/t/m/g/ae;->c:Z

    const/16 v0, 0x8

    const/4 v1, 0x2

    const-string v3, "direct_access_domain_try_times"

    invoke-static {v3, v2, v0, v1}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lc/t/m/g/ae;->d:I

    const-string v0, ""

    iput-object v0, p0, Lc/t/m/g/ae;->a:Ljava/lang/String;

    iput-object p1, p0, Lc/t/m/g/ae;->e:Ljava/net/URL;

    iput-object p2, p0, Lc/t/m/g/ae;->f:Ljava/lang/String;

    iput-object p3, p0, Lc/t/m/g/ae;->h:Lc/t/m/g/r;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/t/m/g/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc/t/m/g/ae;->h:Lc/t/m/g/r;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lc/t/m/g/ae;->e:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/t/m/g/r;->a(Ljava/lang/String;)Lc/t/m/g/q;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lc/t/m/g/q;->c:Ljava/util/List;

    iget-object v3, v1, Lc/t/m/g/q;->b:Ljava/lang/String;

    iput-object v3, p0, Lc/t/m/g/ae;->a:Ljava/lang/String;

    iget v1, v1, Lc/t/m/g/q;->d:I

    iput v1, p0, Lc/t/m/g/ae;->g:I

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v1, Lc/t/m/g/m;

    iget-object v2, p0, Lc/t/m/g/ae;->f:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lc/t/m/g/m;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    :goto_1
    iget v0, p0, Lc/t/m/g/ae;->d:I

    if-ge v4, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    iput v0, v1, Lc/t/m/g/m;->c:I

    return-object v2

    :cond_3
    iget-object v3, p0, Lc/t/m/g/ae;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    const-string v5, "bott"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x7

    iput v3, v1, Lc/t/m/g/m;->c:I

    invoke-static {v0, v2}, Lc/t/m/g/ae;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-static {v0, v2}, Lc/t/m/g/ae;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    iput v0, v1, Lc/t/m/g/m;->c:I

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget v0, p0, Lc/t/m/g/ae;->d:I

    if-ge v4, v0, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/16 v0, 0x9

    iput v0, v1, Lc/t/m/g/m;->c:I

    :cond_6
    return-object v2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/t/m/g/m;",
            ">;",
            "Ljava/util/List<",
            "Lc/t/m/g/m;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lc/t/m/g/ae;->i:Lc/t/m/g/u;

    invoke-virtual {v0}, Lc/t/m/g/u;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/t/m/g/m;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/t/m/g/m;

    invoke-virtual {v1, v4}, Lc/t/m/g/m;->a(Lc/t/m/g/m;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Lc/t/m/g/m;)V
    .locals 1

    sget-object v0, Lc/t/m/g/ae;->i:Lc/t/m/g/u;

    invoke-virtual {v0, p0}, Lc/t/m/g/u;->a(Lc/t/m/g/m;)V

    return-void
.end method

.method public static c(Lc/t/m/g/m;)V
    .locals 1

    sget-object v0, Lc/t/m/g/ae;->i:Lc/t/m/g/u;

    invoke-virtual {v0, p0}, Lc/t/m/g/u;->b(Lc/t/m/g/m;)V

    return-void
.end method


# virtual methods
.method public final a(Lc/t/m/g/m;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Lc/t/m/g/m;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lc/t/m/g/m;->a:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ae;->e:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ":"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lc/t/m/g/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lc/t/m/g/m;->b:I

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    iget v0, p0, Lc/t/m/g/ae;->g:I

    const-string v2, "https://"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lc/t/m/g/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lc/t/m/g/ae;->g:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lc/t/m/g/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":443"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lc/t/m/g/ae;->e:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_3
    iget-object v0, p0, Lc/t/m/g/ae;->e:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public final a(ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lc/t/m/g/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lc/t/m/g/m;

    iget-object v1, p0, Lc/t/m/g/ae;->f:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lc/t/m/g/m;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput p1, v0, Lc/t/m/g/m;->c:I

    goto :goto_4

    :cond_0
    invoke-static {}, Lc/t/m/g/o;->i()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lc/t/m/g/ae;->b:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lc/t/m/g/ae;->c:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lc/t/m/g/ae;->a()Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget p2, p0, Lc/t/m/g/ae;->d:I

    if-ge p1, p2, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lc/t/m/g/o;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lc/t/m/g/ae;->b:Z

    if-nez p1, :cond_5

    const/4 p1, 0x3

    goto :goto_2

    :cond_5
    const/4 p1, 0x4

    :goto_2
    iput p1, v0, Lc/t/m/g/m;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget p1, p0, Lc/t/m/g/ae;->d:I

    if-ge v1, p1, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/16 p1, 0x8

    iput p1, v0, Lc/t/m/g/m;->c:I

    :goto_4
    return-object v2
.end method
