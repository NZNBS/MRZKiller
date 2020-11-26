.class public final Lc/t/m/g/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lc/t/m/g/ah;


# direct methods
.method public constructor <init>(Lc/t/m/g/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/t/m/g/f;->a:Lc/t/m/g/ah;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lc/t/m/g/f;->a:Lc/t/m/g/ah;

    iget v0, v0, Lc/t/m/g/ah;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/t/m/g/f;->a:Lc/t/m/g/ah;

    invoke-virtual {v0, p1}, Lc/t/m/g/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/t/m/g/f;->a:Lc/t/m/g/ah;

    iget-object v0, v0, Lc/t/m/g/ah;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lc/t/m/g/f;->a:Lc/t/m/g/ah;

    iget v0, v0, Lc/t/m/g/ah;->c:I

    return v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lc/t/m/g/f;->a:Lc/t/m/g/ah;

    iget-object v0, v0, Lc/t/m/g/ah;->d:[B

    return-object v0
.end method
