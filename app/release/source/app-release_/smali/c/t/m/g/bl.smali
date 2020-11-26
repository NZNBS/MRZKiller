.class final Lc/t/m/g/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:[B

.field private synthetic c:Lc/t/m/g/bk;


# direct methods
.method constructor <init>(Lc/t/m/g/bk;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/bl;->c:Lc/t/m/g/bk;

    iput-object p2, p0, Lc/t/m/g/bl;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/t/m/g/bl;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/t/m/g/bl;->a:Ljava/lang/String;

    iget-object v1, p0, Lc/t/m/g/bl;->b:[B

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lc/t/m/g/ce;->a([B)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lc/t/m/g/o;->e()V

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/bl;->c:Lc/t/m/g/bk;

    iget-object v1, v1, Lc/t/m/g/bk;->a:Lc/t/m/g/bj;

    invoke-virtual {v1, v0}, Lc/t/m/g/bj;->a(Ljava/lang/String;)[B

    move-result-object v1

    :cond_1
    invoke-static {}, Lc/t/m/g/bm;->c()Lc/t/m/g/bm;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/bm;->d()Lc/t/m/g/ba;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lc/t/m/g/ba;->a(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method
