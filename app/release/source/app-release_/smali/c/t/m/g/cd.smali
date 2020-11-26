.class public final Lc/t/m/g/cd;
.super Ljava/lang/Object;


# static fields
.field private static a:[B


# instance fields
.field private b:[J

.field private c:[J

.field private d:[B

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc/t/m/g/cd;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lc/t/m/g/cd;->b:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lc/t/m/g/cd;->c:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lc/t/m/g/cd;->d:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lc/t/m/g/cd;->e:[B

    invoke-direct {p0}, Lc/t/m/g/cd;->a()V

    return-void
.end method

.method private static a(JJJJJJJ)J
    .locals 2

    and-long/2addr p4, p2

    not-long v0, p2

    and-long/2addr p6, v0

    or-long/2addr p4, p6

    add-long/2addr p4, p8

    add-long/2addr p4, p12

    add-long/2addr p0, p4

    long-to-int p1, p0

    long-to-int p0, p10

    shl-int p0, p1, p0

    const-wide/16 p4, 0x20

    sub-long/2addr p4, p10

    long-to-int p5, p4

    ushr-int/2addr p1, p5

    or-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "ISO8859_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    new-instance v0, Lc/t/m/g/cd;

    invoke-direct {v0}, Lc/t/m/g/cd;-><init>()V

    invoke-direct {v0}, Lc/t/m/g/cd;->a()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    int-to-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Lc/t/m/g/cd;->a(Ljava/io/InputStream;J)Z

    const/16 p0, 0x8

    new-array v1, p0, [B

    iget-object v2, v0, Lc/t/m/g/cd;->c:[J

    invoke-static {v1, v2, p0}, Lc/t/m/g/cd;->a([B[JI)V

    iget-object v2, v0, Lc/t/m/g/cd;->c:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v2, 0x3

    ushr-long/2addr v4, v2

    long-to-int v2, v4

    and-int/lit8 v2, v2, 0x3f

    const/16 v4, 0x38

    if-ge v2, v4, :cond_0

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_0
    rsub-int/lit8 v4, v2, 0x78

    :goto_1
    sget-object v2, Lc/t/m/g/cd;->a:[B

    invoke-direct {v0, v2, v4}, Lc/t/m/g/cd;->a([BI)V

    invoke-direct {v0, v1, p0}, Lc/t/m/g/cd;->a([BI)V

    iget-object p0, v0, Lc/t/m/g/cd;->e:[B

    iget-object v1, v0, Lc/t/m/g/cd;->b:[J

    const/16 v2, 0x10

    invoke-static {p0, v1, v2}, Lc/t/m/g/cd;->a([B[JI)V

    iget-object p0, v0, Lc/t/m/g/cd;->e:[B

    const-string v0, ""

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    new-array v5, v2, [C

    fill-array-data v5, :array_0

    const/4 v6, 0x2

    new-array v6, v6, [C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v5, v7

    aput-char v7, v6, v3

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v5, v0

    const/4 v5, 0x1

    aput-char v0, v6, v5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lc/t/m/g/cd;->c:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    iget-object v0, p0, Lc/t/m/g/cd;->b:[J

    const-wide/32 v2, 0x67452301

    aput-wide v2, v0, v1

    const-wide v1, 0xefcdab89L

    aput-wide v1, v0, v4

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method

.method private a([B)V
    .locals 69

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/t/m/g/cd;->b:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/16 v17, 0x1

    aget-wide v32, v1, v17

    const/16 v34, 0x2

    aget-wide v35, v1, v34

    const/16 v37, 0x3

    aget-wide v18, v1, v37

    const/16 v1, 0x10

    new-array v15, v1, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x40

    const/16 v38, 0x8

    if-ge v5, v7, :cond_4

    aget-byte v7, p1, v5

    if-gez v7, :cond_0

    and-int/lit16 v7, v7, 0xff

    :cond_0
    int-to-long v7, v7

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    if-gez v9, :cond_1

    and-int/lit16 v9, v9, 0xff

    :cond_1
    int-to-long v9, v9

    shl-long v9, v9, v38

    or-long/2addr v7, v9

    add-int/lit8 v9, v5, 0x2

    aget-byte v9, p1, v9

    if-gez v9, :cond_2

    and-int/lit16 v9, v9, 0xff

    :cond_2
    int-to-long v9, v9

    shl-long/2addr v9, v1

    or-long/2addr v7, v9

    add-int/lit8 v9, v5, 0x3

    aget-byte v9, p1, v9

    if-gez v9, :cond_3

    and-int/lit16 v9, v9, 0xff

    :cond_3
    int-to-long v9, v9

    const/16 v11, 0x18

    shl-long/2addr v9, v11

    or-long/2addr v7, v9

    aput-wide v7, v15, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_4
    aget-wide v11, v15, v2

    const-wide/16 v13, 0x7

    const-wide v20, 0xd76aa478L

    move-wide/from16 v5, v32

    move-wide/from16 v7, v35

    move-wide/from16 v9, v18

    move-object v1, v15

    move-wide/from16 v15, v20

    invoke-static/range {v3 .. v16}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v39

    aget-wide v26, v1, v17

    const-wide/16 v28, 0xc

    const-wide v30, 0xe8c7b756L

    move-wide/from16 v20, v39

    move-wide/from16 v22, v32

    move-wide/from16 v24, v35

    invoke-static/range {v18 .. v31}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v3

    aget-wide v26, v1, v34

    const-wide/16 v28, 0x11

    const-wide/32 v30, 0x242070db

    move-wide/from16 v18, v35

    move-wide/from16 v20, v3

    move-wide/from16 v22, v39

    move-wide/from16 v24, v32

    invoke-static/range {v18 .. v31}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v35

    aget-wide v26, v1, v37

    const-wide/16 v28, 0x16

    const-wide v30, 0xc1bdceeeL

    move-wide/from16 v18, v32

    move-wide/from16 v20, v35

    move-wide/from16 v22, v3

    move-wide/from16 v24, v39

    invoke-static/range {v18 .. v31}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v18

    const/16 v20, 0x4

    aget-wide v47, v1, v20

    const-wide/16 v49, 0x7

    const-wide v51, 0xf57c0fafL

    move-wide/from16 v41, v18

    move-wide/from16 v43, v35

    move-wide/from16 v45, v3

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v21

    const/16 v23, 0x5

    aget-wide v11, v1, v23

    const-wide/16 v13, 0xc

    const-wide/32 v15, 0x4787c62a

    move-wide/from16 v5, v21

    move-wide/from16 v7, v18

    move-wide/from16 v9, v35

    invoke-static/range {v3 .. v16}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v39

    const/4 v3, 0x6

    aget-wide v49, v1, v3

    const-wide/16 v51, 0x11

    const-wide v53, 0xa8304613L

    move-wide/from16 v41, v35

    move-wide/from16 v43, v39

    move-wide/from16 v45, v21

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v4

    const/4 v6, 0x7

    aget-wide v49, v1, v6

    const-wide/16 v51, 0x16

    const-wide v53, 0xfd469501L

    move-wide/from16 v41, v18

    move-wide/from16 v43, v4

    move-wide/from16 v45, v39

    move-wide/from16 v47, v21

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v7

    aget-wide v61, v1, v38

    const-wide/16 v63, 0x7

    const-wide/32 v65, 0x698098d8

    move-wide/from16 v53, v21

    move-wide/from16 v55, v7

    move-wide/from16 v57, v4

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v9

    const/16 v11, 0x9

    aget-wide v47, v1, v11

    const-wide/16 v49, 0xc

    const-wide v51, 0x8b44f7afL

    move-wide/from16 v41, v9

    move-wide/from16 v43, v7

    move-wide/from16 v45, v4

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v12

    const/16 v14, 0xa

    aget-wide v63, v1, v14

    const-wide/16 v65, 0x11

    const-wide v67, 0xffff5bb1L

    move-wide/from16 v55, v4

    move-wide/from16 v57, v12

    move-wide/from16 v59, v9

    move-wide/from16 v61, v7

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v39

    const/16 v4, 0xb

    aget-wide v63, v1, v4

    const-wide/16 v65, 0x16

    const-wide v67, 0x895cd7beL

    move-wide/from16 v55, v7

    move-wide/from16 v57, v39

    move-wide/from16 v59, v12

    move-wide/from16 v61, v9

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v7

    const/16 v5, 0xc

    aget-wide v49, v1, v5

    const-wide/16 v51, 0x7

    const-wide/32 v53, 0x6b901122

    move-wide/from16 v43, v7

    move-wide/from16 v45, v39

    move-wide/from16 v47, v12

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v9

    const/16 v15, 0xd

    aget-wide v61, v1, v15

    const-wide/16 v63, 0xc

    const-wide v65, 0xfd987193L

    move-wide/from16 v53, v12

    move-wide/from16 v55, v9

    move-wide/from16 v57, v7

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v12

    const/16 v16, 0xe

    aget-wide v47, v1, v16

    const-wide/16 v49, 0x11

    const-wide v51, 0xa679438eL

    move-wide/from16 v41, v12

    move-wide/from16 v43, v9

    move-wide/from16 v45, v7

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v18

    const/16 v21, 0xf

    aget-wide v49, v1, v21

    const-wide/16 v51, 0x16

    const-wide/32 v53, 0x49b40821

    move-wide/from16 v41, v7

    move-wide/from16 v43, v18

    move-wide/from16 v45, v12

    move-wide/from16 v47, v9

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->a(JJJJJJJ)J

    move-result-wide v7

    aget-wide v63, v1, v17

    const-wide/16 v65, 0x5

    const-wide v67, 0xf61e2562L

    move-wide/from16 v57, v7

    move-wide/from16 v59, v18

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v39

    aget-wide v49, v1, v3

    const-wide/16 v51, 0x9

    const-wide v53, 0xc040b340L

    move-wide/from16 v41, v12

    move-wide/from16 v43, v39

    move-wide/from16 v45, v7

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v9

    aget-wide v61, v1, v4

    const-wide/16 v63, 0xe

    const-wide/32 v65, 0x265e5a51

    move-wide/from16 v53, v18

    move-wide/from16 v55, v9

    move-wide/from16 v57, v39

    move-wide/from16 v59, v7

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v12

    aget-wide v63, v1, v2

    const-wide/16 v65, 0x14

    const-wide v67, 0xe9b6c7aaL

    move-wide/from16 v55, v7

    move-wide/from16 v57, v12

    move-wide/from16 v59, v9

    move-wide/from16 v61, v39

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v7

    aget-wide v47, v1, v23

    const-wide/16 v49, 0x5

    const-wide v51, 0xd62f105dL

    move-wide/from16 v41, v7

    move-wide/from16 v43, v12

    move-wide/from16 v45, v9

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v63, v1, v14

    const-wide/16 v65, 0x9

    const-wide/32 v67, 0x2441453

    move-wide/from16 v55, v9

    move-wide/from16 v57, v18

    move-wide/from16 v59, v7

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v39

    aget-wide v49, v1, v21

    const-wide/16 v51, 0xe

    const-wide v53, 0xd8a1e681L

    move-wide/from16 v41, v12

    move-wide/from16 v43, v39

    move-wide/from16 v45, v18

    move-wide/from16 v47, v7

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v9

    aget-wide v49, v1, v20

    const-wide/16 v51, 0x14

    const-wide v53, 0xe7d3fbc8L

    move-wide/from16 v41, v7

    move-wide/from16 v43, v9

    move-wide/from16 v45, v39

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v7

    aget-wide v61, v1, v11

    const-wide/16 v63, 0x5

    const-wide/32 v65, 0x21e1cde6

    move-wide/from16 v53, v18

    move-wide/from16 v55, v7

    move-wide/from16 v57, v9

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v12

    aget-wide v47, v1, v16

    const-wide/16 v49, 0x9

    const-wide v51, 0xc33707d6L

    move-wide/from16 v41, v12

    move-wide/from16 v43, v7

    move-wide/from16 v45, v9

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v63, v1, v37

    const-wide/16 v65, 0xe

    const-wide v67, 0xf4d50d87L

    move-wide/from16 v55, v9

    move-wide/from16 v57, v18

    move-wide/from16 v59, v12

    move-wide/from16 v61, v7

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v39

    aget-wide v63, v1, v38

    const-wide/16 v65, 0x14

    const-wide/32 v67, 0x455a14ed

    move-wide/from16 v55, v7

    move-wide/from16 v57, v39

    move-wide/from16 v59, v18

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v7

    aget-wide v49, v1, v15

    const-wide/16 v51, 0x5

    const-wide v53, 0xa9e3e905L

    move-wide/from16 v43, v7

    move-wide/from16 v45, v39

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v9

    aget-wide v61, v1, v34

    const-wide/16 v63, 0x9

    const-wide v65, 0xfcefa3f8L

    move-wide/from16 v53, v18

    move-wide/from16 v55, v9

    move-wide/from16 v57, v7

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v12

    aget-wide v47, v1, v6

    const-wide/16 v49, 0xe

    const-wide/32 v51, 0x676f02d9

    move-wide/from16 v41, v12

    move-wide/from16 v43, v9

    move-wide/from16 v45, v7

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v18

    aget-wide v49, v1, v5

    const-wide/16 v51, 0x14

    const-wide v53, 0x8d2a4c8aL

    move-wide/from16 v41, v7

    move-wide/from16 v43, v18

    move-wide/from16 v45, v12

    move-wide/from16 v47, v9

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->b(JJJJJJJ)J

    move-result-wide v7

    aget-wide v63, v1, v23

    const-wide/16 v65, 0x4

    const-wide v67, 0xfffa3942L

    move-wide/from16 v57, v7

    move-wide/from16 v59, v18

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v39

    aget-wide v49, v1, v38

    const-wide/16 v51, 0xb

    const-wide v53, 0x8771f681L

    move-wide/from16 v41, v12

    move-wide/from16 v43, v39

    move-wide/from16 v45, v7

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v9

    aget-wide v61, v1, v4

    const-wide/16 v63, 0x10

    const-wide/32 v65, 0x6d9d6122

    move-wide/from16 v53, v18

    move-wide/from16 v55, v9

    move-wide/from16 v57, v39

    move-wide/from16 v59, v7

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v12

    aget-wide v63, v1, v16

    const-wide/16 v65, 0x17

    const-wide v67, 0xfde5380cL

    move-wide/from16 v55, v7

    move-wide/from16 v57, v12

    move-wide/from16 v59, v9

    move-wide/from16 v61, v39

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v7

    aget-wide v47, v1, v17

    const-wide/16 v49, 0x4

    const-wide v51, 0xa4beea44L

    move-wide/from16 v41, v7

    move-wide/from16 v43, v12

    move-wide/from16 v45, v9

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v63, v1, v20

    const-wide/16 v65, 0xb

    const-wide/32 v67, 0x4bdecfa9

    move-wide/from16 v55, v9

    move-wide/from16 v57, v18

    move-wide/from16 v59, v7

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v39

    aget-wide v49, v1, v6

    const-wide/16 v51, 0x10

    const-wide v53, 0xf6bb4b60L

    move-wide/from16 v41, v12

    move-wide/from16 v43, v39

    move-wide/from16 v45, v18

    move-wide/from16 v47, v7

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v9

    aget-wide v49, v1, v14

    const-wide/16 v51, 0x17

    const-wide v53, 0xbebfbc70L

    move-wide/from16 v41, v7

    move-wide/from16 v43, v9

    move-wide/from16 v45, v39

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v7

    aget-wide v61, v1, v15

    const-wide/16 v63, 0x4

    const-wide/32 v65, 0x289b7ec6

    move-wide/from16 v53, v18

    move-wide/from16 v55, v7

    move-wide/from16 v57, v9

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v12

    aget-wide v47, v1, v2

    const-wide/16 v49, 0xb

    const-wide v51, 0xeaa127faL

    move-wide/from16 v41, v12

    move-wide/from16 v43, v7

    move-wide/from16 v45, v9

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v63, v1, v37

    const-wide/16 v65, 0x10

    const-wide v67, 0xd4ef3085L

    move-wide/from16 v55, v9

    move-wide/from16 v57, v18

    move-wide/from16 v59, v12

    move-wide/from16 v61, v7

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v39

    aget-wide v63, v1, v3

    const-wide/16 v65, 0x17

    const-wide/32 v67, 0x4881d05

    move-wide/from16 v55, v7

    move-wide/from16 v57, v39

    move-wide/from16 v59, v18

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v7

    aget-wide v49, v1, v11

    const-wide/16 v51, 0x4

    const-wide v53, 0xd9d4d039L

    move-wide/from16 v43, v7

    move-wide/from16 v45, v39

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v9

    aget-wide v61, v1, v5

    const-wide/16 v63, 0xb

    const-wide v65, 0xe6db99e5L

    move-wide/from16 v53, v18

    move-wide/from16 v55, v9

    move-wide/from16 v57, v7

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v12

    aget-wide v47, v1, v21

    const-wide/16 v49, 0x10

    const-wide/32 v51, 0x1fa27cf8

    move-wide/from16 v41, v12

    move-wide/from16 v43, v9

    move-wide/from16 v45, v7

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v18

    aget-wide v49, v1, v34

    const-wide/16 v51, 0x17

    const-wide v53, 0xc4ac5665L

    move-wide/from16 v41, v7

    move-wide/from16 v43, v18

    move-wide/from16 v45, v12

    move-wide/from16 v47, v9

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->c(JJJJJJJ)J

    move-result-wide v7

    aget-wide v63, v1, v2

    const-wide/16 v65, 0x6

    const-wide v67, 0xf4292244L

    move-wide/from16 v57, v7

    move-wide/from16 v59, v18

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v39

    aget-wide v49, v1, v6

    const-wide/16 v51, 0xa

    const-wide/32 v53, 0x432aff97

    move-wide/from16 v41, v12

    move-wide/from16 v43, v39

    move-wide/from16 v45, v7

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v9

    aget-wide v61, v1, v16

    const-wide/16 v63, 0xf

    const-wide v65, 0xab9423a7L

    move-wide/from16 v53, v18

    move-wide/from16 v55, v9

    move-wide/from16 v57, v39

    move-wide/from16 v59, v7

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v12

    aget-wide v63, v1, v23

    const-wide/16 v65, 0x15

    const-wide v67, 0xfc93a039L

    move-wide/from16 v55, v7

    move-wide/from16 v57, v12

    move-wide/from16 v59, v9

    move-wide/from16 v61, v39

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v6

    aget-wide v47, v1, v5

    const-wide/16 v49, 0x6

    const-wide/32 v51, 0x655b59c3

    move-wide/from16 v41, v6

    move-wide/from16 v43, v12

    move-wide/from16 v45, v9

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v18

    aget-wide v63, v1, v37

    const-wide/16 v65, 0xa

    const-wide v67, 0x8f0ccc92L

    move-wide/from16 v55, v9

    move-wide/from16 v57, v18

    move-wide/from16 v59, v6

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v39

    aget-wide v49, v1, v14

    const-wide/16 v51, 0xf

    const-wide v53, 0xffeff47dL

    move-wide/from16 v41, v12

    move-wide/from16 v43, v39

    move-wide/from16 v45, v18

    move-wide/from16 v47, v6

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v8

    aget-wide v49, v1, v17

    const-wide/16 v51, 0x15

    const-wide v53, 0x85845dd1L

    move-wide/from16 v41, v6

    move-wide/from16 v43, v8

    move-wide/from16 v45, v39

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v5

    aget-wide v61, v1, v38

    const-wide/16 v63, 0x6

    const-wide/32 v65, 0x6fa87e4f

    move-wide/from16 v53, v18

    move-wide/from16 v55, v5

    move-wide/from16 v57, v8

    move-wide/from16 v59, v39

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v12

    aget-wide v47, v1, v21

    const-wide/16 v49, 0xa

    const-wide v51, 0xfe2ce6e0L

    move-wide/from16 v41, v12

    move-wide/from16 v43, v5

    move-wide/from16 v45, v8

    invoke-static/range {v39 .. v52}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v18

    aget-wide v63, v1, v3

    const-wide/16 v65, 0xf

    const-wide v67, 0xa3014314L

    move-wide/from16 v55, v8

    move-wide/from16 v57, v18

    move-wide/from16 v59, v12

    move-wide/from16 v61, v5

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v38

    aget-wide v63, v1, v15

    const-wide/16 v65, 0x15

    const-wide/32 v67, 0x4e0811a1

    move-wide/from16 v55, v5

    move-wide/from16 v57, v38

    move-wide/from16 v59, v18

    move-wide/from16 v61, v12

    invoke-static/range {v55 .. v68}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v5

    aget-wide v49, v1, v20

    const-wide/16 v51, 0x6

    const-wide v53, 0xf7537e82L

    move-wide/from16 v43, v5

    move-wide/from16 v45, v38

    move-wide/from16 v47, v18

    invoke-static/range {v41 .. v54}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v7

    aget-wide v61, v1, v4

    const-wide/16 v63, 0xa

    const-wide v65, 0xbd3af235L

    move-wide/from16 v53, v18

    move-wide/from16 v55, v7

    move-wide/from16 v57, v5

    move-wide/from16 v59, v38

    invoke-static/range {v53 .. v66}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v3

    aget-wide v46, v1, v34

    const-wide/16 v48, 0xf

    const-wide/32 v50, 0x2ad7d2bb

    move-wide/from16 v40, v3

    move-wide/from16 v42, v7

    move-wide/from16 v44, v5

    invoke-static/range {v38 .. v51}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v9

    aget-wide v48, v1, v11

    const-wide/16 v50, 0x15

    const-wide v52, 0xeb86d391L

    move-wide/from16 v40, v5

    move-wide/from16 v42, v9

    move-wide/from16 v44, v3

    move-wide/from16 v46, v7

    invoke-static/range {v40 .. v53}, Lc/t/m/g/cd;->d(JJJJJJJ)J

    move-result-wide v5

    iget-object v1, v0, Lc/t/m/g/cd;->b:[J

    aget-wide v11, v1, v2

    add-long/2addr v11, v7

    aput-wide v11, v1, v2

    aget-wide v7, v1, v17

    add-long/2addr v7, v5

    aput-wide v7, v1, v17

    aget-wide v5, v1, v34

    add-long/2addr v5, v9

    aput-wide v5, v1, v34

    aget-wide v5, v1, v37

    add-long/2addr v5, v3

    aput-wide v5, v1, v37

    return-void
.end method

.method private a([BI)V
    .locals 11

    const/16 v0, 0x40

    new-array v1, v0, [B

    iget-object v2, p0, Lc/t/m/g/cd;->c:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x3

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    and-int/lit8 v4, v5, 0x3f

    aget-wide v5, v2, v3

    shl-int/lit8 v7, p2, 0x3

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v2, v3

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-gez v10, :cond_0

    aget-wide v5, v2, v9

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    aput-wide v5, v2, v9

    :cond_0
    aget-wide v5, v2, v9

    ushr-int/lit8 v7, p2, 0x1d

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v2, v9

    rsub-int/lit8 v2, v4, 0x40

    if-lt p2, v2, :cond_4

    iget-object v5, p0, Lc/t/m/g/cd;->d:[B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    add-int v7, v4, v6

    aget-byte v8, p1, v6

    aput-byte v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lc/t/m/g/cd;->d:[B

    invoke-direct {p0, v4}, Lc/t/m/g/cd;->a([B)V

    :goto_1
    add-int/lit8 v4, v2, 0x3f

    if-ge v4, p2, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    add-int v5, v2, v4

    aget-byte v5, p1, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lc/t/m/g/cd;->a([B)V

    add-int/lit8 v2, v2, 0x40

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-object v0, p0, Lc/t/m/g/cd;->d:[B

    sub-int/2addr p2, v2

    :goto_4
    if-ge v3, p2, :cond_5

    add-int v1, v4, v3

    add-int v5, v2, v3

    aget-byte v5, p1, v5

    aput-byte v5, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private static a([B[JI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-wide v2, p1, v1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget-wide v6, p1, v1

    const/16 v3, 0x8

    ushr-long/2addr v6, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-wide v6, p1, v1

    const/16 v3, 0x10

    ushr-long/2addr v6, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v0, 0x3

    aget-wide v6, p1, v1

    const/16 v3, 0x18

    ushr-long/2addr v6, v3

    and-long v3, v6, v4

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;J)Z
    .locals 10

    const/16 v0, 0x40

    new-array v0, v0, [B

    iget-object v1, p0, Lc/t/m/g/cd;->c:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x3

    ushr-long/2addr v3, v5

    long-to-int v4, v3

    and-int/lit8 v3, v4, 0x3f

    aget-wide v6, v1, v2

    shl-long v4, p2, v5

    add-long/2addr v6, v4

    aput-wide v6, v1, v2

    const/4 v8, 0x1

    cmp-long v9, v6, v4

    if-gez v9, :cond_0

    aget-wide v4, v1, v8

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v1, v8

    :cond_0
    aget-wide v4, v1, v8

    const/16 v6, 0x1d

    ushr-long v6, p2, v6

    add-long/2addr v4, v6

    aput-wide v4, v1, v8

    rsub-int/lit8 v1, v3, 0x40

    int-to-long v4, v1

    cmp-long v6, p2, v4

    if-ltz v6, :cond_3

    new-array v4, v1, [B

    :try_start_0
    invoke-virtual {p1, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, p0, Lc/t/m/g/cd;->d:[B

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    add-int v7, v3, v6

    aget-byte v9, v4, v6

    aput-byte v9, v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lc/t/m/g/cd;->d:[B

    invoke-direct {p0, v3}, Lc/t/m/g/cd;->a([B)V

    :goto_1
    add-int/lit8 v3, v1, 0x3f

    int-to-long v3, v3

    cmp-long v5, v3, p2

    if-gez v5, :cond_2

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-direct {p0, v0}, Lc/t/m/g/cd;->a([B)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    int-to-long v0, v1

    sub-long/2addr p2, v0

    long-to-int p3, p2

    new-array p2, p3, [B

    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    iget-object p1, p0, Lc/t/m/g/cd;->d:[B

    :goto_3
    if-ge v2, p3, :cond_4

    add-int v0, v3, v2

    aget-byte v1, p2, v2

    aput-byte v1, p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return v8

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private static b(JJJJJJJ)J
    .locals 2

    and-long v0, p2, p6

    not-long p6, p6

    and-long/2addr p4, p6

    or-long/2addr p4, v0

    add-long/2addr p4, p8

    add-long/2addr p4, p12

    add-long/2addr p0, p4

    long-to-int p1, p0

    long-to-int p0, p10

    shl-int p0, p1, p0

    const-wide/16 p4, 0x20

    sub-long/2addr p4, p10

    long-to-int p5, p4

    ushr-int/2addr p1, p5

    or-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static c(JJJJJJJ)J
    .locals 0

    xor-long/2addr p4, p2

    xor-long/2addr p4, p6

    add-long/2addr p4, p8

    add-long/2addr p4, p12

    add-long/2addr p0, p4

    long-to-int p1, p0

    long-to-int p0, p10

    shl-int p0, p1, p0

    const-wide/16 p4, 0x20

    sub-long/2addr p4, p10

    long-to-int p5, p4

    ushr-int/2addr p1, p5

    or-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static d(JJJJJJJ)J
    .locals 0

    not-long p6, p6

    or-long/2addr p6, p2

    xor-long/2addr p4, p6

    add-long/2addr p4, p8

    add-long/2addr p4, p12

    add-long/2addr p0, p4

    long-to-int p1, p0

    long-to-int p0, p10

    shl-int p0, p1, p0

    const-wide/16 p4, 0x20

    sub-long/2addr p4, p10

    long-to-int p5, p4

    ushr-int/2addr p1, p5

    or-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr p0, p2

    return-wide p0
.end method
