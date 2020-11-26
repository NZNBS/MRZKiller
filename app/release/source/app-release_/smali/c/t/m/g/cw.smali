.class public final Lc/t/m/g/cw;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/cw$a;
    }
.end annotation


# static fields
.field private static a:Lc/t/m/g/cw;


# instance fields
.field private b:Lc/t/m/g/cw$a;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lc/t/m/g/dh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lc/t/m/g/cw;

    invoke-direct {v0}, Lc/t/m/g/cw;-><init>()V

    sput-object v0, Lc/t/m/g/cw;->a:Lc/t/m/g/cw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lc/t/m/g/cw$a;->a:Lc/t/m/g/cw$a;

    iput-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cw$a;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lc/t/m/g/cw;
    .locals 1

    .line 42
    sget-object v0, Lc/t/m/g/cw;->a:Lc/t/m/g/cw;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lc/t/m/g/dh;)I
    .locals 13

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 67
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget-wide v3, p1, Lc/t/m/g/dh;->b:J

    iget-wide v5, v0, Lc/t/m/g/dh;->b:J

    sub-long/2addr v3, v5

    iget-object v1, v0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v0, v0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    iget-object v0, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    iget-object v0, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static/range {v5 .. v12}, Lc/t/m/g/b$a;->a(DDDD)D

    move-result-wide v0

    const-wide/32 v5, 0x2bf20

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const-wide v3, 0x407f400000000000L    # 500.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    iget-object v0, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_1
    new-instance v0, Lc/t/m/g/dh;

    invoke-direct {v0, p1}, Lc/t/m/g/dh;-><init>(Lc/t/m/g/dh;)V

    .line 69
    iget-object p1, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    iget-object p1, p0, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()J
    .locals 27

    move-object/from16 v1, p0

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v0, v6, :cond_0

    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    iget-object v8, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/t/m/g/dh;

    iget-object v9, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    sub-int/2addr v0, v7

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    const-wide/16 v9, 0x1f4

    iget-wide v11, v8, Lc/t/m/g/dh;->b:J

    iget-wide v13, v0, Lc/t/m/g/dh;->b:J

    cmp-long v15, v11, v13

    if-eqz v15, :cond_1

    iget-wide v9, v8, Lc/t/m/g/dh;->b:J

    iget-wide v11, v0, Lc/t/m/g/dh;->b:J

    sub-long/2addr v9, v11

    :cond_1
    iget-object v11, v0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    iget-object v0, v0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    iget-object v0, v8, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    iget-object v0, v8, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    invoke-static/range {v12 .. v19}, Lc/t/m/g/b$a;->a(DDDD)D

    move-result-wide v11

    long-to-double v8, v9

    div-double/2addr v11, v8

    mul-double v11, v11, v2

    :goto_0
    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-wide/16 v8, 0x0

    if-lt v0, v6, :cond_3

    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    move-wide v13, v8

    const-wide/16 v15, 0x0

    :goto_1
    if-ge v7, v0, :cond_2

    iget-object v10, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v10, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/t/m/g/dh;

    iget-object v4, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    add-int/lit8 v5, v7, -0x1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/t/m/g/dh;

    iget-object v5, v4, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v19

    iget-object v5, v4, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    iget-object v5, v10, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v23

    iget-object v5, v10, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    invoke-static/range {v19 .. v26}, Lc/t/m/g/b$a;->a(DDDD)D

    move-result-wide v19

    add-double v15, v15, v19

    iget-wide v2, v10, Lc/t/m/g/dh;->b:J

    iget-wide v4, v4, Lc/t/m/g/dh;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v13, v2

    add-int/lit8 v7, v7, 0x1

    const-wide v2, 0x408f400000000000L    # 1000.0

    goto :goto_1

    :cond_2
    cmp-long v0, v13, v8

    if-lez v0, :cond_3

    long-to-double v2, v13

    div-double/2addr v15, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v4, v15, v2

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    :goto_2
    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v0, v6, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget-object v2, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/dh;

    iget-wide v2, v2, Lc/t/m/g/dh;->b:J

    iget-wide v7, v0, Lc/t/m/g/dh;->b:J

    sub-long v8, v2, v7

    :goto_3
    iget-object v0, v1, Lc/t/m/g/cw;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v0, v6, :cond_5

    sget-object v0, Lc/t/m/g/cw$a;->a:Lc/t/m/g/cw$a;

    :goto_4
    iput-object v0, v1, Lc/t/m/g/cw;->b:Lc/t/m/g/cw$a;

    goto :goto_5

    :cond_5
    const/4 v2, 0x6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    if-le v0, v2, :cond_6

    cmpg-double v0, v11, v6

    if-gez v0, :cond_6

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_6

    sget-object v0, Lc/t/m/g/cw$a;->c:Lc/t/m/g/cw$a;

    goto :goto_4

    :cond_6
    const-wide/32 v2, 0xea60

    cmp-long v0, v8, v2

    if-lez v0, :cond_7

    cmpg-double v0, v11, v6

    if-gez v0, :cond_7

    cmpg-double v0, v4, v6

    if-gez v0, :cond_7

    sget-object v0, Lc/t/m/g/cw$a;->c:Lc/t/m/g/cw$a;

    goto :goto_4

    :cond_7
    sget-object v0, Lc/t/m/g/cw$a;->b:Lc/t/m/g/cw$a;

    goto :goto_4

    .line 159
    :goto_5
    iget-object v0, v1, Lc/t/m/g/cw;->b:Lc/t/m/g/cw$a;

    sget-object v2, Lc/t/m/g/cw$a;->c:Lc/t/m/g/cw$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_8

    const-wide/32 v2, 0x15f90

    .line 160
    monitor-exit p0

    return-wide v2

    :cond_8
    const-wide/16 v2, 0x7530

    .line 162
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
