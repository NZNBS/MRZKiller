.class public final Lc/t/m/g/ai;
.super Lc/t/m/g/ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/ai$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lc/t/m/g/ai$a;

.field public l:Ljava/lang/String;

.field m:J

.field n:Z

.field o:Z

.field p:I

.field q:Z

.field private r:Ljava/net/HttpURLConnection;

.field private s:Ljava/io/DataOutputStream;

.field private t:Ljava/io/DataInputStream;

.field private u:Lc/t/m/g/ah;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;[BILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/t/m/g/ad;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc/t/m/g/ai;->x:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/ai;->z:J

    new-instance v0, Lc/t/m/g/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/t/m/g/ai$a;-><init>(B)V

    iput-object v0, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iput-boolean v1, p0, Lc/t/m/g/ai;->n:Z

    iput-boolean v1, p0, Lc/t/m/g/ai;->o:Z

    iput v1, p0, Lc/t/m/g/ai;->p:I

    iput-boolean v1, p0, Lc/t/m/g/ai;->q:Z

    iput-object p1, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    iput-object p2, p0, Lc/t/m/g/ai;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lc/t/m/g/ai;->b:Z

    iput-object p4, p0, Lc/t/m/g/ai;->c:Ljava/util/Map;

    iput-object p5, p0, Lc/t/m/g/ai;->d:[B

    invoke-static {}, Lc/t/m/g/o;->g()I

    move-result p1

    const/16 p2, 0x2710

    const/16 p3, 0x3e8

    const-string p4, "direct_access_time_out"

    const p5, 0xea60

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3a98

    invoke-static {p4, p3, p5, p1}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p4, p3, p5, p2}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result p1

    :goto_0
    if-ge p6, p1, :cond_1

    goto :goto_1

    :cond_1
    move p6, p1

    :goto_1
    const/16 p1, 0xc8

    invoke-static {p6, p1, p5, p2}, Lc/t/m/g/ce;->a(IIII)I

    move-result p1

    iput p1, p0, Lc/t/m/g/ai;->e:I

    iput-object p7, p0, Lc/t/m/g/ai;->f:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v2, v3, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v6

    if-le v5, p1, :cond_0

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x12f

    iput v1, p1, Lc/t/m/g/ah;->a:I

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const-string v1, "no-content-length"

    iput-object v1, p1, Lc/t/m/g/ah;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p1, Lc/t/m/g/ah;->d:[B

    iget-object p1, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lc/t/m/g/ai$a;->f:J
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    return-void

    :catch_1
    move v0, v5

    goto :goto_2

    :catch_2
    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v0, -0x11f

    iput v0, p1, Lc/t/m/g/ah;->a:I

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const-string v0, "read without content-length error"

    :goto_1
    iput-object v0, p1, Lc/t/m/g/ah;->b:Ljava/lang/String;

    return-void

    :catch_3
    :goto_2
    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x132

    iput v1, p1, Lc/t/m/g/ah;->a:I

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no-content-length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lc/t/m/g/ai;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/ai;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/ai;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lc/t/m/g/ai;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc/t/m/g/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lc/t/m/g/ai;->p:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Halley"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/t/m/g/ai;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lc/t/m/g/ai;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    const-string v2, "X-Online-Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    const-string v2, "x-tx-host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    iget-object v0, p0, Lc/t/m/g/ai;->s:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    iget-object v0, p0, Lc/t/m/g/ai;->t:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lc/t/m/g/ah;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/ai;->m:J

    iget-object v2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iput-wide v0, v2, Lc/t/m/g/ai$a;->a:J

    new-instance v0, Lc/t/m/g/ah;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lc/t/m/g/ah;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lc/t/m/g/ai;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lc/t/m/g/ai;->v:Z

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/t/m/g/ce;->d(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lc/t/m/g/ai;->w:Z

    iget-boolean v3, p0, Lc/t/m/g/ai;->v:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lc/t/m/g/ai;->n:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lc/t/m/g/o;->k()Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lc/t/m/g/o;->k()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    :goto_0
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-boolean v3, p0, Lc/t/m/g/ai;->w:Z

    if-eqz v3, :cond_3

    const-string v3, "Host"

    iget-object v4, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lc/t/m/g/ag;

    invoke-direct {v3, v2}, Lc/t/m/g/ag;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v3, Lc/t/m/g/aj;

    invoke-direct {v3, p0}, Lc/t/m/g/aj;-><init>(Lc/t/m/g/ai;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    :cond_1
    iget-boolean v3, p0, Lc/t/m/g/ai;->n:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lc/t/m/g/o;->k()Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lc/t/m/g/o;->k()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    :goto_2
    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_3

    :cond_2
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_3
    iput-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    iget-boolean v3, p0, Lc/t/m/g/ai;->b:Z

    if-eqz v3, :cond_4

    const-string v3, "GET"

    goto :goto_4

    :cond_4
    const-string v3, "POST"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    iget v3, p0, Lc/t/m/g/ai;->e:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    iget v3, p0, Lc/t/m/g/ai;->e:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-direct {p0}, Lc/t/m/g/ai;->b()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    const-string v2, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_5
    :try_start_2
    iget-boolean v2, p0, Lc/t/m/g/ai;->b:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lc/t/m/g/ai;->d:[B

    invoke-static {v2}, Lc/t/m/g/ce;->a([B)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lc/t/m/g/ai;->d:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lc/t/m/g/ai;->z:J

    :cond_6
    iget-object v2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lc/t/m/g/ai$a;->b:J

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lc/t/m/g/ai$a;->c:J

    iget-boolean v2, p0, Lc/t/m/g/ai;->b:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lc/t/m/g/ai;->d:[B

    invoke-static {v2}, Lc/t/m/g/ce;->a([B)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lc/t/m/g/ai;->s:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lc/t/m/g/ai;->d:[B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lc/t/m/g/ai;->s:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :cond_7
    iget-object v2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lc/t/m/g/ai$a;->d:J

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lc/t/m/g/ai$a;->e:J

    iget-object v3, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iput v2, v3, Lc/t/m/g/ah;->c:I

    iget-object v2, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/t/m/g/ai;->x:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    invoke-virtual {v1, v2}, Lc/t/m/g/ah;->a(Ljava/util/Map;)V

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget v1, v1, Lc/t/m/g/ah;->c:I

    const/16 v2, 0xc8

    const/16 v3, 0x12c

    if-lt v1, v2, :cond_d

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget v1, v1, Lc/t/m/g/ah;->c:I

    if-ge v1, v3, :cond_d

    iget-object v1, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, p0, Lc/t/m/g/ai;->y:I

    const-string v1, "app_receive_pack_size"

    const/high16 v2, 0x80000

    const/high16 v3, 0xa00000

    const/high16 v4, 0x200000

    invoke-static {v1, v2, v3, v4}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    iget v2, p0, Lc/t/m/g/ai;->y:I

    if-gez v2, :cond_a

    invoke-direct {p0, v1}, Lc/t/m/g/ai;->a(I)V

    goto/16 :goto_7

    :cond_a
    if-nez v2, :cond_b

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/4 v2, 0x0

    iput-object v2, v1, Lc/t/m/g/ah;->d:[B

    iget-object v1, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lc/t/m/g/ai$a;->f:J

    goto/16 :goto_7

    :cond_b
    if-le v2, v1, :cond_c

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v2, -0x12f

    iput v2, v1, Lc/t/m/g/ah;->a:I

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc/t/m/g/ai;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    iput-object v2, v1, Lc/t/m/g/ah;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    :cond_c
    :try_start_3
    new-array v1, v2, [B

    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lc/t/m/g/ai;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lc/t/m/g/ai;->t:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v2, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iput-object v1, v2, Lc/t/m/g/ah;->d:[B

    iget-object v1, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lc/t/m/g/ai$a;->f:J
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    :catch_1
    :try_start_4
    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v2, -0x132

    iput v2, v1, Lc/t/m/g/ah;->a:I

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc/t/m/g/ai;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget v1, v1, Lc/t/m/g/ah;->c:I

    if-lt v1, v3, :cond_e

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget v1, v1, Lc/t/m/g/ah;->c:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_e

    iget-object v1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lc/t/m/g/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/ai;->g:Ljava/lang/String;

    goto/16 :goto_7

    :cond_e
    iget-object v1, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    invoke-static {v1}, Lc/t/m/g/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/ai;->A:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v3, -0x11f

    iput v3, v2, Lc/t/m/g/ah;->a:I

    iget-object v2, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc/t/m/g/ah;->b:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/o;->h()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/4 v1, -0x4

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto/16 :goto_7

    :cond_f
    iput-boolean v0, p0, Lc/t/m/g/ai;->h:Z

    iget-object v0, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iget-wide v2, v0, Lc/t/m/g/ai$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    iget-object v0, p0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/ai;->A:Ljava/lang/String;

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "permission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x119

    iput v1, v0, Lc/t/m/g/ah;->a:I

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const-string v1, "no permission"

    iput-object v1, v0, Lc/t/m/g/ah;->b:Ljava/lang/String;

    goto :goto_7

    :cond_11
    instance-of v0, v1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x11c

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_7

    :cond_12
    instance-of v0, v1, Ljava/net/ConnectException;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x2a

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_7

    :cond_13
    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0xa

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0xd

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_7

    :cond_16
    instance-of v0, v1, Ljava/net/SocketException;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x29

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_7

    :cond_17
    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x11e

    iput v1, v0, Lc/t/m/g/ah;->a:I

    goto :goto_7

    :catch_2
    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    const/16 v1, -0x12c

    iput v1, v0, Lc/t/m/g/ah;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_18
    :goto_7
    invoke-direct {p0}, Lc/t/m/g/ai;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/ai;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc/t/m/g/ai;->m:J

    iget-object v0, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-virtual {v0}, Lc/t/m/g/ai$a;->a()V

    iget-object v0, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    return-object v0

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lc/t/m/g/ai;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lc/t/m/g/ai;->m:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lc/t/m/g/ai;->m:J

    iget-object v1, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    invoke-virtual {v1}, Lc/t/m/g/ai$a;->a()V

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lc/t/m/g/ai;->a(ZLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final a(ZLjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lc/t/m/g/ai;->m:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "B59"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "1"

    if-eqz p1, :cond_1

    const-string p1, "B46"

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean p1, p0, Lc/t/m/g/ai;->v:Z

    if-eqz p1, :cond_2

    const-string p1, "B85"

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean p1, p0, Lc/t/m/g/ai;->b:Z

    if-eqz p1, :cond_3

    const-string p1, "B95"

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lc/t/m/g/ai;->z:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "B96"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean p1, p0, Lc/t/m/g/ai;->w:Z

    if-nez p1, :cond_4

    const-string p1, "B23"

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_5

    invoke-interface {v5, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    iget-object p1, p0, Lc/t/m/g/ai;->x:Ljava/lang/String;

    const-string p2, "B87"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lc/t/m/g/ai;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B88"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iget-wide p2, p2, Lc/t/m/g/ai$a;->g:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B90"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iget-wide p2, p2, Lc/t/m/g/ai$a;->h:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B91"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iget-wide p2, p2, Lc/t/m/g/ai$a;->i:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B92"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iget-wide p2, p2, Lc/t/m/g/ai$a;->j:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B93"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lc/t/m/g/ai;->B:Lc/t/m/g/ai$a;

    iget-wide p2, p2, Lc/t/m/g/ai$a;->k:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "B94"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lc/t/m/g/ai;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lc/t/m/g/ai;->g:Ljava/lang/String;

    invoke-static {p1}, Lc/t/m/g/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "B47"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p1, p0, Lc/t/m/g/ai;->A:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lc/t/m/g/ai;->A:Ljava/lang/String;

    const-string p2, "B41"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lc/t/m/g/ai;->f:Ljava/lang/String;

    const-string p2, "B82"

    invoke-interface {v5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget p1, p1, Lc/t/m/g/ah;->a:I

    if-eqz p1, :cond_8

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget p1, p1, Lc/t/m/g/ah;->a:I

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget p1, p1, Lc/t/m/g/ah;->c:I

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_9

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget p1, p1, Lc/t/m/g/ah;->c:I

    goto :goto_1

    :goto_2
    iget-boolean p1, p0, Lc/t/m/g/ai;->q:Z

    invoke-static {}, Lc/t/m/g/l;->b()I

    move-result v1

    if-nez p1, :cond_a

    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget-object v3, p1, Lc/t/m/g/ah;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lc/t/m/g/ai;->h:Z

    const-string v0, "HLHttpDirect"

    invoke-static/range {v0 .. v6}, Lc/t/m/g/ca;->b(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void

    :cond_a
    iget-object p1, p0, Lc/t/m/g/ai;->u:Lc/t/m/g/ah;

    iget-object v3, p1, Lc/t/m/g/ah;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lc/t/m/g/ai;->h:Z

    const-string v0, "HLHttpDirect"

    invoke-static/range {v0 .. v6}, Lc/t/m/g/ca;->a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method
