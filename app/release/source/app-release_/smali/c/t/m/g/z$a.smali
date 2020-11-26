.class final Lc/t/m/g/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field private h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/z$a;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/t/m/g/z$a;->c:Z

    iput-boolean v1, p0, Lc/t/m/g/z$a;->d:Z

    iput-boolean v1, p0, Lc/t/m/g/z$a;->e:Z

    iput-boolean v1, p0, Lc/t/m/g/z$a;->f:Z

    iput-boolean v1, p0, Lc/t/m/g/z$a;->g:Z

    iput-object p1, p0, Lc/t/m/g/z$a;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const-string v2, "all"

    filled-new-array {v2, v2, v2, v2, v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/t/m/g/z$a;->h:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lc/t/m/g/z$a;->h:[Ljava/lang/String;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lc/t/m/g/z$a;->h:[Ljava/lang/String;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lc/t/m/g/z$a;->a(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lc/t/m/g/z$a;->c:Z

    invoke-direct {p0, v0, p3}, Lc/t/m/g/z$a;->a(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lc/t/m/g/z$a;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lc/t/m/g/z$a;->a(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lc/t/m/g/z$a;->e:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1, p5}, Lc/t/m/g/z$a;->a(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lc/t/m/g/z$a;->f:Z

    const/4 p1, 0x4

    invoke-direct {p0, p1, p6}, Lc/t/m/g/z$a;->a(ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lc/t/m/g/z$a;->g:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lc/t/m/g/z$a;->h:[Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lc/t/m/g/z$a;->h:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object v0, p0, Lc/t/m/g/z$a;->h:[Ljava/lang/String;

    aget-object p1, v0, p1

    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean v3, p0, Lc/t/m/g/z$a;->b:Z

    :cond_0
    move v3, p2

    :cond_1
    return v3
.end method
