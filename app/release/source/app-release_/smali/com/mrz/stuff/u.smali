.class public Lcom/mrz/stuff/u;
.super Ljava/lang/Object;
.source "z"


# static fields
.field public static final ALLATORIxDEMO:Ljava/lang/String; = "text/*"

.field static final D:Ljava/lang/String; = "FileUtils"

.field private static final F:Z = false

.field public static final G:Ljava/lang/String; = "image/*"

.field public static final I:Ljava/lang/String; = "audio/*"

.field public static L:Ljava/io/FileFilter; = null

.field public static final M:Ljava/lang/String; = "."

.field public static final b:Ljava/lang/String; = "video/*"

.field public static g:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Ljava/io/FileFilter; = null

.field public static final m:Ljava/lang/String; = "application/*"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 384
    new-instance v0, Lcom/mrz/stuff/z;

    invoke-direct {v0}, Lcom/mrz/stuff/z;-><init>()V

    sput-object v0, Lcom/mrz/stuff/u;->g:Ljava/util/Comparator;

    .line 140
    new-instance v0, Lcom/mrz/stuff/w;

    invoke-direct {v0}, Lcom/mrz/stuff/w;-><init>()V

    sput-object v0, Lcom/mrz/stuff/u;->L:Ljava/io/FileFilter;

    .line 82
    new-instance v0, Lcom/mrz/stuff/h;

    invoke-direct {v0}, Lcom/mrz/stuff/h;-><init>()V

    sput-object v0, Lcom/mrz/stuff/u;->j:Ljava/io/FileFilter;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x176bbe33e27L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Q\u0012D\u0003F\u000fPk"

    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ALLATORIxDEMO()Landroid/content/Intent;
    .locals 2

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "+z.f%}.:#z>q$`du)`#{$:\rQ\u001eK\t[\u0004@\u000fZ\u001e"

    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "\u0013\u0018\u0013"

    .line 516
    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "u$p8{#pd}$`/z>:)u>q-{8md[\u001aQ\u0004U\u0008X\u000f"

    .line 660
    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    .line 175
    invoke-static {p0, p1}, Lcom/mrz/stuff/u;->C(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 112
    invoke-static {p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "`XL\u0017ZVW\u0017VYUN\u0019E\\CK^\\A\\\u0017M_LZ[YX^UD\u0019QVE\u0019^TV^RJ\u0017XY]\u0017O^]RVD\u0017"

    .line 438
    invoke-static {p0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p1, :cond_4

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 214
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 502
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 486
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "<}.q%"

    .line 331
    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    int-to-long v4, v0

    .line 362
    invoke-static {p0, v4, v5, v3, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_1
    const-string v2, "image/*"

    .line 308
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    int-to-long v4, v0

    .line 144
    invoke-static {p0, v4, v5, v3, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_3
    throw p0

    :catch_1
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    .line 168
    invoke-static {p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 244
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    if-eqz p1, :cond_0

    .line 243
    invoke-static {p0, p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 391
    invoke-static {p0}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Ljava/io/File;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_2

    .line 487
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 409
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u0016"

    .line 370
    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 188
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ALLATORIxDEMO(I)Ljava/lang/String;
    .locals 6

    .line 346
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "\u001a\u0014\u001a\u0019\u001a"

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "j_\u0008"

    .line 314
    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "\u0019z{"

    .line 110
    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "jS\u0008"

    .line 96
    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "\u0019|{"

    .line 267
    invoke-static {v3}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    if-le p0, v4, :cond_1

    .line 320
    div-int/2addr p0, v4

    int-to-float p0, p0

    const/high16 v4, 0x44800000    # 1024.0f

    cmpl-float v5, p0, v4

    if-lez v5, :cond_2

    div-float/2addr p0, v4

    cmpl-float v3, p0, v4

    if-lez v3, :cond_0

    div-float/2addr p0, v4

    .line 485
    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 15
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    float-to-double v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 312
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    invoke-static {p1}, Lcom/mrz/stuff/u;->M(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/mrz/stuff/u;->C(Landroid/net/Uri;)Z

    move-result v0

    const-string v4, "\u0003"

    if-eqz v0, :cond_2

    .line 279
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-static {v4}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 380
    aget-object p1, p0, v2

    const-string v0, ":f#y+f3"

    .line 433
    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u0016"

    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 481
    :cond_2
    invoke-static {p1}, Lcom/mrz/stuff/u;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "w%z>q$`p;ep%c$x%u.ged?v&})K.{=z&{+p9"

    .line 69
    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 69
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 268
    invoke-static {p0, p1, v3, v3}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_3
    invoke-static {p1}, Lcom/mrz/stuff/u;->J(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v4}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 330
    aget-object v0, p1, v2

    const-string v4, "#y+s/"

    .line 482
    invoke-static {v4}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 20
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const-string v4, "O^]RV"

    .line 72
    invoke-static {v4}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    const-string v4, "+a.}%"

    .line 78
    invoke-static {v4}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 456
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_6
    :goto_1
    const-string v0, "f^]\n\u0006"

    .line 252
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    .line 114
    aget-object p1, p1, v1

    aput-object p1, v0, v2

    const-string p1, "\u0015}.)u"

    .line 304
    invoke-static {p1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1, v0}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "ZXWC\\YM"

    .line 73
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 385
    invoke-static {p1}, Lcom/mrz/stuff/u;->i(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_8
    invoke-static {p0, p1, v3, v3}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "r#x/"

    .line 474
    invoke-static {p0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 466
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v3
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "fSXCX"

    .line 130
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "\u0015p+`+"

    .line 457
    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 125
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 428
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 75
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 468
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_3
    throw p1
.end method

.method public static ALLATORIxDEMO(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "u:d&})u>}%ze{)`/`gg>f/u\'"

    .line 347
    invoke-static {p0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static ALLATORIxDEMO(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "TR]^X"

    .line 475
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "QCMG\u0003\u0018\u0016"

    .line 231
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|>`:gp;e"

    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static C(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 374
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-static {v0}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "ZXT\u0019XY]EV^]\u0019\\OMRKYX[JCVEXP\\\u0019]XZBTRWCJ"

    .line 79
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static J(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "ZXT\u0019XY]EV^]\u0019IEVAPS\\EJ\u0019TR]^X\u0019]XZBTRWCJ"

    .line 161
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static M(Landroid/net/Uri;)Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.ianhanniballake.localstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "){\':+z.f%}.::f%b#p/f9:.{=z&{+p9:.{)a\'q$`9"

    .line 146
    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "w%yds%{-x/:+z.f%}.:+d:gdd\"{>{9:){$`/z>"

    .line 197
    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
