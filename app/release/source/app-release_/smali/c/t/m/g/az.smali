.class public final Lc/t/m/g/az;
.super Lc/t/m/g/av;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/t/m/g/av;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "state"

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v0

    sget-object v1, Lc/t/m/g/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/t/m/g/bv;->a(Ljava/lang/String;)V

    return-void
.end method
