.class Lcom/lody/virtual/client/env/GPSStateline;
.super Ljava/lang/Object;
.source "GPSStateline.java"


# instance fields
.field private mAzimuth:D

.field private mElevation:D

.field private mHasAlmanac:Z

.field private mHasEphemeris:Z

.field private mPnr:I

.field private mSnr:D

.field private mUseInFix:Z


# direct methods
.method public constructor <init>(IDDDZZZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mPnr:I

    .line 72
    iput-wide p2, p0, Lcom/lody/virtual/client/env/GPSStateline;->mSnr:D

    .line 73
    iput-wide p4, p0, Lcom/lody/virtual/client/env/GPSStateline;->mElevation:D

    .line 74
    iput-wide p6, p0, Lcom/lody/virtual/client/env/GPSStateline;->mAzimuth:D

    .line 75
    iput-boolean p8, p0, Lcom/lody/virtual/client/env/GPSStateline;->mUseInFix:Z

    .line 76
    iput-boolean p9, p0, Lcom/lody/virtual/client/env/GPSStateline;->mHasAlmanac:Z

    .line 77
    iput-boolean p10, p0, Lcom/lody/virtual/client/env/GPSStateline;->mHasEphemeris:Z

    return-void
.end method


# virtual methods
.method public getAzimuth()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mAzimuth:D

    return-wide v0
.end method

.method public getElevation()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mElevation:D

    return-wide v0
.end method

.method public getPnr()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mPnr:I

    return v0
.end method

.method public getSnr()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mSnr:D

    return-wide v0
.end method

.method public isHasAlmanac()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mHasAlmanac:Z

    return v0
.end method

.method public isHasEphemeris()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mHasEphemeris:Z

    return v0
.end method

.method public isUseInFix()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/lody/virtual/client/env/GPSStateline;->mUseInFix:Z

    return v0
.end method

.method public setAzimuth(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mAzimuth:D

    return-void
.end method

.method public setElevation(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mElevation:D

    return-void
.end method

.method public setHasAlmanac(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mHasAlmanac:Z

    return-void
.end method

.method public setHasEphemeris(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mHasEphemeris:Z

    return-void
.end method

.method public setPnr(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mPnr:I

    return-void
.end method

.method public setSnr(D)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mSnr:D

    return-void
.end method

.method public setUseInFix(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/lody/virtual/client/env/GPSStateline;->mUseInFix:Z

    return-void
.end method
