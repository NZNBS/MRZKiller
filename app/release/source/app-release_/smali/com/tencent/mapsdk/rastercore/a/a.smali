.class public abstract Lcom/tencent/mapsdk/rastercore/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mapsdk/rastercore/a/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/tencent/mapsdk/rastercore/d/e;

.field protected b:Lcom/tencent/mapsdk/rastercore/d/b;

.field protected c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

.field private d:Lcom/tencent/mapsdk/rastercore/a/a$a;

.field private e:Landroid/os/Handler;

.field private f:Landroid/widget/Scroller;

.field private g:J

.field private h:F

.field private i:Z

.field private j:D

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tencent/mapsdk/rastercore/d/e;JLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/mapsdk/rastercore/a/a$a;->c:Lcom/tencent/mapsdk/rastercore/a/a$a;

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->d:Lcom/tencent/mapsdk/rastercore/a/a$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->j:D

    new-instance v0, Lcom/tencent/mapsdk/rastercore/a/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/a/a$1;-><init>(Lcom/tencent/mapsdk/rastercore/a/a;)V

    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->k:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d/e;->c()Lcom/tencent/mapsdk/rastercore/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->b:Lcom/tencent/mapsdk/rastercore/d/b;

    iput-wide p2, p0, Lcom/tencent/mapsdk/rastercore/a/a;->g:J

    iput-object p4, p0, Lcom/tencent/mapsdk/rastercore/a/a;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/a/a;D)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->j:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->j:D

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/a/a;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->h:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/a/a;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->f:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mapsdk/rastercore/a/a;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mapsdk/rastercore/a/a;)F
    .locals 0

    iget p0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->h:F

    return p0
.end method

.method static synthetic c(Lcom/tencent/mapsdk/rastercore/a/a;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->j:D

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/mapsdk/rastercore/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/tencent/mapsdk/rastercore/a/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/mapsdk/rastercore/a/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    sget-object v0, Lcom/tencent/mapsdk/rastercore/a/a$2;->a:[I

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->d:Lcom/tencent/mapsdk/rastercore/a/a$a;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/a/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    new-instance v0, Landroid/widget/Scroller;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/Scroller;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/Scroller;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d/e;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    iput-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->f:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/a/a;->c()V

    iput-boolean v1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->i:Z

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/a/a;->f:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x2710

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->g:J

    long-to-int v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method protected abstract a(F)V
.end method

.method public final a(Lcom/tencent/mapsdk/rastercore/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/a/a;->d:Lcom/tencent/mapsdk/rastercore/a/a$a;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->i:Z

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->c:Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/map/CancelableCallback;->onCancel()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/a/a;->a:Lcom/tencent/mapsdk/rastercore/d/e;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e;->h()Lcom/tencent/mapsdk/rastercore/d/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/f;->a(Z)V

    :cond_1
    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method
