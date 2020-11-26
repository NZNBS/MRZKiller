.class final Lc/t/m/g/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lc/t/m/g/m;

.field b:J


# direct methods
.method public constructor <init>(Lc/t/m/g/m;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/t/m/g/u$a;->a:Lc/t/m/g/m;

    iput-wide p2, p0, Lc/t/m/g/u$a;->b:J

    return-void
.end method
