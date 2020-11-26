.class public Lcom/tencent/lbssearch/a/b/a;
.super Ljava/lang/Object;
.source "HttpProvider.java"


# static fields
.field private static a:Lcom/tencent/lbssearch/a/d/k;


# direct methods
.method private static a(Ljava/lang/String;Lcom/tencent/lbssearch/a/b/d;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 79
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/tencent/lbssearch/a/b/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "&"

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/lbssearch/a/b/d;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/a/b/d;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;",
            ")V"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/tencent/lbssearch/a/b/a;->a:Lcom/tencent/lbssearch/a/d/k;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/lbssearch/a/d/a/h;->a(Landroid/content/Context;)Lcom/tencent/lbssearch/a/d/k;

    move-result-object p0

    sput-object p0, Lcom/tencent/lbssearch/a/b/a;->a:Lcom/tencent/lbssearch/a/d/k;

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/lbssearch/a/c/a;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p2}, Lcom/tencent/lbssearch/a/b/d;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/lbssearch/a/c/a;->b(Ljava/lang/String;)V

    .line 39
    :cond_1
    new-instance p0, Lcom/tencent/lbssearch/a/d/a/g;

    invoke-static {p1, p2}, Lcom/tencent/lbssearch/a/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/a/b/d;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/tencent/lbssearch/a/b/a$1;

    invoke-direct {p2, p3, p4}, Lcom/tencent/lbssearch/a/b/a$1;-><init>(Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    new-instance p3, Lcom/tencent/lbssearch/a/b/a$2;

    invoke-direct {p3}, Lcom/tencent/lbssearch/a/b/a$2;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/lbssearch/a/d/a/g;-><init>(Ljava/lang/String;Lcom/tencent/lbssearch/a/d/l$b;Lcom/tencent/lbssearch/a/d/l$a;)V

    .line 69
    sget-object p1, Lcom/tencent/lbssearch/a/b/a;->a:Lcom/tencent/lbssearch/a/d/k;

    invoke-virtual {p1, p0}, Lcom/tencent/lbssearch/a/d/k;->a(Lcom/tencent/lbssearch/a/d/j;)Lcom/tencent/lbssearch/a/d/j;

    return-void
.end method
