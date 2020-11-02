.class public Lc/t/m/g/cr;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static g:Lc/t/m/g/cr;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cr;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lc/t/m/g/cr;->b:F

    .line 37
    iput v0, p0, Lc/t/m/g/cr;->c:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 38
    iput v0, p0, Lc/t/m/g/cr;->d:F

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lc/t/m/g/cr;->e:Z

    .line 41
    iput-boolean v0, p0, Lc/t/m/g/cr;->f:Z

    return-void
.end method

.method public static a()Lc/t/m/g/cr;
    .locals 2

    .line 60
    sget-object v0, Lc/t/m/g/cr;->g:Lc/t/m/g/cr;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lc/t/m/g/cr;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lc/t/m/g/cr;->g:Lc/t/m/g/cr;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lc/t/m/g/cr;

    invoke-direct {v1}, Lc/t/m/g/cr;-><init>()V

    sput-object v1, Lc/t/m/g/cr;->g:Lc/t/m/g/cr;

    .line 65
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lc/t/m/g/cr;->g:Lc/t/m/g/cr;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/GpsStatus;)Z
    .locals 7

    .line 95
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 100
    iget-object v1, p0, Lc/t/m/g/cr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gt v2, v0, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    add-int/lit8 v2, v2, 0x1

    .line 106
    iget-object v4, p0, Lc/t/m/g/cr;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u9897\u536b\u661f,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lc/t/m/g/cr;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_c

    .line 115
    iget-object p1, p0, Lc/t/m/g/cr;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v2, p1, [F

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 117
    iget-object v4, p0, Lc/t/m/g/cr;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([F)V

    new-array v3, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v0, :cond_2

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v5

    .line 124
    aget v6, v2, v6

    aput v6, v3, v5

    .line 125
    aget v6, v3, v5

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/high16 p1, 0x40a00000    # 5.0f

    div-float/2addr v4, p1

    .line 138
    aget p1, v3, v1

    const/high16 v0, 0x420c0000    # 35.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 140
    iput-boolean v6, p0, Lc/t/m/g/cr;->e:Z

    goto :goto_3

    :cond_3
    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, v4, p1

    if-lez p1, :cond_4

    .line 143
    iput-boolean v6, p0, Lc/t/m/g/cr;->e:Z

    :cond_4
    :goto_3
    const/high16 p1, 0x41b00000    # 22.0f

    cmpg-float p1, v4, p1

    if-gez p1, :cond_5

    .line 148
    iput-boolean v1, p0, Lc/t/m/g/cr;->e:Z

    .line 161
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "avg"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "avg\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lc/t/m/g/cr;->b:F

    sub-float v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "avgMax"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lc/t/m/g/cr;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "avgMin"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lc/t/m/g/cr;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    iget-boolean v0, p0, Lc/t/m/g/cr;->e:Z

    .line 168
    iget v2, p0, Lc/t/m/g/cr;->c:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 169
    iput v4, p0, Lc/t/m/g/cr;->c:F

    .line 171
    :cond_6
    iget v2, p0, Lc/t/m/g/cr;->d:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 172
    iput v4, p0, Lc/t/m/g/cr;->d:F

    .line 174
    :cond_7
    iput v4, p0, Lc/t/m/g/cr;->b:F

    sub-float v2, v4, v4

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    sub-float v2, v4, v4

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 183
    iput-boolean v1, p0, Lc/t/m/g/cr;->f:Z

    .line 185
    :cond_8
    iget v2, p0, Lc/t/m/g/cr;->c:F

    iget v5, p0, Lc/t/m/g/cr;->d:F

    add-float/2addr v2, v5

    div-float/2addr v2, v3

    cmpl-float v2, v4, v2

    if-lez v2, :cond_9

    .line 186
    iput-boolean v6, p0, Lc/t/m/g/cr;->f:Z

    goto :goto_4

    :cond_9
    if-gez p1, :cond_a

    .line 190
    iput-boolean v1, p0, Lc/t/m/g/cr;->f:Z

    .line 197
    :cond_a
    :goto_4
    iget-boolean p1, p0, Lc/t/m/g/cr;->f:Z

    if-eq v0, p1, :cond_b

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\n\u51b2\u7a81"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/t/m/g/cr;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lc/t/m/g/cr;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\n\u6700\u7ec8\u7ed3\u679c"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/t/m/g/cr;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    :cond_c
    iget-boolean p1, p0, Lc/t/m/g/cr;->f:Z

    return p1
.end method
