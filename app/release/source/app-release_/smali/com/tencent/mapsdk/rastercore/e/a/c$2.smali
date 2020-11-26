.class final Lcom/tencent/mapsdk/rastercore/e/a/c$2;
.super Lcom/tencent/mapsdk/rastercore/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mapsdk/rastercore/e/a/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/mapsdk/rastercore/e/a/c;


# direct methods
.method constructor <init>(Lcom/tencent/mapsdk/rastercore/e/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$2;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-direct {p0}, Lcom/tencent/mapsdk/rastercore/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$2;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->g(Lcom/tencent/mapsdk/rastercore/e/a/c;)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/e/a/c$2;->a:Lcom/tencent/mapsdk/rastercore/e/a/c;

    invoke-static {p1}, Lcom/tencent/mapsdk/rastercore/e/a/c;->h(Lcom/tencent/mapsdk/rastercore/e/a/c;)V

    return-void
.end method
