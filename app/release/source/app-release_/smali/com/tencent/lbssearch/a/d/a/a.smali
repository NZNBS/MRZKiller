.class public Lcom/tencent/lbssearch/a/d/a/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/d/e;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/tencent/lbssearch/a/d/a/d;

.field protected final c:Lcom/tencent/lbssearch/a/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/tencent/lbssearch/a/d/r;->b:Z

    sput-boolean v0, Lcom/tencent/lbssearch/a/d/a/a;->a:Z

    const/16 v0, 0xbb8

    .line 53
    sput v0, Lcom/tencent/lbssearch/a/d/a/a;->d:I

    const/16 v0, 0x1000

    .line 55
    sput v0, Lcom/tencent/lbssearch/a/d/a/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/d/a/d;)V
    .locals 2

    .line 67
    new-instance v0, Lcom/tencent/lbssearch/a/d/a/b;

    sget v1, Lcom/tencent/lbssearch/a/d/a/a;->e:I

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/d/a/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/tencent/lbssearch/a/d/a/a;-><init>(Lcom/tencent/lbssearch/a/d/a/d;Lcom/tencent/lbssearch/a/d/a/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/d/a/d;Lcom/tencent/lbssearch/a/d/a/b;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/a/a;->b:Lcom/tencent/lbssearch/a/d/a/d;

    .line 76
    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/a/a;->c:Lcom/tencent/lbssearch/a/d/a/b;

    return-void
.end method

.method protected static a(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 256
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(JLcom/tencent/lbssearch/a/d/j;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;[BI)V"
        }
    .end annotation

    .line 165
    sget-boolean v0, Lcom/tencent/lbssearch/a/d/a/a;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/tencent/lbssearch/a/d/a/a;->d:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    if-eqz p4, :cond_1

    array-length p2, p4

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 169
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    invoke-virtual {p3}, Lcom/tencent/lbssearch/a/d/j;->q()Lcom/tencent/lbssearch/a/d/n;

    move-result-object p2

    invoke-interface {p2}, Lcom/tencent/lbssearch/a/d/n;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 166
    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/d/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;",
            "Lcom/tencent/lbssearch/a/d/q;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/q;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/d/j;->q()Lcom/tencent/lbssearch/a/d/n;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/d/j;->p()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 184
    :try_start_0
    invoke-interface {v0, p2}, Lcom/tencent/lbssearch/a/d/n;->a(Lcom/tencent/lbssearch/a/d/q;)V
    :try_end_0
    .catch Lcom/tencent/lbssearch/a/d/q; {:try_start_0 .. :try_end_0} :catch_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-virtual {p1, p0}, Lcom/tencent/lbssearch/a/d/j;->a(Ljava/lang/String;)V

    .line 188
    throw p2
.end method

.method private a(Ljava/net/HttpURLConnection;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/lbssearch/a/d/o;
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/tencent/lbssearch/a/d/a/f;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/d/a/a;->c:Lcom/tencent/lbssearch/a/d/a/b;

    .line 231
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/lbssearch/a/d/a/f;-><init>(Lcom/tencent/lbssearch/a/d/a/b;I)V

    const/4 v1, 0x0

    .line 234
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/a/a;->c:Lcom/tencent/lbssearch/a/d/a/b;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/tencent/lbssearch/a/d/a/b;->a(I)[B

    move-result-object v1

    .line 240
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/lbssearch/a/d/a/f;->write([BII)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 244
    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/d/a/f;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/a/a;->c:Lcom/tencent/lbssearch/a/d/a/b;

    invoke-virtual {v2, v1}, Lcom/tencent/lbssearch/a/d/a/b;->a([B)V

    .line 247
    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/d/a/f;->close()V

    return-object p1

    .line 236
    :cond_1
    :try_start_1
    new-instance p1, Lcom/tencent/lbssearch/a/d/o;

    invoke-direct {p1}, Lcom/tencent/lbssearch/a/d/o;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 246
    iget-object v2, p0, Lcom/tencent/lbssearch/a/d/a/a;->c:Lcom/tencent/lbssearch/a/d/a/b;

    invoke-virtual {v2, v1}, Lcom/tencent/lbssearch/a/d/a/b;->a([B)V

    .line 247
    invoke-virtual {v0}, Lcom/tencent/lbssearch/a/d/a/f;->close()V

    throw p1
.end method


# virtual methods
.method public a(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/h;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/lbssearch/a/d/j<",
            "*>;)",
            "Lcom/tencent/lbssearch/a/d/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/lbssearch/a/d/q;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ge v12, v0, :cond_b

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 88
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    iget-object v3, v7, Lcom/tencent/lbssearch/a/d/a/a;->b:Lcom/tencent/lbssearch/a/d/a/d;

    invoke-interface {v3, v8, v0}, Lcom/tencent/lbssearch/a/d/a/d;->a(Lcom/tencent/lbssearch/a/d/j;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v13
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 90
    :try_start_1
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 92
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/d/a/a;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v23
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v0, 0x130

    if-ne v15, v0, :cond_0

    .line 96
    :try_start_2
    new-instance v0, Lcom/tencent/lbssearch/a/d/h;

    const/16 v17, 0x130

    const/16 v18, 0x0

    const/16 v20, 0x1

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v21, v2, v9

    move-object/from16 v16, v0

    move-object/from16 v19, v23

    invoke-direct/range {v16 .. v22}, Lcom/tencent/lbssearch/a/d/h;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v15, v1

    move-object v1, v13

    :goto_1
    move-object/from16 v16, v23

    goto :goto_2

    :cond_0
    if-eqz v13, :cond_1

    .line 102
    invoke-direct {v7, v13}, Lcom/tencent/lbssearch/a/d/a/a;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object/from16 v21, v1

    .line 106
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v9

    .line 107
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v21

    invoke-direct/range {v1 .. v6}, Lcom/tencent/lbssearch/a/d/a/a;->a(JLcom/tencent/lbssearch/a/d/j;[BI)V

    const/16 v0, 0xc8

    if-lt v15, v0, :cond_2

    const/16 v0, 0x12b

    if-gt v15, v0, :cond_2

    .line 112
    new-instance v0, Lcom/tencent/lbssearch/a/d/h;

    const/16 v18, 0x0

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v19, v1, v9

    move-object v14, v0

    move-object/from16 v16, v21

    move-object/from16 v17, v23

    invoke-direct/range {v14 .. v20}, Lcom/tencent/lbssearch/a/d/h;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    .line 110
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    move-object v1, v13

    move-object/from16 v15, v21

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object v1, v13

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v15, v1

    move-object/from16 v16, v2

    :goto_2
    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 122
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v1, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/lbssearch/a/d/j;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/lbssearch/a/d/r;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_9

    .line 129
    new-instance v1, Lcom/tencent/lbssearch/a/d/h;

    const/16 v17, 0x0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v18, v3, v9

    move-object v13, v1

    move v14, v0

    invoke-direct/range {v13 .. v19}, Lcom/tencent/lbssearch/a/d/h;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v3, 0x191

    if-eq v0, v3, :cond_8

    const/16 v3, 0x193

    if-ne v0, v3, :cond_3

    goto :goto_4

    :cond_3
    const/16 v3, 0x190

    if-lt v0, v3, :cond_5

    const/16 v3, 0x1f3

    if-le v0, v3, :cond_4

    goto :goto_3

    .line 137
    :cond_4
    new-instance v0, Lcom/tencent/lbssearch/a/d/b;

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/d/b;-><init>(Lcom/tencent/lbssearch/a/d/h;)V

    throw v0

    :cond_5
    :goto_3
    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_7

    const/16 v3, 0x257

    if-gt v0, v3, :cond_7

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/lbssearch/a/d/j;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "server"

    .line 140
    new-instance v3, Lcom/tencent/lbssearch/a/d/o;

    invoke-direct {v3, v1}, Lcom/tencent/lbssearch/a/d/o;-><init>(Lcom/tencent/lbssearch/a/d/h;)V

    invoke-static {v0, v8, v3}, Lcom/tencent/lbssearch/a/d/a/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    goto :goto_5

    .line 143
    :cond_6
    new-instance v0, Lcom/tencent/lbssearch/a/d/o;

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/d/o;-><init>(Lcom/tencent/lbssearch/a/d/h;)V

    throw v0

    .line 147
    :cond_7
    new-instance v0, Lcom/tencent/lbssearch/a/d/o;

    invoke-direct {v0, v1}, Lcom/tencent/lbssearch/a/d/o;-><init>(Lcom/tencent/lbssearch/a/d/h;)V

    throw v0

    :cond_8
    :goto_4
    const-string v0, "auth"

    .line 133
    new-instance v3, Lcom/tencent/lbssearch/a/d/a;

    invoke-direct {v3, v1}, Lcom/tencent/lbssearch/a/d/a;-><init>(Lcom/tencent/lbssearch/a/d/h;)V

    invoke-static {v0, v8, v3}, Lcom/tencent/lbssearch/a/d/a/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    goto :goto_5

    :cond_9
    const-string v0, "network"

    .line 150
    new-instance v1, Lcom/tencent/lbssearch/a/d/g;

    invoke-direct {v1}, Lcom/tencent/lbssearch/a/d/g;-><init>()V

    invoke-static {v0, v8, v1}, Lcom/tencent/lbssearch/a/d/a/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    goto :goto_5

    .line 124
    :cond_a
    new-instance v1, Lcom/tencent/lbssearch/a/d/i;

    invoke-direct {v1, v0}, Lcom/tencent/lbssearch/a/d/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    move-exception v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const-string v0, "%s:Can not get HttpURLConnection ResponsCode."

    invoke-static {v0, v1}, Lcom/tencent/lbssearch/a/d/r;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catch_5
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/lbssearch/a/d/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :catch_6
    new-instance v0, Lcom/tencent/lbssearch/a/d/p;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/d/p;-><init>()V

    const-string v1, "socket"

    invoke-static {v1, v8, v0}, Lcom/tencent/lbssearch/a/d/a/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/j;Lcom/tencent/lbssearch/a/d/q;)V

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v1
.end method
