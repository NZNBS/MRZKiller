.class final Lc/t/m/g/b$c;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lc/t/m/g/ci;

.field private b:Lc/t/m/g/dg;


# direct methods
.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lc/t/m/g/b$c;->a:Lc/t/m/g/ci;

    return-void
.end method


# virtual methods
.method public final a(Lc/t/m/g/dg;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lc/t/m/g/b$c;->b:Lc/t/m/g/dg;

    return-void
.end method

.method public final run()V
    .locals 3

    .line 327
    iget-object v0, p0, Lc/t/m/g/b$c;->a:Lc/t/m/g/ci;

    .line 328
    iget-object v1, p0, Lc/t/m/g/b$c;->b:Lc/t/m/g/dg;

    if-eqz v1, :cond_0

    .line 330
    invoke-static {v0}, Lc/t/m/g/dx;->b(Lc/t/m/g/ci;)Ljava/util/List;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Lc/t/m/g/dg;->a(Ljava/util/List;)V

    .line 332
    invoke-virtual {v0, v1}, Lc/t/m/g/ci;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
