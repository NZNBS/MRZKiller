.class public final Lcom/tencent/mapsdk/rastercore/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mapsdk/rastercore/d$b;


# static fields
.field private static volatile A:I = 0x0

.field private static volatile B:I = 0x3e8

.field private static volatile C:I = 0x3e8

.field private static volatile D:I = 0x0

.field private static volatile E:I = 0x0

.field private static volatile F:Ljava/lang/String; = null

.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:I = 0x0

.field private static volatile i:Landroid/content/Context; = null

.field private static w:Z = true

.field private static y:Z = false

.field private static volatile z:I


# instance fields
.field private j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

.field private k:Lcom/tencent/mapsdk/rastercore/d/a;

.field private l:Lcom/tencent/mapsdk/rastercore/d/b;

.field private m:Lcom/tencent/mapsdk/rastercore/d/f;

.field private n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

.field private o:Lcom/tencent/mapsdk/rastercore/tile/f;

.field private p:Lcom/tencent/mapsdk/rastercore/d/c;

.field private q:Lcom/tencent/mapsdk/rastercore/d/a$1;

.field private volatile r:Lcom/tencent/mapsdk/rastercore/g/b;

.field private s:Lcom/tencent/mapsdk/rastercore/g/a;

.field private t:I

.field private u:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;

.field private v:Z

.field private x:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/b;->a:I

    sput v0, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    sget v0, Lcom/tencent/mapsdk/rastercore/b;->c:I

    sput v0, Lcom/tencent/mapsdk/rastercore/d/e;->A:I

    sget v0, Lcom/tencent/mapsdk/rastercore/b;->d:I

    sput v0, Lcom/tencent/mapsdk/rastercore/d/e;->D:I

    sget v0, Lcom/tencent/mapsdk/rastercore/b;->b:I

    sput v0, Lcom/tencent/mapsdk/rastercore/d/e;->E:I

    sget-object v0, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->QMapLanguage_en:Lcom/tencent/mapsdk/raster/model/QMapLanguage;

    invoke-static {v0}, Lcom/tencent/mapsdk/raster/model/QMapLanguage;->getLanguageCode(Lcom/tencent/mapsdk/raster/model/QMapLanguage;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mapsdk/rastercore/d/e;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/map/MapView;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->t:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->u:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/mapsdk/rastercore/d/e;->v:Z

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    const-string v3, "mapsdk_pref"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "worldEnable"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/tencent/mapsdk/rastercore/d/e;->y:Z

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a()Lcom/tencent/mapsdk/rastercore/tile/a/a;

    move-result-object v1

    sget-object v3, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->a()Lcom/tencent/mapsdk/rastercore/d$a;

    move-result-object v1

    sget-object v4, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;Z)I

    move-result v1

    sput v1, Lcom/tencent/mapsdk/rastercore/d/e;->C:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->a()Lcom/tencent/mapsdk/rastercore/d$a;

    move-result-object v1

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->C:I

    invoke-virtual {v1, v4, v2}, Lcom/tencent/mapsdk/rastercore/d$a;->a(II)I

    move-result v1

    sput v1, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CurrentVersion in MapContext:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->a()Lcom/tencent/mapsdk/rastercore/d$a;

    move-result-object v1

    sget-object v4, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(Ljava/lang/String;Z)I

    move-result v1

    sput v1, Lcom/tencent/mapsdk/rastercore/d/e;->B:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->a()Lcom/tencent/mapsdk/rastercore/d$a;

    move-result-object v1

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->B:I

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mapsdk/rastercore/d$a;->a(II)I

    move-result v1

    sput v1, Lcom/tencent/mapsdk/rastercore/d/e;->A:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->a()Lcom/tencent/mapsdk/rastercore/d$a;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mapsdk/rastercore/d$a;->a(II)I

    move-result v1

    sput v1, Lcom/tencent/mapsdk/rastercore/d/e;->D:I

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/d$a;->a()Lcom/tencent/mapsdk/rastercore/d$a;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mapsdk/rastercore/d$a;->a(II)I

    move-result v1

    sput v1, Lcom/tencent/mapsdk/rastercore/d/e;->E:I

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/e$1;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/d/e$1;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/e$1;->start()V

    :cond_1
    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/d/a$1;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/g/b;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/d/c;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->p:Lcom/tencent/mapsdk/rastercore/d/c;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/g/a;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/d/a;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->k:Lcom/tencent/mapsdk/rastercore/d/a;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/d/b;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/d/f;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/d/f;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->m:Lcom/tencent/mapsdk/rastercore/d/f;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/tile/a$1;

    sget v4, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    sget v5, Lcom/tencent/mapsdk/rastercore/d/e;->A:I

    sget v6, Lcom/tencent/mapsdk/rastercore/d/e;->D:I

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/tencent/mapsdk/rastercore/tile/a$1;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;III)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    new-instance v1, Lcom/tencent/mapsdk/rastercore/tile/f;

    invoke-direct {v1, p0}, Lcom/tencent/mapsdk/rastercore/tile/f;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    iput-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->o:Lcom/tencent/mapsdk/rastercore/tile/f;

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->p:Lcom/tencent/mapsdk/rastercore/d/c;

    invoke-virtual {v1}, Lcom/tencent/mapsdk/rastercore/d/c;->a()V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {p1, v3, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {p1, v3, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {p1, v3, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a(Z)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {p1, v2}, Lcom/tencent/mapsdk/rastercore/d/a$1;->c(I)V

    invoke-static {p0}, Lcom/tencent/mapsdk/rastercore/a;->a(Lcom/tencent/mapsdk/rastercore/d/e;)V

    new-instance p1, Lcom/tencent/mapsdk/rastercore/d;

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/tencent/mapsdk/rastercore/d;-><init>(Landroid/content/Context;Lcom/tencent/mapsdk/rastercore/d$b;)V

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/d;->a()V

    return-void
.end method

.method static synthetic A()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->D:I

    return v0
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/mapsdk/rastercore/d/e;->F:Ljava/lang/String;

    return-void
.end method

.method public static c(Z)V
    .locals 0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/tencent/mapsdk/rastercore/d/e;->w:Z

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/mapsdk/rastercore/d/e;->y:Z

    return-void
.end method

.method public static e(Z)V
    .locals 3

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/mapsdk/rastercore/d/e;->i:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mapsdk_pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "worldEnable"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static n()V
    .locals 0

    return-void
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mapsdk/rastercore/d/e;->w:Z

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mapsdk/rastercore/d/e;->y:Z

    return v0
.end method

.method public static s()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->A:I

    return v0
.end method

.method public static t()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->B:I

    return v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mapsdk/rastercore/d/e;->F:Ljava/lang/String;

    return-object v0
.end method

.method public static v()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    return v0
.end method

.method public static w()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->D:I

    return v0
.end method

.method public static x()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->E:I

    return v0
.end method

.method public static y()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->C:I

    return v0
.end method

.method static synthetic z()I
    .locals 1

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->A:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/rastercore/g/b;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {v1, v0}, Lcom/tencent/mapsdk/rastercore/g/b;->a(Z)V

    :goto_0
    iput p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->t:I

    invoke-virtual {p0, v0, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public final a(IIIIIILandroid/graphics/Bitmap;)V
    .locals 1

    sput p1, Lcom/tencent/mapsdk/rastercore/d/e;->C:I

    sput p2, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CurrentVersion in Update:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/tencent/mapsdk/rastercore/d/e;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sput p4, Lcom/tencent/mapsdk/rastercore/d/e;->A:I

    sput p3, Lcom/tencent/mapsdk/rastercore/d/e;->B:I

    sput p5, Lcom/tencent/mapsdk/rastercore/d/e;->D:I

    sput p6, Lcom/tencent/mapsdk/rastercore/d/e;->E:I

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    invoke-virtual {p1, p2}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    invoke-virtual {p1, p4}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->b(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    invoke-virtual {p1, p5}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->c(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {p1, p7}, Lcom/tencent/mapsdk/rastercore/g/b;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    const-string v1, "ANIMATION_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->e(Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    const-string v1, "SCROLL_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b(Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    const-string v1, "ZOOM_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->c(Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    const-string v1, "LOGO_POSITION"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->b(I)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    const-string v1, "SCALEVIEW_POSITION"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->c(I)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    const-string v1, "SCALE_CONTROLL_ENABLED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapsdk/rastercore/d/a$1;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->c()D

    move-result-wide v1

    const-string v4, "ZOOM"

    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mapsdk/rastercore/d/b;->b(DZLcom/tencent/tencentmap/mapsdk/map/CancelableCallback;)V

    const-string v0, "CENTERX"

    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "CENTERY"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    new-instance v2, Lcom/tencent/mapsdk/rastercore/b/c;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/mapsdk/rastercore/b/c;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Lcom/tencent/mapsdk/rastercore/b/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mapsdk/rastercore/d/e;->a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->u:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;

    iput-object p2, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    iget-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->v:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mapsdk/rastercore/d/e;->o()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/mapsdk/rastercore/d/b;->a(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/tencent/mapsdk/rastercore/d/e;->a(ZZ)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/g/a;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/g/a;->d()V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mapsdk/rastercore/g/a;->b()V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/g/a;->c()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/tencent/mapsdk/rastercore/g/a;->setVisibility(I)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->v:Z

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a(ZZ)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->layout()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->postInvalidate()V

    return-void
.end method

.method public final b()Lcom/tencent/mapsdk/rastercore/d/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->p:Lcom/tencent/mapsdk/rastercore/d/c;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/g/b;->a(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/g/b;->invalidate()V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/g/a;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/g/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->k()Z

    move-result v0

    const-string v1, "ANIMATION_ENABLED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->h()Z

    move-result v0

    const-string v1, "SCROLL_ENABLED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->i()Z

    move-result v0

    const-string v1, "ZOOM_ENABLED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->j()I

    move-result v0

    const-string v1, "LOGO_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->f()I

    move-result v0

    const-string v1, "SCALEVIEW_POSITION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a$1;->g()Z

    move-result v0

    const-string v1, "SCALE_CONTROLL_ENABLED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->c()D

    move-result-wide v0

    const-string v2, "ZOOM"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->b()D

    move-result-wide v0

    const-string v2, "CENTERX"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/b;->b()Lcom/tencent/mapsdk/rastercore/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/b/c;->a()D

    move-result-wide v0

    const-string v2, "CENTERY"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method protected final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->v:Z

    return-void
.end method

.method public final c()Lcom/tencent/mapsdk/rastercore/d/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->l:Lcom/tencent/mapsdk/rastercore/d/b;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/g/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {v0, p1}, Lcom/tencent/mapsdk/rastercore/g/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {p1}, Lcom/tencent/mapsdk/rastercore/g/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/map/MapView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    return-object v0
.end method

.method public final e()Lcom/tencent/mapsdk/rastercore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->k:Lcom/tencent/mapsdk/rastercore/d/a;

    return-object v0
.end method

.method public final f()Lcom/tencent/mapsdk/rastercore/d/a$1;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->q:Lcom/tencent/mapsdk/rastercore/d/a$1;

    return-object v0
.end method

.method public final g()Lcom/tencent/mapsdk/rastercore/tile/a$1;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    return-object v0
.end method

.method public final h()Lcom/tencent/mapsdk/rastercore/d/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->m:Lcom/tencent/mapsdk/rastercore/d/f;

    return-object v0
.end method

.method public final i()Lcom/tencent/mapsdk/rastercore/tile/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->o:Lcom/tencent/mapsdk/rastercore/tile/f;

    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/g/a;->e()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/g/a;->d()V

    return-void
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->t:I

    return v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->s:Lcom/tencent/mapsdk/rastercore/g/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/g/a;->a()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/g/b;->a()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->k:Lcom/tencent/mapsdk/rastercore/d/a;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/a;->b()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->stopAnimation()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->n:Lcom/tencent/mapsdk/rastercore/tile/a$1;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/a$1;->a()V

    invoke-static {}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->a()Lcom/tencent/mapsdk/rastercore/tile/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/tile/a/a;->d()V

    new-instance v0, Lcom/tencent/mapsdk/rastercore/d/e$2;

    invoke-direct {v0, p0}, Lcom/tencent/mapsdk/rastercore/d/e$2;-><init>(Lcom/tencent/mapsdk/rastercore/d/e;)V

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/d/e$2;->start()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected final o()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->u:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->buildDrawingCache()V

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mapsdk/rastercore/d/e;->x:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->j:Lcom/tencent/tencentmap/mapsdk/map/MapView;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/map/MapView;->destroyDrawingCache()V

    iget-object v1, p0, Lcom/tencent/mapsdk/rastercore/d/e;->u:Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/map/TencentMap$OnScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapsdk/rastercore/d/e;->r:Lcom/tencent/mapsdk/rastercore/g/b;

    invoke-virtual {v0}, Lcom/tencent/mapsdk/rastercore/g/b;->invalidate()V

    :cond_0
    return-void
.end method
