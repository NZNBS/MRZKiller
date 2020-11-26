.class public Lcom/tencent/lbssearch/a/a/d/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C

.field private static final m:Lcom/tencent/lbssearch/a/a/d/e;


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private n:[I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/tencent/lbssearch/a/a/d/a;->a:[C

    .line 270
    new-instance v0, Lcom/tencent/lbssearch/a/a/d/e;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/d/e;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/d/a;->m:Lcom/tencent/lbssearch/a/a/d/e;

    .line 1554
    new-instance v0, Lcom/tencent/lbssearch/a/a/d/a$1;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/a/d/a$1;-><init>()V

    sput-object v0, Lcom/tencent/lbssearch/a/a/b/e;->a:Lcom/tencent/lbssearch/a/a/b/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->c:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 239
    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    .line 240
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 241
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    .line 243
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    .line 244
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    .line 246
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 275
    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    .line 276
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    add-int/lit8 v2, v0, 0x1

    .line 278
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    const/4 v2, 0x6

    aput v2, v1, v0

    const-string v0, "in == null"

    .line 286
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/d/a;->b:Ljava/io/Reader;

    return-void
.end method

.method static synthetic a(Lcom/tencent/lbssearch/a/a/d/a;)I
    .locals 0

    .line 191
    iget p0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return p0
.end method

.method static synthetic a(Lcom/tencent/lbssearch/a/a/d/a;I)I
    .locals 0

    .line 191
    iput p1, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return p1
.end method

.method private a(I)V
    .locals 4

    .line 1260
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 1261
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 1262
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    iput-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    aput p1, v0, v1

    return-void
.end method

.method private a(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 753
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    :goto_0
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return v2

    .line 1436
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v0, v0, v1

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 1437
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/lit8 v1, v1, 0x1

    .line 1438
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    goto :goto_3

    .line 1441
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1442
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1435
    :goto_3
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return v4
.end method

.method static synthetic b(Lcom/tencent/lbssearch/a/a/d/a;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result p0

    return p0
.end method

.method private b(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    .line 1326
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1327
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 1330
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1331
    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1399
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1334
    :cond_1
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1335
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 1338
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 1340
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    .line 1341
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    .line 1348
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 1350
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1351
    invoke-direct {p0, v6}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v2

    .line 1352
    iget v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    if-nez v2, :cond_5

    return v1

    .line 1358
    :cond_5
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 1359
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v3, v0, v2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1373
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1374
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->x()V

    .line 1375
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1376
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 1363
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    const-string v1, "*/"

    .line 1364
    invoke-direct {p0, v1}, Lcom/tencent/lbssearch/a/a/d/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1367
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v1, v6

    .line 1368
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    goto/16 :goto_0

    :cond_8
    const-string p1, "Unterminated comment"

    .line 1365
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const/16 v2, 0x23

    if-ne v1, v2, :cond_a

    .line 1383
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1389
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 1390
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->x()V

    .line 1391
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1392
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    goto/16 :goto_0

    .line 1394
    :cond_a
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    return v1

    :cond_b
    :goto_1
    move v1, v4

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1527
    new-instance v0, Lcom/tencent/lbssearch/a/a/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/a/a/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 986
    :goto_0
    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 987
    iget v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    :goto_1
    move v5, v4

    move v4, v3

    :goto_2
    const/4 v6, 0x1

    if-ge v3, v5, :cond_5

    add-int/lit8 v7, v3, 0x1

    .line 991
    aget-char v3, v0, v3

    if-ne v3, p1, :cond_1

    .line 994
    iput v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    if-nez v1, :cond_0

    .line 996
    sget-object p1, Lcom/tencent/lbssearch/a/a/d/a;->m:Lcom/tencent/lbssearch/a/a/d/e;

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    invoke-virtual {p1, v0, v4, v7, v2}, Lcom/tencent/lbssearch/a/a/d/e;->a([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    .line 998
    invoke-virtual {v1, v0, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    if-ne v3, v8, :cond_3

    .line 1003
    iput v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    if-nez v1, :cond_2

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    .line 1007
    invoke-virtual {v1, v0, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1008
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->y()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1009
    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1010
    iget v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    goto :goto_1

    :cond_3
    const/16 v8, 0xa

    if-ne v3, v8, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 1015
    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    .line 1016
    iput v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    goto :goto_3

    :cond_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    :goto_3
    move v3, v7

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    sub-int v5, v3, v4

    .line 1025
    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1026
    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1027
    invoke-direct {p0, v6}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 1028
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private b(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    .line 1275
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    .line 1276
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 1277
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    .line 1278
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1280
    :cond_0
    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    .line 1283
    :goto_0
    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1285
    :cond_1
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->b:Ljava/io/Reader;

    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1286
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    .line 1289
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 1290
    iget v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/lit8 v1, v1, 0x1

    .line 1291
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method static synthetic c(Lcom/tencent/lbssearch/a/a/d/a;)I
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result p0

    return p0
.end method

.method private c(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    .line 1102
    :goto_0
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1103
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 1106
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    .line 1108
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 1111
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1112
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->y()C

    .line 1113
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1114
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 1116
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    .line 1117
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    :cond_2
    move v1, v4

    goto :goto_1

    .line 1120
    :cond_3
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1121
    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    .line 1122
    invoke-direct {p0, p1}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic d(Lcom/tencent/lbssearch/a/a/d/a;)I
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result p0

    return p0
.end method

.method private o()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    const/16 v3, 0x8

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    sub-int/2addr v1, v13

    .line 459
    aput v12, v0, v1

    goto/16 :goto_0

    :cond_0
    if-ne v2, v12, :cond_3

    .line 462
    invoke-direct {p0, v13}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    move-result v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_2

    if-ne v0, v6, :cond_1

    .line 465
    iput v11, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v11

    :cond_1
    const-string v0, "Unterminated array"

    .line 471
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 467
    :cond_2
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    goto :goto_0

    :cond_3
    const/4 v14, 0x5

    if-eq v2, v7, :cond_1b

    if-ne v2, v14, :cond_4

    goto/16 :goto_2

    :cond_4
    if-ne v2, v11, :cond_7

    sub-int/2addr v1, v13

    .line 512
    aput v14, v0, v1

    .line 514
    invoke-direct {p0, v13}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    .line 519
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 520
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v13}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_c

    add-int/2addr v1, v13

    .line 521
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_0

    :cond_6
    const-string v0, "Expected \':\'"

    .line 525
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x6

    if-ne v2, v0, :cond_9

    .line 528
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->c:Z

    if-eqz v0, :cond_8

    .line 529
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->z()V

    .line 531
    :cond_8
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    sub-int/2addr v1, v13

    aput v8, v0, v1

    goto :goto_0

    :cond_9
    if-ne v2, v8, :cond_b

    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    .line 535
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0

    .line 537
    :cond_a
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 538
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_0

    :cond_b
    if-eq v2, v3, :cond_1a

    .line 544
    :cond_c
    :goto_0
    invoke-direct {p0, v13}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    move-result v0

    if-eq v0, v5, :cond_18

    if-eq v0, v4, :cond_17

    if-eq v0, v10, :cond_14

    if-eq v0, v9, :cond_14

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_13

    if-eq v0, v6, :cond_12

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_11

    .line 574
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 577
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    if-ne v0, v13, :cond_d

    .line 578
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 581
    :cond_d
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->q()I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 586
    :cond_e
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->r()I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 591
    :cond_f
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 595
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    const/16 v0, 0xa

    .line 596
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0

    :cond_10
    const-string v0, "Expected value"

    .line 592
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 572
    :cond_11
    iput v13, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v13

    :cond_12
    if-ne v2, v13, :cond_14

    .line 548
    iput v11, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v11

    .line 570
    :cond_13
    iput v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v7

    :cond_14
    if-eq v2, v13, :cond_16

    if-ne v2, v12, :cond_15

    goto :goto_1

    :cond_15
    const-string v0, "Unexpected value"

    .line 559
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 555
    :cond_16
    :goto_1
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 556
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 557
    iput v8, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v8

    .line 562
    :cond_17
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 563
    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v3

    .line 565
    :cond_18
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    if-ne v0, v13, :cond_19

    .line 566
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    :cond_19
    const/16 v0, 0x9

    .line 568
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0

    .line 541
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_2
    sub-int/2addr v1, v13

    .line 474
    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_1e

    .line 477
    invoke-direct {p0, v13}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    move-result v1

    if-eq v1, v10, :cond_1e

    if-eq v1, v9, :cond_1d

    if-ne v1, v0, :cond_1c

    .line 480
    iput v12, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v12

    :cond_1c
    const-string v0, "Unterminated object"

    .line 486
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 482
    :cond_1d
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 489
    :cond_1e
    invoke-direct {p0, v13}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    move-result v1

    if-eq v1, v5, :cond_23

    if-eq v1, v4, :cond_22

    const-string v3, "Expected name"

    if-eq v1, v0, :cond_20

    .line 503
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 504
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    int-to-char v0, v1

    .line 505
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0xe

    .line 506
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0

    .line 508
    :cond_1f
    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    if-eq v2, v14, :cond_21

    .line 498
    iput v12, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v12

    .line 500
    :cond_21
    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 494
    :cond_22
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    const/16 v0, 0xc

    .line 495
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0

    :cond_23
    const/16 v0, 0xd

    .line 492
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0
.end method

.method private q()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    .line 622
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    .line 624
    iget v6, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    .line 627
    :cond_6
    iget-object v6, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 628
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    return v1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 633
    :cond_8
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-lt v2, v3, :cond_9

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    .line 634
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->a(C)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 639
    :cond_a
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 640
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v0
.end method

.method private r()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 645
    iget-object v1, v0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    .line 646
    iget v2, v0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 647
    iget v3, v0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    add-int v14, v2, v8

    const/4 v15, 0x2

    if-ne v14, v3, :cond_2

    .line 659
    array-length v2, v1

    if-ne v8, v2, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v8, 0x1

    .line 664
    invoke-direct {v0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 667
    :cond_1
    iget v2, v0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 668
    iget v3, v0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    :cond_2
    add-int v14, v2, v8

    .line 671
    aget-char v14, v1, v14

    const/16 v7, 0x2b

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v14, v7, :cond_1c

    const/16 v7, 0x45

    if-eq v14, v7, :cond_19

    const/16 v7, 0x65

    if-eq v14, v7, :cond_19

    const/16 v7, 0x2d

    if-eq v14, v7, :cond_16

    const/16 v7, 0x2e

    if-eq v14, v7, :cond_14

    const/16 v7, 0x30

    if-lt v14, v7, :cond_d

    const/16 v7, 0x39

    if-le v14, v7, :cond_3

    goto :goto_6

    :cond_3
    if-eq v9, v6, :cond_c

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    if-ne v9, v15, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_5

    const/4 v4, 0x0

    return v4

    :cond_5
    const-wide/16 v4, 0xa

    mul-long v4, v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v7, v11, v14

    if-gtz v7, :cond_7

    if-nez v7, :cond_6

    cmp-long v7, v4, v11

    if-gez v7, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v7, 0x1

    :goto_2
    and-int/2addr v10, v7

    move-wide v11, v4

    goto :goto_3

    :cond_8
    const-wide/16 v16, 0x0

    if-ne v9, v4, :cond_9

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto/16 :goto_c

    :cond_9
    if-eq v9, v5, :cond_b

    const/4 v4, 0x6

    if-ne v9, v4, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_b
    :goto_4
    const/4 v7, 0x0

    const/4 v9, 0x7

    goto/16 :goto_c

    :cond_c
    :goto_5
    const-wide/16 v16, 0x0

    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v11, v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    goto :goto_c

    .line 708
    :cond_d
    :goto_6
    invoke-direct {v0, v14}, Lcom/tencent/lbssearch/a/a/d/a;->a(C)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_7
    if-ne v9, v15, :cond_10

    if-eqz v10, :cond_10

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v11, v1

    if-nez v3, :cond_e

    if-eqz v13, :cond_10

    :cond_e
    if-eqz v13, :cond_f

    goto :goto_8

    :cond_f
    neg-long v11, v11

    .line 734
    :goto_8
    iput-wide v11, v0, Lcom/tencent/lbssearch/a/a/d/a;->j:J

    .line 735
    iget v1, v0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    const/16 v1, 0xf

    .line 736
    iput v1, v0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v1

    :cond_10
    if-eq v9, v15, :cond_12

    const/4 v1, 0x4

    if-eq v9, v1, :cond_12

    const/4 v1, 0x7

    if-ne v9, v1, :cond_11

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    return v7

    .line 739
    :cond_12
    :goto_9
    iput v8, v0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    const/16 v1, 0x10

    .line 740
    iput v1, v0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v1

    :cond_13
    const/4 v7, 0x0

    return v7

    :cond_14
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_15

    const/4 v9, 0x3

    goto :goto_c

    :cond_15
    return v7

    :cond_16
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_17

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_c

    :cond_17
    if-ne v9, v5, :cond_18

    goto :goto_b

    :cond_18
    return v7

    :cond_19
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_1b

    const/4 v4, 0x4

    if-ne v9, v4, :cond_1a

    goto :goto_a

    :cond_1a
    return v7

    :cond_1b
    :goto_a
    const/4 v9, 0x5

    goto :goto_c

    :cond_1c
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_1d

    :goto_b
    const/4 v9, 0x6

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1d
    return v7
.end method

.method private s()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 1043
    :goto_0
    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-ge v4, v5, :cond_2

    .line 1044
    iget-object v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1050
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    goto :goto_1

    .line 1067
    :cond_2
    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 1068
    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    :cond_5
    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1080
    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    const/4 v2, 0x1

    .line 1082
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    .line 1089
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 1091
    :cond_6
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    :goto_3
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private t()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    .line 1128
    :goto_0
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-ge v2, v3, :cond_3

    .line 1129
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->w()V

    .line 1147
    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    .line 1151
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    const/4 v0, 0x1

    .line 1152
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private u()I
    .locals 1

    .line 1303
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v()I
    .locals 2

    .line 1307
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 1408
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private x()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1418
    :cond_0
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1421
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    .line 1422
    iput v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private y()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1466
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1467
    :cond_0
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1470
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-eq v0, v5, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v0, 0x4

    add-int/2addr v4, v0

    .line 1473
    iget v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-le v4, v5, :cond_4

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 1474
    :cond_3
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 1478
    iget v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/lit8 v5, v4, 0x4

    :goto_2
    if-ge v4, v5, :cond_8

    .line 1479
    iget-object v6, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    aget-char v6, v6, v4

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v7, 0x30

    if-lt v6, v7, :cond_5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5

    add-int/lit8 v6, v6, -0x30

    :goto_3
    add-int/2addr v2, v6

    int-to-char v2, v2

    goto :goto_5

    :cond_5
    const/16 v7, 0x61

    if-lt v6, v7, :cond_6

    if-gt v6, v3, :cond_6

    add-int/lit8 v6, v6, -0x61

    :goto_4
    add-int/2addr v6, v1

    goto :goto_3

    :cond_6
    const/16 v7, 0x41

    if-lt v6, v7, :cond_7

    const/16 v7, 0x46

    if-gt v6, v7, :cond_7

    add-int/lit8 v6, v6, -0x41

    goto :goto_4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1488
    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1491
    :cond_8
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    return v2

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v1

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    .line 1510
    :cond_e
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->g:I

    .line 1511
    iput v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->h:I

    :goto_6
    return v0
.end method

.method private z()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1536
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(Z)I

    .line 1537
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    .line 1539
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/a;->a:[C

    array-length v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->f:I

    if-le v1, v2, :cond_0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1543
    :goto_0
    sget-object v1, Lcom/tencent/lbssearch/a/a/d/a;->a:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1544
    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1550
    :cond_2
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 341
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(I)V

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-void

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/tencent/lbssearch/a/a/d/a;->c:Z

    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 359
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-void

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 377
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->a(I)V

    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-void

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1215
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    .line 1216
    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->n:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 1217
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    .line 1218
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 395
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    const/4 v0, 0x0

    .line 396
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-void

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/tencent/lbssearch/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :pswitch_0
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->j:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 448
    :pswitch_1
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->g:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 435
    :pswitch_2
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->e:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 445
    :pswitch_3
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->f:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 440
    :pswitch_4
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->i:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 438
    :pswitch_5
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->h:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 431
    :pswitch_6
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->b:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 429
    :pswitch_7
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->a:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 427
    :pswitch_8
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->d:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    .line 425
    :pswitch_9
    sget-object v0, Lcom/tencent/lbssearch/a/a/d/b;->c:Lcom/tencent/lbssearch/a/a/d/b;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 785
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 787
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 789
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 794
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-object v0

    .line 791
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 813
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 815
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 817
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 819
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    const/4 v1, 0x0

    .line 820
    iput-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 822
    iget-wide v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 824
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 825
    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    :goto_0
    const/4 v1, 0x0

    .line 830
    iput v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-object v0

    .line 827
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 847
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 850
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v2

    .line 853
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 870
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-void

    .line 872
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 893
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    .line 894
    iget-wide v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    .line 898
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v6, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 899
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 903
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 905
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 901
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 909
    :goto_2
    iput v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    .line 910
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 911
    iget-boolean v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->c:Z

    if-nez v5, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    .line 912
    :cond_8
    new-instance v2, Lcom/tencent/lbssearch/a/a/d/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/lbssearch/a/a/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 915
    iput-object v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 916
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-wide v0
.end method

.method public l()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 937
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    .line 938
    iget-wide v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->j:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, " column "

    const-string v4, " at line "

    const-string v5, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 942
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v6, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 943
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    goto :goto_0

    .line 954
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    const/16 v0, 0x27

    goto :goto_1

    :cond_5
    const/16 v0, 0x22

    .line 945
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 947
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 948
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    :goto_2
    const/16 v0, 0xb

    .line 958
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    .line 959
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v6, v0

    long-to-double v8, v6

    cmpl-double v10, v8, v0

    if-nez v10, :cond_6

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 966
    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return-wide v6

    .line 962
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v0, :cond_0

    .line 1168
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, " column "

    const-string v3, " at line "

    const-string v4, "Expected an int but was "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_2

    .line 1173
    iget-wide v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->j:J

    long-to-int v6, v0

    int-to-long v7, v6

    cmp-long v9, v0, v7

    if-nez v9, :cond_1

    .line 1178
    iput v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v6

    .line 1175
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1183
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->d:[C

    iget v6, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v7, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    invoke-direct {v0, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 1184
    iget v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v1, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v6, 0x9

    if-ne v0, v6, :cond_4

    goto :goto_0

    .line 1195
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/lbssearch/a/a/d/a;->f()Lcom/tencent/lbssearch/a/a/d/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    .line 1186
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/lbssearch/a/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 1188
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1189
    iput v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    :goto_2
    const/16 v0, 0xb

    .line 1199
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    .line 1200
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v6, v0

    int-to-double v7, v6

    cmpl-double v9, v7, v0

    if-nez v9, :cond_7

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    .line 1207
    iput v5, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    return v6

    .line 1203
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/lbssearch/a/a/d/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1229
    :cond_0
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v2, :cond_1

    .line 1231
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->o()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1235
    invoke-direct {p0, v4}, Lcom/tencent/lbssearch/a/a/d/a;->a(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    if-ne v2, v4, :cond_3

    .line 1238
    invoke-direct {p0, v3}, Lcom/tencent/lbssearch/a/a/d/a;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1241
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1244
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->o:I

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/16 v3, 0x9

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    .line 1253
    iget v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    iget v3, p0, Lcom/tencent/lbssearch/a/a/d/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/lbssearch/a/a/d/a;->e:I

    goto :goto_5

    :cond_9
    :goto_2
    const/16 v2, 0x22

    .line 1251
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->c(C)V

    goto :goto_5

    :cond_a
    :goto_3
    const/16 v2, 0x27

    .line 1249
    invoke-direct {p0, v2}, Lcom/tencent/lbssearch/a/a/d/a;->c(C)V

    goto :goto_5

    .line 1247
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->t()V

    .line 1255
    :cond_c
    :goto_5
    iput v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->i:I

    if-nez v1, :cond_0

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/d/a;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/lbssearch/a/a/d/a;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
