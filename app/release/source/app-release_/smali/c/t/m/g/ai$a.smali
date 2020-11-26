.class final Lc/t/m/g/ai$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/t/m/g/ai$a;->g:J

    iput-wide v0, p0, Lc/t/m/g/ai$a;->h:J

    iput-wide v0, p0, Lc/t/m/g/ai$a;->i:J

    iput-wide v0, p0, Lc/t/m/g/ai$a;->j:J

    iput-wide v0, p0, Lc/t/m/g/ai$a;->k:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lc/t/m/g/ai$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    iget-wide v0, p0, Lc/t/m/g/ai$a;->b:J

    iget-wide v2, p0, Lc/t/m/g/ai$a;->a:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lc/t/m/g/ai$a;->g:J

    iget-wide v4, p0, Lc/t/m/g/ai$a;->c:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Lc/t/m/g/ai$a;->h:J

    iget-wide v6, p0, Lc/t/m/g/ai$a;->d:J

    sub-long v4, v6, v4

    iput-wide v4, p0, Lc/t/m/g/ai$a;->i:J

    iget-wide v8, p0, Lc/t/m/g/ai$a;->e:J

    sub-long v6, v8, v6

    iput-wide v6, p0, Lc/t/m/g/ai$a;->j:J

    iget-wide v10, p0, Lc/t/m/g/ai$a;->f:J

    sub-long/2addr v10, v8

    iput-wide v10, p0, Lc/t/m/g/ai$a;->k:J

    const-wide/16 v8, -0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v2, v12

    if-ltz v14, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v8

    :goto_0
    iput-wide v2, p0, Lc/t/m/g/ai$a;->g:J

    cmp-long v2, v0, v12

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v8

    :goto_1
    iput-wide v0, p0, Lc/t/m/g/ai$a;->h:J

    cmp-long v0, v4, v12

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v8

    :goto_2
    iput-wide v4, p0, Lc/t/m/g/ai$a;->i:J

    cmp-long v0, v6, v12

    if-ltz v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v6, v8

    :goto_3
    iput-wide v6, p0, Lc/t/m/g/ai$a;->j:J

    cmp-long v0, v10, v12

    if-ltz v0, :cond_4

    goto :goto_4

    :cond_4
    move-wide v10, v8

    :goto_4
    iput-wide v10, p0, Lc/t/m/g/ai$a;->k:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stat{startToTryConnect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lc/t/m/g/ai$a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/t/m/g/ai$a;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectToPost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/t/m/g/ai$a;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", postToRsp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/t/m/g/ai$a;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rspToRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/t/m/g/ai$a;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
