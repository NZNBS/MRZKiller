.class public final Lcom/tencent/lbssearch/a/a/b/a/c;
.super Lcom/tencent/lbssearch/a/a/w;
.source "DateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/lbssearch/a/a/w<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/lbssearch/a/a/x;


# instance fields
.field private final b:Ljava/text/DateFormat;

.field private final c:Ljava/text/DateFormat;

.field private final d:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/c$1;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/b/a/c$1;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/a/c;->a:Lcom/tencent/lbssearch/a/a/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/w;-><init>()V

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    .line 51
    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->b:Ljava/text/DateFormat;

    .line 53
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->c:Ljava/text/DateFormat;

    .line 54
    invoke-static {}, Lcom/tencent/lbssearch/a/a/b/a/c;->a()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->d:Ljava/text/DateFormat;

    return-void
.end method

.method private static a()Ljava/text/DateFormat;
    .locals 3

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 58
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 76
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 80
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->d:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_2
    move-exception v0

    .line 82
    :try_start_3
    new-instance v1, Lcom/tencent/lbssearch/a/a/t;

    invoke-direct {v1, p1, v0}, Lcom/tencent/lbssearch/a/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/lbssearch/a/a/b/a/c;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/a/d/c;->f()Lcom/tencent/lbssearch/a/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/c;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Lcom/tencent/lbssearch/a/a/d/c;->b(Ljava/lang/String;)Lcom/tencent/lbssearch/a/a/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/a/b/a/c;->a(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
