.class public final Lc/t/m/g/cj;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:Lc/t/m/g/ci;

.field public b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field k:I

.field l:I

.field public m:J

.field public volatile n:J

.field public volatile o:J

.field public volatile p:J

.field public volatile q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc/t/m/g/ci;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lc/t/m/g/cj;->n:J

    .line 56
    iput-wide v0, p0, Lc/t/m/g/cj;->o:J

    .line 57
    iput-wide v0, p0, Lc/t/m/g/cj;->p:J

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lc/t/m/g/cj;->q:Ljava/lang/String;

    const-string v0, "6.1.2"

    .line 63
    iput-object v0, p0, Lc/t/m/g/cj;->t:Ljava/lang/String;

    const-string v1, "170627"

    .line 79
    iput-object v1, p0, Lc/t/m/g/cj;->u:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lc/t/m/g/cj;->s:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lc/t/m/g/cj;->a:Lc/t/m/g/ci;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lc/t/m/g/cj;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lc/t/m/g/cj;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0123456789ABCDEF"

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lc/t/m/g/cj;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/cj;->f:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cj;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "0123456789ABCDEF"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lc/t/m/g/cj;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "None"

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lc/t/m/g/cj;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "None"

    :cond_0
    return-object v0
.end method
