.class public Lcom/lody/virtual/client/env/VirtualGPSSatalines;
.super Ljava/lang/Object;
.source "VirtualGPSSatalines.java"


# static fields
.field private static INSTANCE:Lcom/lody/virtual/client/env/VirtualGPSSatalines;


# instance fields
.field private mAlmanacMask:I

.field private mAzimuths:[F

.field private mElevations:[F

.field private mEphemerisMask:I

.field private mSnrs:[F

.field private mUsedInFixMask:I

.field private pnrs:[I

.field private prnWithFlags:[I

.field private svCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    invoke-direct {v0}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->INSTANCE:Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    return-void
.end method

.method private constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v13, Lcom/lody/virtual/client/env/GPSStateline;

    const/4 v3, 0x5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const-wide/high16 v8, 0x405c000000000000L    # 112.0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0xd

    const-wide/high16 v16, 0x402b000000000000L    # 13.5

    const-wide/high16 v18, 0x4037000000000000L    # 23.0

    const-wide v20, 0x404a800000000000L    # 53.0

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0xe

    const-wide v5, 0x403319999999999aL    # 19.1

    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    const-wide v9, 0x406ee00000000000L    # 247.0

    const/4 v13, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0xf

    const-wide/high16 v16, 0x403f000000000000L    # 31.0

    const-wide/high16 v18, 0x404d000000000000L    # 58.0

    const-wide v20, 0x4046800000000000L    # 45.0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x12

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x404a000000000000L    # 52.0

    const-wide v9, 0x4073500000000000L    # 309.0

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x14

    const-wide v16, 0x403e19999999999aL    # 30.1

    const-wide/high16 v18, 0x404b000000000000L    # 54.0

    const-wide v20, 0x405a400000000000L    # 105.0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x15

    const-wide v5, 0x404099999999999aL    # 33.2

    const-wide/high16 v7, 0x404c000000000000L    # 56.0

    const-wide v9, 0x406f600000000000L    # 251.0

    const/4 v11, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x16

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x402c000000000000L    # 14.0

    const-wide v20, 0x4072b00000000000L    # 299.0

    const/16 v22, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x18

    const-wide v5, 0x4039e66666666666L    # 25.9

    const-wide v7, 0x404c800000000000L    # 57.0

    const-wide v9, 0x4063a00000000000L    # 157.0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x1b

    const-wide/high16 v16, 0x4032000000000000L    # 18.0

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    const-wide v20, 0x4073500000000000L    # 309.0

    const/16 v22, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x1c

    const-wide v5, 0x4032333333333333L    # 18.2

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const-wide/high16 v9, 0x4045000000000000L    # 42.0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x29

    const-wide v16, 0x403ccccccccccccdL    # 28.8

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x32

    const-wide v5, 0x403d333333333333L    # 29.2

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x43

    const-wide v16, 0x402ccccccccccccdL    # 14.4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    const-wide/high16 v20, 0x4057000000000000L    # 92.0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x44

    const-wide v5, 0x4035333333333333L    # 21.2

    const-wide v7, 0x4046800000000000L    # 45.0

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x45

    const-wide v16, 0x4031800000000000L    # 17.5

    const-wide/high16 v18, 0x4049000000000000L    # 50.0

    const-wide v20, 0x4074a00000000000L    # 330.0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x46

    const-wide v5, 0x4036666666666666L    # 22.4

    const-wide/high16 v7, 0x401c000000000000L    # 7.0

    const-wide v9, 0x4072300000000000L    # 291.0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x4d

    const-wide v16, 0x4037cccccccccccdL    # 23.8

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const-wide/high16 v20, 0x4037000000000000L    # 23.0

    const/16 v22, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x4e

    const-wide/high16 v5, 0x4032000000000000L    # 18.0

    const-wide v7, 0x4047800000000000L    # 47.0

    const-wide v9, 0x4051800000000000L    # 70.0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x4f

    const-wide v16, 0x4036cccccccccccdL    # 22.8

    const-wide v18, 0x4044800000000000L    # 41.0

    const-wide v20, 0x4061c00000000000L    # 142.0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x53

    const-wide v5, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    const-wide v9, 0x406a800000000000L    # 212.0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v15, 0x54

    const-wide v16, 0x4030b33333333333L    # 16.7

    const-wide/high16 v18, 0x403e000000000000L    # 30.0

    const-wide v20, 0x4070800000000000L    # 264.0

    move-object v14, v2

    invoke-direct/range {v14 .. v24}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/lody/virtual/client/env/GPSStateline;

    const/16 v4, 0x55

    const-wide v5, 0x4028333333333333L    # 12.1

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    const-wide v9, 0x4073d00000000000L    # 317.0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/lody/virtual/client/env/GPSStateline;-><init>(IDDDZZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->svCount:I

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->pnrs:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 81
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 82
    iget-object v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->pnrs:[I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v5}, Lcom/lody/virtual/client/env/GPSStateline;->getPnr()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mSnrs:[F

    const/4 v3, 0x0

    .line 85
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 86
    iget-object v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mSnrs:[F

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v5}, Lcom/lody/virtual/client/env/GPSStateline;->getSnr()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mElevations:[F

    const/4 v3, 0x0

    .line 89
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 90
    iget-object v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mElevations:[F

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v5}, Lcom/lody/virtual/client/env/GPSStateline;->getElevation()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAzimuths:[F

    const/4 v3, 0x0

    .line 93
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 94
    iget-object v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAzimuths:[F

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v5}, Lcom/lody/virtual/client/env/GPSStateline;->getAzimuth()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 96
    :cond_3
    iput v2, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mEphemerisMask:I

    const/4 v3, 0x0

    .line 97
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v4}, Lcom/lody/virtual/client/env/GPSStateline;->isHasEphemeris()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    iget v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mEphemerisMask:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v6}, Lcom/lody/virtual/client/env/GPSStateline;->getPnr()I

    move-result v6

    sub-int/2addr v6, v5

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mEphemerisMask:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 102
    :cond_5
    iput v2, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAlmanacMask:I

    const/4 v3, 0x0

    .line 103
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v4}, Lcom/lody/virtual/client/env/GPSStateline;->isHasAlmanac()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 105
    iget v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAlmanacMask:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v6}, Lcom/lody/virtual/client/env/GPSStateline;->getPnr()I

    move-result v6

    sub-int/2addr v6, v5

    shl-int v6, v5, v6

    or-int/2addr v4, v6

    iput v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAlmanacMask:I

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 108
    :cond_7
    iput v2, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mUsedInFixMask:I

    const/4 v3, 0x0

    .line 109
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_9

    .line 110
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v4}, Lcom/lody/virtual/client/env/GPSStateline;->isUseInFix()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 111
    iget v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mUsedInFixMask:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lody/virtual/client/env/GPSStateline;

    invoke-virtual {v6}, Lcom/lody/virtual/client/env/GPSStateline;->getPnr()I

    move-result v6

    sub-int/2addr v6, v5

    shl-int v6, v5, v6

    or-int/2addr v4, v6

    iput v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mUsedInFixMask:I

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 114
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->prnWithFlags:[I

    .line 115
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/client/env/GPSStateline;

    .line 117
    iget-object v4, v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->prnWithFlags:[I

    .line 118
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/GPSStateline;->isHasEphemeris()Z

    move-result v6

    .line 119
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/GPSStateline;->isHasAlmanac()Z

    move-result v7

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    .line 120
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/GPSStateline;->isUseInFix()Z

    move-result v7

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    or-int/lit8 v6, v6, 0x8

    .line 122
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/GPSStateline;->getPnr()I

    move-result v3

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v3, v6

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    return-void
.end method

.method public static get()Lcom/lody/virtual/client/env/VirtualGPSSatalines;
    .locals 1

    .line 51
    sget-object v0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->INSTANCE:Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    return-object v0
.end method


# virtual methods
.method public getAlmanacMask()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAlmanacMask:I

    return v0
.end method

.method public getAzimuths()[F
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mAzimuths:[F

    return-object v0
.end method

.method public getElevations()[F
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mElevations:[F

    return-object v0
.end method

.method public getEphemerisMask()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mEphemerisMask:I

    return v0
.end method

.method public getPrnWithFlags()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->prnWithFlags:[I

    return-object v0
.end method

.method public getPrns()[I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->pnrs:[I

    return-object v0
.end method

.method public getSnrs()[F
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mSnrs:[F

    return-object v0
.end method

.method public getSvCount()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->svCount:I

    return v0
.end method

.method public getUsedInFixMask()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->mUsedInFixMask:I

    return v0
.end method
