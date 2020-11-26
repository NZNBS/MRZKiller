.class public final Lc/t/m/g/ct;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field a:F

.field b:F

.field c:J

.field d:D

.field e:D

.field f:D

.field g:D

.field h:D

.field i:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 18
    iput-wide v0, p0, Lc/t/m/g/ct;->d:D

    .line 19
    iput-wide v0, p0, Lc/t/m/g/ct;->e:D

    .line 20
    iput-wide v0, p0, Lc/t/m/g/ct;->f:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 21
    iput v0, p0, Lc/t/m/g/ct;->a:F

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lc/t/m/g/ct;->c:J

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lc/t/m/g/ct;->h:D

    .line 24
    iput-wide v0, p0, Lc/t/m/g/ct;->i:D

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 27
    iput-wide v0, p0, Lc/t/m/g/ct;->f:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 28
    iput v0, p0, Lc/t/m/g/ct;->a:F

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lc/t/m/g/ct;->c:J

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lc/t/m/g/ct;->h:D

    .line 31
    iput-wide v0, p0, Lc/t/m/g/ct;->i:D

    return-void
.end method
