.class final Lcom/tencent/mapsdk/rastercore/d$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mapsdk/rastercore/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/tencent/mapsdk/rastercore/d$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/mapsdk/rastercore/d$b;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d$c;->a:Lcom/tencent/mapsdk/rastercore/d$b;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/tencent/mapsdk/rastercore/d$d;
    .locals 17

    move-object/from16 v1, p1

    const-string v2, "version"

    const-string v3, "style"

    const-string v4, "gzip"

    const-string v5, "utf-8"

    new-instance v6, Lcom/tencent/mapsdk/rastercore/d$d;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/tencent/mapsdk/rastercore/d$d;-><init>(B)V

    if-eqz v1, :cond_14

    array-length v0, v1

    const/4 v8, 0x2

    if-ne v0, v8, :cond_14

    sget v0, Lcom/tencent/mapsdk/rastercore/b;->e:I

    iput v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->v()I

    move-result v0

    iput v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->b:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->t()I

    move-result v0

    iput v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->c:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->s()I

    move-result v0

    iput v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->d:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->w()I

    move-result v0

    iput v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->e:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->x()I

    move-result v0

    iput v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->f:I

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    :try_start_0
    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "decode frontier.dat to string error:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-static {v10}, Lcom/tencent/mapsdk/rastercore/d;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_2

    invoke-static {v10}, Lcom/tencent/mapsdk/rastercore/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v12, v0, v7

    invoke-static {v12}, Lcom/tencent/mapsdk/rastercore/d;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    aget-object v12, v0, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    aget-object v13, v0, v11

    invoke-static {v13}, Lcom/tencent/mapsdk/rastercore/d;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/c;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :cond_3
    :goto_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v1, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "&frontier="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v12, "Accept-Encoding"

    invoke-virtual {v0, v12, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_14

    const-string v12, "Content-Encoding"

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "VersionChecker Response:"

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    return-object v6

    :cond_6
    const-string v0, "info"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_7

    return-object v6

    :cond_7
    const-string v0, "raster"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v6

    :cond_8
    const/16 v12, 0x3e8

    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v6, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    sget v14, Lcom/tencent/mapsdk/rastercore/b;->a:I

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v6, Lcom/tencent/mapsdk/rastercore/d$d;->b:I

    const-string v14, "cur"

    sget v15, Lcom/tencent/mapsdk/rastercore/b;->b:I

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "sat"

    sget v9, Lcom/tencent/mapsdk/rastercore/b;->d:I

    invoke-virtual {v0, v15, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    iget v15, v6, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    iget v8, v6, Lcom/tencent/mapsdk/rastercore/d$d;->b:I

    invoke-virtual {v0, v15, v7, v8}, Lcom/tencent/mapsdk/rastercore/d$a;->a(III)Z

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    aget-object v8, v1, v11

    iget v15, v6, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    invoke-virtual {v0, v8, v15, v7}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;IZ)Z

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    iget v8, v6, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    const/4 v15, 0x3

    invoke-virtual {v0, v8, v15, v9}, Lcom/tencent/mapsdk/rastercore/d$a;->a(III)Z

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    iget v8, v6, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    invoke-virtual {v0, v8, v11, v14}, Lcom/tencent/mapsdk/rastercore/d$a;->a(III)Z

    const-string v0, "world"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v6

    :cond_9
    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v6, Lcom/tencent/mapsdk/rastercore/d$d;->c:I

    sget v3, Lcom/tencent/mapsdk/rastercore/b;->c:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "logo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/2addr v0, v11

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;)[B

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v8, :cond_a

    :try_start_2
    array-length v12, v8

    invoke-static {v8, v7, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v6, Lcom/tencent/mapsdk/rastercore/d$d;->g:Landroid/graphics/Bitmap;

    :cond_a
    iget-object v8, v6, Lcom/tencent/mapsdk/rastercore/d$d;->g:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v8, :cond_b

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "decode bing logo error :"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_5
    const/4 v0, 0x1

    :cond_b
    const/16 v8, 0x1388

    const-string v12, "GET"

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-lez v0, :cond_e

    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v13, :cond_c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v15, v0

    invoke-static {v0, v7, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v6, Lcom/tencent/mapsdk/rastercore/d$d;->g:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->b()Ljava/lang/String;

    move-result-object v15

    invoke-static {v0, v15}, Lcom/tencent/mapsdk/rastercore/d$a;->a([BLjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    if-eqz v3, :cond_e

    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v9, v3

    goto :goto_6

    :catch_2
    move-object/from16 v16, v3

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v0

    :catch_3
    const/16 v16, 0x0

    :goto_7
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_e
    :goto_8
    :try_start_8
    const-string v0, "frontier"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v3, "path"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v3, v13, :cond_10

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mapsdk/rastercore/d$a;->a([BLjava/lang/String;)Z

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :cond_f
    invoke-static {v10}, Lcom/tencent/mapsdk/rastercore/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v10}, Lcom/tencent/mapsdk/rastercore/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v11

    invoke-static {v3}, Lcom/tencent/mapsdk/rastercore/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/tencent/mapsdk/rastercore/c;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "frontier is already the new:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_9
    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    iget v3, v6, Lcom/tencent/mapsdk/rastercore/d$d;->c:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4, v2}, Lcom/tencent/mapsdk/rastercore/d$a;->a(III)Z

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d$a$a;->a:Lcom/tencent/mapsdk/rastercore/d$a;

    aget-object v1, v1, v11

    iget v3, v6, Lcom/tencent/mapsdk/rastercore/d$d;->c:I

    invoke-virtual {v0, v1, v3, v11}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;IZ)Z

    iget v0, v6, Lcom/tencent/mapsdk/rastercore/d$d;->f:I

    if-eq v14, v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    iget v1, v6, Lcom/tencent/mapsdk/rastercore/d$d;->d:I

    if-eq v2, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    iget v3, v6, Lcom/tencent/mapsdk/rastercore/d$d;->e:I

    if-eq v9, v3, :cond_13

    const/4 v7, 0x1

    :cond_13
    new-instance v3, Lcom/tencent/mapsdk/rastercore/d$c$1;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v4, p0

    :try_start_a
    invoke-direct {v3, v4, v0, v1, v7}, Lcom/tencent/mapsdk/rastercore/d$c$1;-><init>(Lcom/tencent/mapsdk/rastercore/d$c;ZZZ)V

    invoke-virtual {v3}, Lcom/tencent/mapsdk/rastercore/d$c$1;->start()V

    iput v14, v6, Lcom/tencent/mapsdk/rastercore/d$d;->f:I

    iput v2, v6, Lcom/tencent/mapsdk/rastercore/d$d;->d:I

    iput v9, v6, Lcom/tencent/mapsdk/rastercore/d$d;->e:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v4, p0

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check version got error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_14
    move-object/from16 v4, p0

    :goto_d
    return-object v6
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/mapsdk/rastercore/d$c;->a([Ljava/lang/String;)Lcom/tencent/mapsdk/rastercore/d$d;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/tencent/mapsdk/rastercore/d$d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d$c;->a:Lcom/tencent/mapsdk/rastercore/d$b;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/tencent/mapsdk/rastercore/d$d;->a:I

    iget v2, p1, Lcom/tencent/mapsdk/rastercore/d$d;->b:I

    iget v3, p1, Lcom/tencent/mapsdk/rastercore/d$d;->c:I

    iget v4, p1, Lcom/tencent/mapsdk/rastercore/d$d;->d:I

    iget v5, p1, Lcom/tencent/mapsdk/rastercore/d$d;->e:I

    iget v6, p1, Lcom/tencent/mapsdk/rastercore/d$d;->f:I

    iget-object v7, p1, Lcom/tencent/mapsdk/rastercore/d$d;->g:Landroid/graphics/Bitmap;

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mapsdk/rastercore/d$b;->a(IIIIIILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
