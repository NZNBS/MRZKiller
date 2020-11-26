.class public final Lc/t/m/g/bg;
.super Ljava/lang/Object;


# instance fields
.field public a:B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lc/t/m/g/bg;->a:B

    invoke-static {}, Lc/t/m/g/bz;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bg;->b:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/l;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bg;->c:Ljava/lang/String;

    return-void
.end method
